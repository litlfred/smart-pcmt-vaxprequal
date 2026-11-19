#!/usr/bin/env python3
"""Import WHO Vaccine PreQual data from the backend API.

Downloads paginated results from the PreQual API and generates:
  - FSH logical model instances (FinishedVaccineProducts)
  - FHIR Product and ProductAuthorization instances
  - CodeSystem and ValueSet FSH files

Environment variables:
  PREQUAL_API_ENDPOINT  - API endpoint URL
  PREQUAL_API_USERNAME  - API username
  PREQUAL_API_PASSWORD  - API password

The endpoint is one of the ePQS SOA REST services, e.g.
  https://soauat.who.int/soa-infra/resources/EPQS/QueryFinishedVaccineProducts!1.0/
    RestService_FVP?Query=FinishedVaccineProduct
Pagination parameters are supplied by this script, so any OffSet/Limit
already in the URL is replaced rather than duplicated.  TimeStamp is always
sent, because the service binds it into its SOQL and faults without it.
Each SOA environment has its own password for the EPQSSoa account.

Usage:
  python scripts/import_salesforce.py [--output-dir DIR]
"""

import argparse
import hashlib
import json
import logging
import os
import re
import sys
import time
import urllib.request
import urllib.error
import urllib.parse
import base64
from xml.etree import ElementTree

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logger = logging.getLogger(__name__)


def sanitize_code(text):
    """Remove non-alphanumeric characters from text for use as FSH code."""
    return re.sub(r"[^A-Za-z0-9]", "", text)


def sanitize_alpha(text):
    """Remove non-alpha characters from text."""
    return re.sub(r"[^A-Za-z]", "", text)


def md5hash(text):
    """Compute MD5 hash of text."""
    return hashlib.md5(text.encode("utf-8")).hexdigest()


def fsh_escape(text):
    """Escape text for use in FSH string literals."""
    if text is None:
        return ""
    return text.replace("\\", "\\\\").replace('"', '\\"')


def read_existing_codes(filepath):
    """Read existing FSH code entries from a CodeSystem file.

    Parses lines matching ``* #<code> "<display>"`` and returns them
    as an ordered dict so that previously generated codes are preserved
    when the file is regenerated with new data.

    Args:
        filepath: Path to the .fsh file.

    Returns:
        OrderedDict mapping code string to full line (including the
        ``* #`` prefix).  Comment lines that immediately precede a
        block of codes (``// Category``) are stored with a key of
        ``__comment__<n>`` so they can be reproduced in order.
    """
    from collections import OrderedDict
    codes = OrderedDict()
    if not os.path.exists(filepath):
        return codes
    try:
        with open(filepath, "r", encoding="utf-8") as f:
            for line in f:
                stripped = line.rstrip("\n")
                m = re.match(r'^\* #(\S+)\s', stripped)
                if m:
                    codes[m.group(1)] = stripped
    except OSError:
        pass
    return codes


# Pagination parameters understood by the ePQS SOA REST services.  The
# services are case sensitive and only honour these exact spellings, so a
# lowercase "offset=" is accepted by the HTTP layer and then silently
# ignored by the service, which keeps returning the first page forever.
PARAM_QUERY = "Query"
PARAM_TIMESTAMP = "TimeStamp"
PARAM_OFFSET = "OffSet"
PARAM_LIMIT = "Limit"

# Query parameters this module manages itself.  Any copy already present in
# the configured endpoint is dropped (whatever its casing) before the
# canonical spelling is appended.
MANAGED_PARAMS = {p.lower() for p in (PARAM_QUERY, PARAM_TIMESTAMP, PARAM_OFFSET, PARAM_LIMIT)}

# The SOA services wrap Salesforce SOQL queries that pull four child
# collections per product, so the number of parent rows a single response
# can carry is small and is capped server side.  WHO's own example URLs use
# Limit=20; asking for more does not fail, it just returns fewer records
# than requested.
DEFAULT_PAGE_SIZE = 20

# Earliest publishing date to request when no incremental timestamp is given.
# TimeStamp filters on the Salesforce last-publishing-update field, so this
# has to pre-date the first prequalification record to get a full load.
DEFAULT_TIMESTAMP = "2000-01-01T00:00:00.000Z"

# Safety valve so a server that never advances cannot spin forever.
MAX_REQUESTS = 500

# Transient HTTP statuses worth retrying; the SOA gateway returns 502/504
# when a Salesforce query runs long.
RETRY_STATUSES = {429, 500, 502, 503, 504}


class PreQualAPIError(Exception):
    """Raised when the PreQual API cannot be paged through reliably."""


def build_api_url(endpoint, offset=None, limit=None, timestamp=None, query=None):
    """Build a request URL with correctly spelled pagination parameters.

    Any pagination parameter already present in ``endpoint`` is removed and
    re-added with the canonical casing the SOA services require, so a
    configured endpoint copied from the WHO integration spreadsheet (which
    ends in ``&OffSet=0&Limit=20``) is re-paginated rather than having a
    second, ignored copy appended to it.

    Args:
        endpoint: Base API URL, optionally carrying query parameters.
        offset: Record offset to request, or None to omit.
        limit: Page size to request, or None to omit.
        timestamp: TimeStamp filter value; falls back to the value already
            present in the endpoint.
        query: Query name; falls back to the value already in the endpoint.

    Returns:
        The full request URL as a string.
    """
    parts = urllib.parse.urlsplit(endpoint)
    existing = urllib.parse.parse_qsl(parts.query, keep_blank_values=True)

    passthrough = [(k, v) for k, v in existing if k.lower() not in MANAGED_PARAMS]
    configured = {k.lower(): v for k, v in existing if k.lower() in MANAGED_PARAMS}

    if query is None:
        query = configured.get(PARAM_QUERY.lower())
    if timestamp is None:
        timestamp = configured.get(PARAM_TIMESTAMP.lower())
    # TimeStamp is bound straight into the service's SOQL, so omitting it
    # fails the whole call with "Bind Parameter's value is empty" rather
    # than returning unfiltered results.  Never send the request without it.
    if not timestamp:
        timestamp = DEFAULT_TIMESTAMP

    params = list(passthrough)
    if query:
        params.append((PARAM_QUERY, query))
    if timestamp:
        params.append((PARAM_TIMESTAMP, timestamp))
    if offset is not None:
        params.append((PARAM_OFFSET, str(offset)))
    if limit is not None:
        params.append((PARAM_LIMIT, str(limit)))

    # Keep ":" and "." literal so TimeStamp stays readable in logs and in
    # the SOA access logs the WHO integration team reads.
    encoded = urllib.parse.urlencode(params, safe=":.", quote_via=urllib.parse.quote)
    return urllib.parse.urlunsplit((parts.scheme, parts.netloc, parts.path, encoded, parts.fragment))


def product_key(product):
    """Return the stable identity of a product record.

    Args:
        product: A single FinishedVaccineProduct record.

    Returns:
        The Salesforce record Id, falling back to the human-readable Name
        when the Id is absent.
    """
    identification = (product.get("ProductDetails") or {}).get("Identification") or {}
    return identification.get("Id") or identification.get("Name")


def product_timestamp(product):
    """Return a product's last publishing date, or None when absent.

    Args:
        product: A single FinishedVaccineProduct record.

    Returns:
        The LastPublishingDate string, or None.
    """
    return (product.get("ProductDetails") or {}).get("LastPublishingDate")


def parse_response(body):
    """Parse a response body that may be JSON or XML.

    The services return JSON for successful queries but report BPEL/JCA
    faults as XML regardless of the Accept header, so a JSON-only client
    reports a decode error instead of the fault the service actually sent.

    Args:
        body: Raw response body as text.

    Returns:
        Parsed response as a dict.  An XML fault is reduced to the same
        ``{"Status": {...}}`` shape the JSON responses use.

    Raises:
        PreQualAPIError: If the body is neither JSON nor recognisable XML.
    """
    try:
        return json.loads(body)
    except ValueError:
        pass

    try:
        root = ElementTree.fromstring(body)
    except ElementTree.ParseError as exc:
        raise PreQualAPIError(
            f"Response was neither JSON nor XML ({exc}): {body[:300]}"
        ) from exc

    # Namespaces vary per service, so match on local tag names.
    found = {}
    for element in root.iter():
        local = element.tag.rsplit("}", 1)[-1]
        if local in ("StatusCode", "StatusMessage") and element.text:
            found[local] = element.text.strip()

    if not found:
        raise PreQualAPIError(f"Unrecognised XML response: {body[:300]}")

    return {"Status": {k: v for k, v in found.items()}}


def check_response_status(data):
    """Raise if the API reported a non-success status.

    The SOA services answer with HTTP 200 and signal failures in the body,
    so an unchecked response can look like an empty result set.

    Args:
        data: Parsed JSON response.

    Raises:
        PreQualAPIError: If StatusCode is present and is not SUCCESS.
    """
    status = data.get("Status") or {}
    code = status.get("StatusCode")
    if code is not None and str(code).upper() != "SUCCESS":
        raise PreQualAPIError(
            "API returned status %s: %s" % (code, status.get("StatusMessage") or status)
        )


def fetch_api_page(
    endpoint,
    username,
    password,
    offset=0,
    limit=DEFAULT_PAGE_SIZE,
    timestamp=None,
    timeout=180,
    retries=4,
):
    """Fetch a single page of results, retrying transient failures.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        offset: Record offset (0-based).
        limit: Maximum number of results to request.
        timestamp: TimeStamp filter value.
        timeout: Per-request timeout in seconds.
        retries: Number of retries for transient errors.

    Returns:
        Parsed JSON response.

    Raises:
        PreQualAPIError: If the request keeps failing or the body is not JSON.
    """
    url = build_api_url(endpoint, offset=offset, limit=limit, timestamp=timestamp)
    logger.info("Fetching %s=%d %s=%d", PARAM_OFFSET, offset, PARAM_LIMIT, limit)

    credentials = base64.b64encode(f"{username}:{password}".encode("utf-8")).decode("ascii")

    last_error = None
    for attempt in range(retries + 1):
        if attempt:
            delay = 2 ** attempt
            logger.warning("Retrying in %ds (attempt %d/%d): %s", delay, attempt, retries, last_error)
            time.sleep(delay)

        req = urllib.request.Request(url)
        req.add_header("Authorization", f"Basic {credentials}")
        req.add_header("Accept", "application/json")
        try:
            with urllib.request.urlopen(req, timeout=timeout) as resp:
                body = resp.read().decode("utf-8")
        except urllib.error.HTTPError as exc:
            if exc.code not in RETRY_STATUSES:
                raise PreQualAPIError(f"HTTP {exc.code} from {url}: {exc.reason}") from exc
            last_error = f"HTTP {exc.code} {exc.reason}"
            continue
        except (urllib.error.URLError, TimeoutError) as exc:
            last_error = f"{type(exc).__name__}: {exc}"
            continue

        try:
            # Faults parse successfully and are raised by the caller's status
            # check, so they are not retried; only an unreadable body is.
            return parse_response(body)
        except PreQualAPIError as exc:
            # A truncated or HTML error page is worth one more attempt.
            last_error = str(exc)
            continue

    raise PreQualAPIError(f"Giving up on {url} after {retries} retries: {last_error}")


def _collect(products, seen, all_products):
    """Append not-yet-seen products and report how many were new.

    Args:
        products: Records from the current page.
        seen: Set of already collected product keys, updated in place.
        all_products: Accumulator list, appended to in place.

    Returns:
        Number of records added.
    """
    added = 0
    for product in products:
        key = product_key(product)
        if key in seen:
            continue
        seen.add(key)
        all_products.append(product)
        added += 1
    return added


def download_offset_pages(
    endpoint,
    username,
    password,
    page_size=DEFAULT_PAGE_SIZE,
    timestamp=None,
    timeout=180,
):
    """Download all records using OffSet/Limit pagination.

    Advances by the number of records actually returned rather than by the
    requested page size, because the services cap how many parent rows one
    response can carry and return fewer records than asked for without
    saying so.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        page_size: Records to request per page.
        timestamp: TimeStamp filter value.
        timeout: Per-request timeout in seconds.

    Returns:
        Tuple of (list of records, TotalRecords reported by the API or None).

    Raises:
        PreQualAPIError: If the service stops making progress, which means
            it is ignoring OffSet.
    """
    all_products = []
    seen = set()
    offset = 0
    total_records = None

    for request_number in range(1, MAX_REQUESTS + 1):
        data = fetch_api_page(
            endpoint, username, password, offset, page_size, timestamp, timeout
        )
        check_response_status(data)

        products = data.get("FinishedVaccineProducts") or []
        info = data.get("AdditionalInfo") or {}

        if total_records is None:
            total_records = info.get("TotalRecords")
            if total_records is not None:
                logger.info("API reports %s total records", total_records)

        if not products:
            logger.info("Empty page at offset %d; pagination complete", offset)
            break

        echoed = info.get(PARAM_OFFSET)
        if echoed is not None and int(echoed) != offset:
            logger.warning(
                "Requested %s=%d but the API echoed %s; it may be ignoring the parameter",
                PARAM_OFFSET,
                offset,
                echoed,
            )

        added = _collect(products, seen, all_products)
        logger.info(
            "Page %d: %d records (%d new), %d collected so far",
            request_number,
            len(products),
            added,
            len(all_products),
        )

        if added == 0:
            # Every record on this page was already collected, so the
            # service is returning the same window regardless of OffSet.
            # Continuing would loop until MAX_REQUESTS and then silently
            # yield only the first page's worth of products.
            raise PreQualAPIError(
                "API returned no new records at %s=%d (page of %d, all duplicates). "
                "The service is ignoring %s, so offset pagination cannot complete. "
                "Collected %d of %s records. Re-run with "
                "--pagination-strategy timestamp, or ask the WHO integration team "
                "for an FVP service version that implements %s."
                % (
                    PARAM_OFFSET,
                    offset,
                    len(products),
                    PARAM_OFFSET,
                    len(all_products),
                    total_records,
                    PARAM_OFFSET,
                )
            )

        if len(products) < page_size:
            logger.info(
                "Service returned %d of %d requested records (server-side cap)",
                len(products),
                page_size,
            )

        offset += len(products)

        if total_records is not None and len(all_products) >= int(total_records):
            break
    else:
        raise PreQualAPIError(
            f"Stopped after {MAX_REQUESTS} requests with {len(all_products)} records; "
            "pagination is not terminating."
        )

    return all_products, total_records


def download_timestamp_pages(
    endpoint,
    username,
    password,
    page_size=DEFAULT_PAGE_SIZE,
    timestamp=None,
    timeout=180,
):
    """Download all records by walking the TimeStamp filter forward.

    Fallback for services that ignore OffSet.  TimeStamp filters on the
    Salesforce last-publishing-update field with ``>=`` semantics, so each
    request re-asks from the newest LastPublishingDate already collected and
    relies on de-duplication to drop the overlap.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        page_size: Records to request per page.
        timestamp: Starting TimeStamp filter value.
        timeout: Per-request timeout in seconds.

    Returns:
        Tuple of (list of records, TotalRecords reported by the API or None).

    Raises:
        PreQualAPIError: If the window cannot advance.
    """
    all_products = []
    seen = set()
    cursor = timestamp or DEFAULT_TIMESTAMP
    total_records = None

    for request_number in range(1, MAX_REQUESTS + 1):
        data = fetch_api_page(
            endpoint, username, password, 0, page_size, cursor, timeout
        )
        check_response_status(data)

        products = data.get("FinishedVaccineProducts") or []
        info = data.get("AdditionalInfo") or {}

        if total_records is None:
            total_records = info.get("TotalRecords")
            if total_records is not None:
                logger.info("API reports %s total records", total_records)

        if not products:
            logger.info("Empty page at %s=%s; walk complete", PARAM_TIMESTAMP, cursor)
            break

        added = _collect(products, seen, all_products)
        logger.info(
            "Window %d (%s>=%s): %d records (%d new), %d collected so far",
            request_number,
            PARAM_TIMESTAMP,
            cursor,
            len(products),
            added,
            len(all_products),
        )

        stamps = [product_timestamp(p) for p in products]
        newest = max((s for s in stamps if s), default=None)
        if newest is None:
            raise PreQualAPIError(
                "Records have no LastPublishingDate, so the %s window cannot be "
                "advanced. Use --pagination-strategy offset instead." % PARAM_TIMESTAMP
            )

        if newest == cursor and added == 0:
            # Nothing new and the window cannot move: every remaining record
            # shares this timestamp, so a wider page size is the only way
            # past it.
            raise PreQualAPIError(
                "Stuck at %s=%s: %d records share this timestamp and none are new. "
                "Increase --page-size above %d to clear the window. "
                "Collected %d of %s records."
                % (PARAM_TIMESTAMP, cursor, len(products), page_size, len(all_products), total_records)
            )

        cursor = newest

        if total_records is not None and len(all_products) >= int(total_records):
            break
    else:
        raise PreQualAPIError(
            f"Stopped after {MAX_REQUESTS} requests with {len(all_products)} records; "
            "the timestamp walk is not terminating."
        )

    return all_products, total_records


def download_all_pages(
    endpoint,
    username,
    password,
    page_size=DEFAULT_PAGE_SIZE,
    timestamp=None,
    strategy="offset",
    timeout=180,
    allow_partial=False,
):
    """Download every record the API reports, verifying the count.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        page_size: Records to request per page.
        timestamp: TimeStamp filter value; None requests a full load.
        strategy: "offset" for OffSet/Limit paging, "timestamp" to walk the
            TimeStamp filter forward for services that ignore OffSet.
        timeout: Per-request timeout in seconds.
        allow_partial: Warn instead of raising when fewer records arrive
            than TotalRecords promised.

    Returns:
        List of FinishedVaccineProduct records.

    Raises:
        PreQualAPIError: On an unknown strategy, or on a short read unless
            allow_partial is set.
    """
    if timestamp is None:
        timestamp = DEFAULT_TIMESTAMP

    if strategy == "offset":
        downloader = download_offset_pages
    elif strategy == "timestamp":
        downloader = download_timestamp_pages
    else:
        raise PreQualAPIError(f"Unknown pagination strategy: {strategy}")

    products, total_records = downloader(
        endpoint, username, password, page_size, timestamp, timeout
    )

    logger.info("Total products downloaded: %d", len(products))

    if total_records is not None and len(products) < int(total_records):
        message = (
            "Downloaded %d records but the API reported %s total. The sync is "
            "incomplete; do not publish this run." % (len(products), total_records)
        )
        if not allow_partial:
            raise PreQualAPIError(message)
        logger.warning(message)

    return products


def merge_products(existing, fetched):
    """Merge fetched records into an existing snapshot, keyed on product id.

    An incremental fetch returns only the products whose publishing date
    moved, but every generator rewrites its whole output file from the list
    it is given.  Generating straight from a delta therefore deletes every
    product the delta does not mention.  Merging first restores the full
    picture, with the fetched copy of a product replacing the stored one --
    which is what makes a withdrawal apply correctly, since the fetched
    copy is the cleared-down record.

    Existing order is preserved and new products are appended, so the
    generated FSH diff stays small and reviewable.

    Note this cannot detect a product removed from the source database
    altogether; only a full load can. Run one periodically.

    Args:
        existing: Products from the stored snapshot.
        fetched: Products from this run's fetch.

    Returns:
        Tuple of (merged list, number added, number updated).
    """
    fetched_by_key = {}
    for product in fetched:
        fetched_by_key[product_key(product)] = product

    merged = []
    updated = 0
    seen = set()
    for product in existing:
        key = product_key(product)
        seen.add(key)
        if key in fetched_by_key:
            merged.append(fetched_by_key[key])
            updated += 1
        else:
            merged.append(product)

    added = 0
    for product in fetched:
        key = product_key(product)
        if key not in seen:
            merged.append(product)
            added += 1

    logger.info(
        "Merged %d fetched records into %d stored: %d updated, %d added, %d total",
        len(fetched),
        len(existing),
        updated,
        added,
        len(merged),
    )
    return merged, added, updated


def load_json_file(path):
    """Load products from a local JSON file.

    Args:
        path: Path to JSON file.

    Returns:
        List of FinishedVaccineProduct records.
    """
    logger.info("Loading data from local file: %s", path)
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)
    products = data.get("FinishedVaccineProducts", [])
    logger.info("Loaded %d products from file", len(products))
    return products


def extract_product_fields(product):
    """Extract normalized fields from a single API product record.

    Args:
        product: A single FinishedVaccineProduct record from the API.

    Returns:
        Dictionary with normalized field values.
    """
    details = product.get("ProductDetails", {})
    ident = details.get("Identification", {})
    applicant = details.get("ApplicantOrganization", {})
    applicant_ident = applicant.get("Identification", {})
    applicant_addr = applicant.get("Address", {})
    applicant_contact = applicant.get("Contact", [])
    nra = details.get("NRADetails", {})
    nra_ident = nra.get("Identification", {})
    nra_addr = nra.get("Address", {})
    nra_contact = nra.get("Contact", [])
    vaccine = details.get("VaccineDetails", {})
    vaccine_ident = vaccine.get("Identification", {})
    vaccine_name = vaccine.get("VaccineName", {})
    dosage = details.get("DosageDetails", {})
    storage = details.get("StorageDetails", {})
    consumption = details.get("ConsumptionDetails", {})
    bulk_supplier = details.get("BulkSupplier", {})
    preservative = details.get("PreservativeDetails", {})
    preservative_conc = details.get("PreservativeConcentartionDetails", {})

    # Normalize preservative ID (can be a name like "Thiomersal" or "None" or null)
    preserv_id = preservative.get("Id", "") if preservative else ""
    if preserv_id in (None, "None", ""):
        preserv_id = ""
    preserv_conc_id = preservative_conc.get("Id", "") if preservative_conc else ""
    if preserv_conc_id is None:
        preserv_conc_id = ""

    # Normalize bulk supplier
    bs_id = bulk_supplier.get("Id", "") if bulk_supplier else ""
    if bs_id is None:
        bs_id = ""
    bs_name = bulk_supplier.get("Name", "") if bulk_supplier else ""
    if bs_name is None:
        bs_name = ""

    # Extract packaging, document, site, and ingredient details (raw)
    packaging = product.get("ProductPackaging", []) or []
    documents = product.get("DocumentDetails", []) or []
    sites = product.get("SiteDetails", []) or []
    ingredients = product.get("ProductIngredients", []) or []

    fields = {
        "sf_product_id": ident.get("Id", ""),
        "sf_product_name": ident.get("Name", ""),
        "product_type": details.get("Type", ""),
        "date_of_prequal": details.get("DateOfPreQualifiedAcceptance", ""),
        "assessment_procedure": details.get("AssessmentProcedure", ""),
        "status": details.get("Status", ""),
        "pharmaceutical_form": details.get("PharmaceuticalForm", ""),
        "presentation": details.get("Presentation", ""),
        "presentation_other": details.get("PresentationOther", ""),
        "num_doses": dosage.get("NoOfDosagesPerPrimaryContainer", ""),
        "vaccine_full_name": vaccine_name.get("FullName", ""),
        "vaccine_abbreviated_name": vaccine_name.get("AbbreviatedName", ""),
        "vaccine_commercial_name": vaccine_name.get("CommercialName", ""),
        "vaccine_type_id": vaccine_ident.get("Id", ""),
        "route_of_administration": vaccine.get("RouteOfAdministrationVx", ""),
        "vial_monitor": vaccine.get("VialMonitor", ""),
        "multidose_vial_policy": vaccine.get("MultidoseVialPolicy", ""),
        "applicant_id": applicant_ident.get("Id", ""),
        "applicant_name": applicant_ident.get("Name", ""),
        "applicant_address_line1": applicant_addr.get("AddressLine1", ""),
        "applicant_city": applicant_addr.get("City", ""),
        "applicant_state": applicant_addr.get("State", ""),
        "applicant_country": applicant_addr.get("Country", ""),
        "applicant_postal_code": applicant_addr.get("PostalCode", ""),
        "applicant_iso_country": applicant_addr.get("ISOCountryCode", ""),
        "applicant_region": applicant_addr.get("Region", ""),
        "applicant_website": applicant_contact[0].get("Website", "") if applicant_contact and isinstance(applicant_contact[0], dict) else "",
        "nra_id": nra_ident.get("Id", ""),
        "nra_name": nra_ident.get("Name", ""),
        "nra_address_line1": nra_addr.get("AddressLine1", ""),
        "nra_country": nra_addr.get("Country", ""),
        "nra_website": nra_contact[0].get("Website", "") if nra_contact and isinstance(nra_contact[0], dict) else "",
        "shelf_life": storage.get("ShelfLife", ""),
        "temperature": storage.get("Temperature", ""),
        "diluent": consumption.get("Diluent", ""),
        "last_publishing_date": details.get("LastPublishingDate", ""),
        "publishing_remarks": details.get("PublishingRemarks", ""),
        "preservative": preserv_id,
        "preservative_concentration": preserv_conc_id,
        "bulk_supplier_id": bs_id,
        "bulk_supplier_name": bs_name,
        "packaging": packaging,
        "documents": documents,
        "sites": sites,
        "ingredients": ingredients,
    }

    # The API sends explicit nulls rather than omitting keys, so a
    # .get(key, "") above still yields None for them.  Normalise every
    # scalar to a string: without this, hashing a null name raises
    # AttributeError and f-string formatting writes the literal "None"
    # into the generated FSH.
    for key, value in fields.items():
        if value is None:
            fields[key] = ""

    return fields


def backfill_names_from_ids(products):
    """Fill in organization names that are empty but recoverable from their ID.

    The API's applicant and NRA names are Salesforce denormalized copies
    (``*_DN__c``), which are occasionally empty while the relationship ID is
    intact.  Because the same organizations recur across products, a name
    missing on one product can usually be recovered from another product
    that shares the ID.  This repairs the label without inventing data: the
    name always comes from the API's own value for that same ID.

    Args:
        products: List of normalized product field dicts, modified in place.

    Returns:
        Dict mapping entity label to the number of names filled.
    """
    filled = {}
    for label, id_key, name_key in (
        ("applicant", "applicant_id", "applicant_name"),
        ("NRA", "nra_id", "nra_name"),
    ):
        directory = {}
        for p in products:
            if p.get(id_key) and p.get(name_key):
                directory.setdefault(p[id_key], p[name_key])

        count = 0
        for p in products:
            if p.get(name_key) or not p.get(id_key):
                continue
            recovered = directory.get(p[id_key])
            if recovered:
                p[name_key] = recovered
                count += 1
                logger.info(
                    "Backfilled %s name for %s from id %s: %s",
                    label,
                    p.get("sf_product_name") or p.get("sf_product_id"),
                    p[id_key],
                    recovered,
                )
        filled[label] = count

        unrecoverable = [
            p for p in products if not p.get(name_key) and not p.get(id_key)
        ]
        if unrecoverable:
            logger.info(
                "%d product(s) have no %s name and no %s id, so the name "
                "cannot be recovered from this extract",
                len(unrecoverable),
                label,
                label,
            )

    return filled


def generate_presentations_codesystem(products, output_dir):
    """Generate presentations CodeSystem and ValueSet FSH files.

    Preserves any existing codes in the file that are not in the current data.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    cs_path = os.path.join(output_dir, "codesystems", "prequal_presentation.fsh")
    os.makedirs(os.path.dirname(cs_path), exist_ok=True)

    existing = read_existing_codes(cs_path)

    # Build new codes from data
    new_codes = {}
    for p in products:
        pres = p.get("presentation", "")
        if pres:
            code = sanitize_alpha(pres)
            new_codes[code] = f'* #{code} "{fsh_escape(pres)}"'

    # Merge: existing first, then new
    merged = dict(existing)
    for code, line in new_codes.items():
        if code not in merged:
            merged[code] = line

    with open(cs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $presentation = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualPresentation\n')
        f.write("CodeSystem: PreQualPresentation\n")
        f.write('Title : "WHO PreQualificaiton Vaccine Presentations"\n')
        f.write('Description: "WHO PreQualificaiton Vaccine Presentations"\n\n')
        for code in sorted(merged):
            f.write(f'{merged[code]}\n')

    vs_path = os.path.join(output_dir, "valuesets", "prequal_presentation.fsh")
    os.makedirs(os.path.dirname(vs_path), exist_ok=True)

    with open(vs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $preQualPresentation = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualPresentation\n')
        f.write("ValueSet: PreQualPresentation\n")
        f.write('Title : "WHO PreQualificaiton Presentation "\n')
        f.write('Description: "WHO PreQualificaiton Presentation"\n\n\n')
        f.write("* include codes from system $preQualPresentation\n\n")

    logger.info("Generated presentations CodeSystem with %d codes", len(merged))


def product_display(product):
    """Return a readable display for a product code.

    No combination of descriptive fields identifies a product uniquely: in
    a full extract, 124 products share a commercial name, and even
    commercial name, vaccine, applicant, presentation and dose count
    together still leave collisions -- two genuine duplicate registrations
    of the same product, and the de-published records, which carry no
    detail at all.  The record name (FVP-P-nnn) is the only unique value,
    so the description leads and the record name closes it in brackets as
    the disambiguator: readable, and distinct by construction.

    Args:
        product: A normalized product field dict.

    Returns:
        A display string, never empty.
    """
    record = product.get("sf_product_name", "") or product.get("sf_product_id", "")
    commercial = product.get("vaccine_commercial_name", "") or ""
    abbreviated = product.get("vaccine_abbreviated_name", "") or ""
    applicant = product.get("applicant_name", "") or ""
    presentation = product.get("presentation", "") or ""
    doses = product.get("num_doses", "") or ""

    parts = []
    if commercial and abbreviated:
        parts.append(f"{commercial} ({abbreviated})")
    elif commercial or abbreviated:
        parts.append(commercial or abbreviated)
    if applicant:
        parts.append(applicant)
    if presentation and doses:
        parts.append(f"{presentation}, {doses} dose{'' if doses == '1' else 's'}")
    elif presentation:
        parts.append(presentation)

    if not parts:
        # A de-published record has only its identity and status left.
        status = product.get("status", "") or ""
        return f"{status} [{record}]" if status else record
    return f"{', '.join(parts)} [{record}]"


def vaccine_type_coding(product):
    """Return the (code, display) a product's vaccine type is coded as.

    The abbreviated name is the code because it is short and stable
    ("TDV", "bOPV"), and the full name is the display because that is what
    identifies the vaccine to a reader: "Dengue tetravalent vaccine (live,
    attenuated)" rather than "TDV".  Either may be missing, so each falls
    back to the other.

    Args:
        product: A normalized product field dict.

    Returns:
        Tuple of (code, display), both empty when the product names no
        vaccine type.
    """
    abbreviated = product.get("vaccine_abbreviated_name", "") or ""
    full = product.get("vaccine_full_name", "") or ""
    label = abbreviated or full
    if not label:
        return "", ""
    return sanitize_code(label), (full or abbreviated)


def generate_vaccine_types_codesystem(products, output_dir):
    """Generate vaccine types CodeSystem and ValueSet FSH files.

    Preserves any existing codes in the file that are not in the current data.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    cs_path = os.path.join(output_dir, "codesystems", "preQualVaccineTypes.fsh")
    os.makedirs(os.path.dirname(cs_path), exist_ok=True)

    existing = read_existing_codes(cs_path)

    # Build new codes from data
    new_codes = {}
    for p in products:
        code, display = vaccine_type_coding(p)
        if code:
            new_codes[code] = f'* #{code} "{fsh_escape(display)}"'

    # Codes no longer present in the data are kept, but a code the data
    # still carries takes its display from this extract.  Preserving is
    # meant to stop codes disappearing, not to freeze a display: these
    # previously repeated the code ("TDV" displayed as "TDV"), which told
    # a reader nothing about which vaccine it is.
    merged = dict(existing)
    merged.update(new_codes)

    with open(cs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $vaccinetype = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType\n')
        f.write("CodeSystem: PreQualVaccineType\n")
        f.write('Title : "WHO PreQualificaiton Vaccine VaccineTypes"\n')
        f.write('Description: "WHO PreQualificaiton Vaccine VaccineTypes"\n\n')
        for code in sorted(merged):
            f.write(f'{merged[code]}\n')

    vs_path = os.path.join(output_dir, "valuesets", "PreQualVacccineTypes.fsh")
    os.makedirs(os.path.dirname(vs_path), exist_ok=True)

    with open(vs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $preQualVaccineType = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType\n')
        f.write("ValueSet: PreQualVaccineType\n")
        f.write('Title : "WHO PreQualificaiton VaccineType "\n')
        f.write('Description: "WHO PreQualificaiton VaccineType"\n\n\n')
        f.write("* include codes from system $preQualVaccineType\n\n")

    logger.info("Generated vaccine types CodeSystem with %d codes", len(merged))


def generate_product_vaccine_type_conceptmap(products, output_dir):
    """Generate the product id -> vaccine type ConceptMap FSH file.

    A product is a narrower concept than the vaccine type it belongs to
    (Cervarix is one HPV vaccine), so each mapping is declared
    source-is-narrower-than-target.

    Every product is listed, including the de-published records, which
    carry no vaccine type: those are marked noMap, so the map says they
    were considered and have no target rather than leaving a reader to
    wonder whether they were missed.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    base = "http://smart.who.int/pcmt-vaxprequal"
    path = os.path.join(output_dir, "conceptmaps", "prequal_product_to_vaccine_type.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    # Sorted by product id so the generated file diffs cleanly between syncs.
    entries = []
    seen = set()
    for product in products:
        sf_id = product.get("sf_product_id", "")
        if not sf_id or sf_id in seen:
            continue
        seen.add(sf_id)
        code, display = vaccine_type_coding(product)
        entries.append((sanitize_code(sf_id), product_display(product), code, display))
    entries.sort()

    mapped = sum(1 for e in entries if e[2])

    with open(path, "w", encoding="utf-8") as f:
        f.write("Instance: PreQualProductToVaccineType\n")
        f.write("InstanceOf: ConceptMap\n")
        f.write("Usage: #definition\n")
        f.write(f'* url = "{base}/ConceptMap/PreQualProductToVaccineType"\n')
        f.write('* name = "PreQualProductToVaccineType"\n')
        f.write('* title = "WHO PreQual Vaccine Product to Vaccine Type"\n')
        f.write("* status = #active\n")
        f.write("* experimental = true\n")
        f.write(
            '* description = "Maps each WHO PreQual finished vaccine product '
            "identifier to the vaccine type it belongs to. Products whose "
            "detail has been de-published carry no vaccine type and are "
            'marked as having no map."\n'
        )
        f.write(f'* sourceScopeCanonical = "{base}/ValueSet/PreQualProductIds"\n')
        f.write(f'* targetScopeCanonical = "{base}/ValueSet/PreQualVaccineType"\n')
        f.write(f'* group[0].source = "{base}/CodeSystem/PreQualProductIds"\n')
        f.write(f'* group[0].target = "{base}/CodeSystem/PreQualVaccineType"\n')

        for index, (entry_id, product_label, code, display) in enumerate(entries):
            element = f"* group[0].element[{index}]"
            f.write(f"\n{element}.code = #{entry_id}\n")
            f.write(f'{element}.display = "{fsh_escape(product_label)}"\n')
            if code:
                f.write(f"{element}.target[0].code = #{code}\n")
                f.write(f'{element}.target[0].display = "{fsh_escape(display)}"\n')
                f.write(f"{element}.target[0].relationship = #source-is-narrower-than-target\n")
            else:
                f.write(f"{element}.noMap = true\n")

    logger.info(
        "Generated ConceptMap with %d product mappings (%d mapped, %d with no vaccine type)",
        len(entries),
        mapped,
        len(entries) - mapped,
    )


def organizations_by_id(products, name_field, id_field, require_id=False):
    """Collect one product per organization, keyed the way products reference it.

    generate_products_and_authorizations references an organization by its
    Salesforce ID (or the md5 of its name when it has none), so instances must
    be keyed the same way.  Keying on the name instead emits duplicate
    instances when an organization is renamed and drops one when two IDs
    share a name.  When an ID appears under several names, the most recently
    published product supplies the details.

    Args:
        products: List of normalized product field dicts.
        name_field: Field holding the organization name.
        id_field: Field holding the organization Salesforce ID.
        require_id: Skip organizations that have no Salesforce ID.

    Returns:
        List of (instance_id, product) tuples sorted by organization name.
    """
    seen = {}
    for p in products:
        name = p.get(name_field, "")
        sf_id = p.get(id_field, "")
        if not name or (require_id and not sf_id):
            continue
        instance_id = sanitize_code(sf_id) if sf_id else md5hash(name)
        current = seen.get(instance_id)
        if current is None or (p.get("last_publishing_date") or "") >= (
            current.get("last_publishing_date") or ""
        ):
            seen[instance_id] = p
    return sorted(seen.items(), key=lambda item: (item[1][name_field], item[0]))


def generate_manufacturers(products, output_dir):
    """Generate manufacturer Organization instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    seen = organizations_by_id(products, "applicant_name", "applicant_id")

    path = os.path.join(output_dir, "examples", "prequal_database_manufacturers.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        f.write('Alias: $orgType = http://terminology.hl7.org/CodeSystem/organization-type\n')
        for instance_id, p in seen:
            name = p["applicant_name"]
            sf_id = p.get("applicant_id", "")
            f.write(f"\nInstance: Manufacturer{instance_id}\n")
            f.write("InstanceOf: IHE.mCSD.Organization\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Manufacturer: {fsh_escape(name)}"\n')
            f.write(f'Description: "Vaccine Manufacturer Organization: {fsh_escape(name)}"\n')
            f.write("* active = true\n")
            f.write(f'* name = "{fsh_escape(name)}"\n')
            f.write("* type = $orgType#other\n")
            if sf_id:
                f.write(f'* identifier.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* identifier.value = "{fsh_escape(sf_id)}"\n')

    logger.info("Generated %d manufacturer instances", len(seen))


def generate_holders(products, output_dir):
    """Generate NRA/holder Organization instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    seen = organizations_by_id(products, "nra_name", "nra_id")

    path = os.path.join(output_dir, "examples", "prequal_database_holders.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        f.write('Alias: $orgType = http://terminology.hl7.org/CodeSystem/organization-type\n')
        for instance_id, p in seen:
            name = p["nra_name"]
            sf_id = p.get("nra_id", "")
            f.write(f"\nInstance: Holder{instance_id}\n")
            f.write("InstanceOf: IHE.mCSD.Organization\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual NRA/Holder: {fsh_escape(name)}"\n')
            f.write(f'Description: "National Regulatory Authority: {fsh_escape(name)}"\n')
            f.write("* active = true\n")
            f.write(f'* name = "{fsh_escape(name)}"\n')
            f.write("* type = $orgType#govt\n")
            if sf_id:
                f.write(f'* identifier.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* identifier.value = "{fsh_escape(sf_id)}"\n')

    logger.info("Generated %d holder instances", len(seen))


def generate_manufacturer_lm_instances(products, output_dir):
    """Generate PreQualManufacturer logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    seen = organizations_by_id(products, "applicant_name", "applicant_id", require_id=True)

    path = os.path.join(output_dir, "examples", "prequal_database_manufacturer_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for instance_id, p in seen:
            name = p["applicant_name"]
            sf_id = p.get("applicant_id", "")
            mfr_org_ref = f"Manufacturer{instance_id}"

            country = p.get("applicant_country", "") or ""
            title_suffix = f" ({country})" if country else ""
            f.write(f"\nInstance: PreQualManufacturer{instance_id}\n")
            f.write("InstanceOf: PreQualManufacturer\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Manufacturer: {fsh_escape(name)}"\n')
            f.write(f'Description: "WHO PreQual Manufacturer: {fsh_escape(name)}{fsh_escape(title_suffix)}"\n')
            if sf_id:
                f.write(f'* manufacturerId.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* manufacturerId.value = "{fsh_escape(sf_id)}"\n')
            f.write(f'* name = "{fsh_escape(name)}"\n')
            addr = p.get("applicant_address_line1")
            if addr:
                f.write(f'* addressLine1 = "{fsh_escape(addr)}"\n')
            city = p.get("applicant_city")
            if city:
                f.write(f'* city = "{fsh_escape(city)}"\n')
            state = p.get("applicant_state")
            if state:
                f.write(f'* state = "{fsh_escape(state)}"\n')
            country = p.get("applicant_country")
            if country:
                f.write(f'* country = "{fsh_escape(country)}"\n')
            postal = p.get("applicant_postal_code")
            if postal:
                f.write(f'* postalCode = "{fsh_escape(postal)}"\n')
            iso = p.get("applicant_iso_country")
            if iso:
                f.write(f'* isoCountryCode = "{fsh_escape(iso)}"\n')
            region = p.get("applicant_region")
            if region:
                f.write(f'* region = "{fsh_escape(region)}"\n')
            website = p.get("applicant_website")
            if website:
                f.write(f'* website = "{fsh_escape(website)}"\n')
            f.write(f"* organizationReference = Reference({mfr_org_ref})\n")

    logger.info("Generated %d manufacturer LM instances", len(seen))


def generate_nra_lm_instances(products, output_dir):
    """Generate PreQualNRA logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    seen = organizations_by_id(products, "nra_name", "nra_id", require_id=True)

    path = os.path.join(output_dir, "examples", "prequal_database_nra_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for instance_id, p in seen:
            name = p["nra_name"]
            sf_id = p.get("nra_id", "")
            holder_org_ref = f"Holder{instance_id}"

            nra_country = p.get("nra_country", "") or ""
            title_suffix = f" ({nra_country})" if nra_country else ""
            f.write(f"\nInstance: PreQualNRA{instance_id}\n")
            f.write("InstanceOf: PreQualNRA\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual NRA: {fsh_escape(name)}"\n')
            f.write(f'Description: "WHO PreQual NRA: {fsh_escape(name)}{fsh_escape(title_suffix)}"\n')
            if sf_id:
                f.write(f'* nraId.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* nraId.value = "{fsh_escape(sf_id)}"\n')
            f.write(f'* name = "{fsh_escape(name)}"\n')
            addr = p.get("nra_address_line1")
            if addr:
                f.write(f'* addressLine1 = "{fsh_escape(addr)}"\n')
            country = p.get("nra_country")
            if country:
                f.write(f'* country = "{fsh_escape(country)}"\n')
            website = p.get("nra_website")
            if website:
                f.write(f'* website = "{fsh_escape(website)}"\n')
            f.write(f"* organizationReference = Reference({holder_org_ref})\n")

    logger.info("Generated %d NRA LM instances", len(seen))


def generate_vaccine_lm_instances(products, output_dir):
    """Generate PreQualVaccine logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    seen = {}
    for p in products:
        vax_id = p.get("vaccine_type_id", "")
        if vax_id and vax_id not in seen:
            seen[vax_id] = p

    path = os.path.join(output_dir, "examples", "prequal_database_vaccine_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for vax_id, p in sorted(seen.items()):
            instance_id = sanitize_code(vax_id)

            full_name = p.get("vaccine_full_name", "") or ""
            abbr_name = p.get("vaccine_abbreviated_name", "") or ""
            vax_title = full_name or abbr_name or vax_id
            vax_desc_parts = [full_name, f"({abbr_name})" if abbr_name else ""]
            vax_desc = " ".join(part for part in vax_desc_parts if part).strip()
            f.write(f"\nInstance: PreQualVaccine{instance_id}\n")
            f.write("InstanceOf: PreQualVaccine\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Vaccine: {fsh_escape(vax_title)}"\n')
            f.write(f'Description: "WHO PreQual Vaccine: {fsh_escape(vax_desc)}"\n')
            f.write(f'* vaccineId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* vaccineId.value = "{fsh_escape(vax_id)}"\n')
            full_name = p.get("vaccine_full_name")
            if full_name:
                f.write(f'* fullName = "{fsh_escape(full_name)}"\n')
            abbr_name = p.get("vaccine_abbreviated_name")
            if abbr_name:
                f.write(f'* abbreviatedName = "{fsh_escape(abbr_name)}"\n')

    logger.info("Generated %d vaccine LM instances", len(seen))


def generate_metadata_codesystem(products, output_dir):
    """Generate PreQualDatabaseMetadata CodeSystem and ValueSet FSH files.

    Collects all unique coded values from the data for:
    ProductDetails.Type, AssessmentProcedure, Status, PharmaceuticalForm,
    RouteOfAdministration, PackagingType, ComponentPacked, DocumentType,
    SiteActivity, SiteStatus, IngredientType, ProductComponentType.

    Preserves any existing codes in the file that are not in the current data.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    # Collect unique values from all products
    product_types = set()
    assessment_procedures = set()
    statuses = set()
    pharmaceutical_forms = set()
    routes = set()
    packaging_types = set()
    component_packed = set()
    document_types = set()
    site_activities = set()
    site_statuses = set()
    ingredient_types = set()
    product_component_types = set()

    for p in products:
        pt = p.get("product_type", "")
        if pt:
            product_types.add(pt)
        ap = p.get("assessment_procedure", "")
        if ap:
            assessment_procedures.add(ap)
        s = p.get("status", "")
        if s:
            statuses.add(s)
        pf = p.get("pharmaceutical_form", "")
        if pf:
            pharmaceutical_forms.add(pf)
        ra = p.get("route_of_administration", "")
        if ra:
            routes.add(ra)
        for pkg in p.get("packaging", []) or []:
            pkgt = pkg.get("FVPPackagingType", "")
            if pkgt:
                packaging_types.add(pkgt)
            cp = pkg.get("ComponentPacked", "")
            if cp:
                component_packed.add(cp)
        for doc in p.get("documents", []) or []:
            dt = doc.get("Type", "")
            if dt:
                document_types.add(dt)
        for site in p.get("sites", []) or []:
            sa = site.get("SiteActivity", "")
            if sa:
                site_activities.add(sa)
            ss = site.get("Status", "")
            if ss:
                site_statuses.add(ss)
        for ing in p.get("ingredients", []) or []:
            it = ing.get("Type", "")
            if it:
                ingredient_types.add(it)
            pct = ing.get("ProductComponentType", "")
            if pct:
                product_component_types.add(pct)

    cs_path = os.path.join(output_dir, "codesystems", "prequal_database_metadata.fsh")
    os.makedirs(os.path.dirname(cs_path), exist_ok=True)

    existing = read_existing_codes(cs_path)

    categories = [
        ("ProductType", sorted(product_types)),
        ("AssessmentProcedure", sorted(assessment_procedures)),
        ("Status", sorted(statuses)),
        ("PharmaceuticalForm", sorted(pharmaceutical_forms)),
        ("RouteOfAdministration", sorted(routes)),
        ("PackagingType", sorted(packaging_types)),
        ("ComponentPacked", sorted(component_packed)),
        ("DocumentType", sorted(document_types)),
        ("SiteActivity", sorted(site_activities)),
        ("SiteStatus", sorted(site_statuses)),
        ("IngredientType", sorted(ingredient_types)),
        ("ProductComponentType", sorted(product_component_types)),
    ]

    # Build new codes from data, organized by category
    new_codes = {}
    for category, values in categories:
        for val in values:
            code = sanitize_code(val)
            new_codes[code] = f'* #{code} "{fsh_escape(val)}"'

    # Merge: existing codes preserved, new codes added
    merged = dict(existing)
    for code, line in new_codes.items():
        if code not in merged:
            merged[code] = line

    # Build category membership for output formatting
    code_to_category = {}
    for category, values in categories:
        for val in values:
            code = sanitize_code(val)
            code_to_category[code] = category
    # For existing codes not in new data, try to preserve category from file
    # (they'll go into an "Other" section if not matched)

    total_codes = 0
    with open(cs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $prequal-metadata = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualDatabaseMetadata\n')
        f.write("CodeSystem: PreQualDatabaseMetadata\n")
        f.write('Title: "WHO PreQualification Database Metadata"\n')
        f.write('Description: "Coded metadata values from the WHO PreQualification database"\n')
        f.write("* ^experimental = true\n")
        f.write("* ^caseSensitive = true\n")
        f.write('* ^name = "PreQualDatabaseMetadata"\n')
        f.write("* ^status = #active\n\n")

        # Write codes organized by category
        written_codes = set()
        for category, values in categories:
            # Collect codes for this category, skipping duplicates from earlier categories
            cat_codes = {}
            for val in values:
                code = sanitize_code(val)
                if code not in written_codes:
                    cat_codes[code] = merged[code]

            if cat_codes:
                f.write(f"// {category}\n")
                for code in sorted(cat_codes):
                    f.write(f'{cat_codes[code]}\n')
                    written_codes.add(code)
                    total_codes += 1
                f.write("\n")

        # Write any existing codes that weren't categorized
        uncategorized = {c: l for c, l in merged.items() if c not in written_codes}
        if uncategorized:
            f.write("// Other\n")
            for code in sorted(uncategorized):
                f.write(f'{uncategorized[code]}\n')
                total_codes += 1
            f.write("\n")

    vs_path = os.path.join(output_dir, "valuesets", "prequal_database_metadata.fsh")
    os.makedirs(os.path.dirname(vs_path), exist_ok=True)

    with open(vs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $prequal-metadata = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualDatabaseMetadata\n')
        f.write("ValueSet: PreQualDatabaseMetadata\n")
        f.write('Title: "WHO PreQualification Database Metadata"\n')
        f.write('Description: "Coded metadata values from the WHO PreQualification database"\n\n')
        f.write("* include codes from system $prequal-metadata\n")

    logger.info("Generated metadata CodeSystem with %d codes", total_codes)


def generate_bulk_supplier_lm_instances(products, output_dir):
    """Generate PreQualBulkSupplier logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    seen = {}
    for p in products:
        bs_id = p.get("bulk_supplier_id", "")
        bs_name = p.get("bulk_supplier_name", "")
        if bs_id and bs_id not in seen:
            seen[bs_id] = bs_name

    if not seen:
        logger.info("No bulk supplier LM instances to generate")
        return

    path = os.path.join(output_dir, "examples", "prequal_database_bulk_supplier_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for bs_id, bs_name in sorted(seen.items()):
            instance_id = sanitize_code(bs_id)
            bs_title = bs_name or bs_id
            f.write(f"\nInstance: PreQualBulkSupplier{instance_id}\n")
            f.write("InstanceOf: PreQualBulkSupplier\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Bulk Supplier: {fsh_escape(bs_title)}"\n')
            f.write(f'Description: "WHO PreQual Bulk Supplier: {fsh_escape(bs_title)}"\n')
            f.write(f'* bulkSupplierId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* bulkSupplierId.value = "{fsh_escape(bs_id)}"\n')
            if bs_name:
                f.write(f'* name = "{fsh_escape(bs_name)}"\n')

    logger.info("Generated %d bulk supplier LM instances", len(seen))


def generate_packaging_lm_instances(products, output_dir):
    """Generate PreQualProductPackaging logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    all_pkgs = []
    for p in products:
        for pkg in p.get("packaging", []) or []:
            pkg_id = pkg.get("Id", "")
            if pkg_id:
                all_pkgs.append(pkg)

    if not all_pkgs:
        logger.info("No packaging LM instances to generate")
        return

    path = os.path.join(output_dir, "examples", "prequal_database_packaging_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for pkg in all_pkgs:
            pkg_id = pkg["Id"]
            instance_id = sanitize_code(pkg_id)
            pkg_type = pkg.get("FVPPackagingType", "")
            component = pkg.get("ComponentPacked", "")
            cold_chain = pkg.get("ColdChainVolume", "")

            # Extract packaging details from the appropriate level
            secondary = pkg.get("SecondaryPackaging", {}) or {}
            tertiary = pkg.get("TertiaryPackaging", {}) or {}
            shipping = pkg.get("ShippingContainer", {}) or {}
            # Merge: take whatever detail level is present
            detail = {}
            for src in [secondary, tertiary, shipping]:
                for k, v in src.items():
                    if v and k not in detail:
                        detail[k] = v

            # Build title from packaging details
            pkg_desc_text = detail.get("Description", "")
            pkg_title = pkg_desc_text or pkg_type or "Packaging"
            f.write(f"\nInstance: PreQualPackaging{instance_id}\n")
            f.write("InstanceOf: PreQualProductPackaging\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Packaging: {fsh_escape(pkg_title)}"\n')
            f.write(f'Description: "WHO PreQual Product Packaging: {fsh_escape(pkg_title)}"\n')
            f.write(f'* packagingId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* packagingId.value = "{fsh_escape(pkg_id)}"\n')
            if pkg_type:
                f.write(f"* packagingType = #{sanitize_code(pkg_type)}\n")
            if component:
                f.write(f"* componentPacked = #{sanitize_code(component)}\n")
            if cold_chain:
                f.write(f'* coldChainVolume = "{fsh_escape(cold_chain)}"\n')
            desc = detail.get("Description", "")
            if desc:
                f.write(f'* description = "{fsh_escape(desc)}"\n')
            vol = detail.get("Volume", "")
            if vol:
                f.write(f'* volume = "{fsh_escape(vol)}"\n')
            td = detail.get("TotalDoses", "")
            if td:
                f.write(f'* totalDoses = "{fsh_escape(td)}"\n')
            tc = detail.get("TotalContainers", "")
            if tc:
                f.write(f'* totalContainers = "{fsh_escape(tc)}"\n')
            h = detail.get("Height", "")
            if h:
                f.write(f'* height = "{fsh_escape(h)}"\n')
            le = detail.get("Length", "")
            if le:
                f.write(f'* length = "{fsh_escape(le)}"\n')
            w = detail.get("Width", "")
            if w:
                f.write(f'* width = "{fsh_escape(w)}"\n')
            pc = detail.get("PrimaryContainers", "")
            if pc:
                f.write(f'* primaryContainers = "{fsh_escape(pc)}"\n')

    logger.info("Generated %d packaging LM instances", len(all_pkgs))


def generate_document_lm_instances(products, output_dir):
    """Generate PreQualDocumentDetail logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    all_docs = []
    for p in products:
        for doc in p.get("documents", []) or []:
            doc_ident = doc.get("Identification", {})
            doc_id = doc_ident.get("Id", "")
            if doc_id:
                all_docs.append(doc)

    if not all_docs:
        logger.info("No document LM instances to generate")
        return

    path = os.path.join(output_dir, "examples", "prequal_database_document_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for doc in all_docs:
            doc_ident = doc.get("Identification", {})
            doc_id = doc_ident.get("Id", "")
            doc_name = doc_ident.get("Name", "")
            instance_id = sanitize_code(doc_id)

            doc_type_val = doc.get("Type", "")
            doc_title = doc_name or doc_id
            doc_type_label = f" ({doc_type_val})" if doc_type_val else ""
            f.write(f"\nInstance: PreQualDocument{instance_id}\n")
            f.write("InstanceOf: PreQualDocumentDetail\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Document: {fsh_escape(doc_title)}"\n')
            f.write(f'Description: "WHO PreQual Document: {fsh_escape(doc_title)}{fsh_escape(doc_type_label)}"\n')
            f.write(f'* documentId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* documentId.value = "{fsh_escape(doc_id)}"\n')
            if doc_name:
                f.write(f'* documentName = "{fsh_escape(doc_name)}"\n')
            doc_type = doc.get("Type", "")
            if doc_type:
                f.write(f"* documentType = #{sanitize_code(doc_type)}\n")
            version_id = doc.get("VersionId", "")
            if version_id:
                f.write(f'* versionId = "{fsh_escape(version_id)}"\n')
            ext = doc.get("FileExtension", "")
            if ext:
                f.write(f'* fileExtension = "{fsh_escape(ext)}"\n')
            ft = doc.get("FileType", "")
            if ft:
                f.write(f'* fileType = "{fsh_escape(ft)}"\n')

    logger.info("Generated %d document LM instances", len(all_docs))


def generate_site_lm_instances(products, output_dir):
    """Generate PreQualSiteDetail logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    all_sites = []
    seen_ids = set()
    for p in products:
        for site in p.get("sites", []) or []:
            org = site.get("Organization", {})
            org_ident = org.get("Identification", {})
            org_id = org_ident.get("Id", "")
            if org_id and org_id not in seen_ids:
                seen_ids.add(org_id)
                all_sites.append(site)

    if not all_sites:
        logger.info("No site LM instances to generate")
        return

    path = os.path.join(output_dir, "examples", "prequal_database_site_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for site in all_sites:
            org = site.get("Organization", {})
            org_ident = org.get("Identification", {})
            org_id = org_ident.get("Id", "")
            org_name = org_ident.get("Name", "")
            org_addr = org.get("Address", {})
            instance_id = sanitize_code(org_id)

            site_country = org_addr.get("Country", "") or ""
            site_title = org_name or org_id
            site_suffix = f" ({site_country})" if site_country else ""
            f.write(f"\nInstance: PreQualSite{instance_id}\n")
            f.write("InstanceOf: PreQualSiteDetail\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Site: {fsh_escape(site_title)}"\n')
            f.write(f'Description: "WHO PreQual Manufacturing Site: {fsh_escape(site_title)}{fsh_escape(site_suffix)}"\n')
            f.write(f'* siteOrganizationId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* siteOrganizationId.value = "{fsh_escape(org_id)}"\n')
            if org_name:
                f.write(f'* siteOrganizationName = "{fsh_escape(org_name)}"\n')
            addr = org_addr.get("AddressLine1", "")
            if addr:
                f.write(f'* addressLine1 = "{fsh_escape(addr)}"\n')
            city = org_addr.get("City", "")
            if city:
                f.write(f'* city = "{fsh_escape(city)}"\n')
            state = org_addr.get("State", "")
            if state:
                f.write(f'* state = "{fsh_escape(state)}"\n')
            country = org_addr.get("Country", "")
            if country:
                f.write(f'* country = "{fsh_escape(country)}"\n')
            postal = org_addr.get("PostalCode", "")
            if postal:
                f.write(f'* postalCode = "{fsh_escape(postal)}"\n')
            status = site.get("Status", "")
            if status:
                f.write(f"* siteStatus = #{sanitize_code(status)}\n")
            activity = site.get("SiteActivity", "")
            if activity:
                f.write(f"* siteActivity = #{sanitize_code(activity)}\n")

    logger.info("Generated %d site LM instances", len(all_sites))


def generate_ingredient_lm_instances(products, output_dir):
    """Generate PreQualProductIngredient logical model instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    all_ingredients = []
    for p in products:
        sf_id = p.get("sf_product_id", "")
        per_product_idx = 0
        for ing in p.get("ingredients", []) or []:
            ing_ident = ing.get("Identification", {})
            ing_id = ing_ident.get("Id", "")
            # Some ingredients don't have IDs, use product+index as fallback
            per_product_idx += 1
            all_ingredients.append((sf_id, per_product_idx, ing_id, ing))

    if not all_ingredients:
        logger.info("No ingredient LM instances to generate")
        return

    path = os.path.join(output_dir, "examples", "prequal_database_ingredient_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for sf_id, idx, ing_id, ing in all_ingredients:
            if ing_id:
                instance_id = sanitize_code(ing_id)
            else:
                instance_id = f"{sanitize_code(sf_id)}Ing{idx}"

            ing_type_val = ing.get("Type", "")
            ing_func = ing.get("Function", "")
            ing_title = ing_func or ing_type_val or f"Ingredient {idx}"
            ing_pct = ing.get("ProductComponentType", "")
            ing_desc_parts = [ing_title]
            if ing_pct:
                ing_desc_parts.append(f"({ing_pct})")
            ing_desc = " ".join(ing_desc_parts)
            f.write(f"\nInstance: PreQualIngredient{instance_id}\n")
            f.write("InstanceOf: PreQualProductIngredient\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Ingredient: {fsh_escape(ing_title)}"\n')
            f.write(f'Description: "WHO PreQual Product Ingredient: {fsh_escape(ing_desc)}"\n')
            if ing_id:
                f.write(f'* ingredientId.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* ingredientId.value = "{fsh_escape(ing_id)}"\n')
            ing_type = ing.get("Type", "")
            if ing_type:
                f.write(f"* ingredientType = #{sanitize_code(ing_type)}\n")
            unit = ing.get("Unit", "")
            if unit:
                f.write(f'* unit = "{fsh_escape(unit)}"\n')
            product_ref = ing.get("Product", "")
            if product_ref:
                f.write(f'* product = "{fsh_escape(product_ref)}"\n')
            pct = ing.get("ProductComponentType", "")
            if pct:
                f.write(f"* productComponentType = #{sanitize_code(pct)}\n")
            func = ing.get("Function", "")
            if func:
                f.write(f'* function = "{fsh_escape(func)}"\n')

    logger.info("Generated %d ingredient LM instances", len(all_ingredients))


def generate_products_and_authorizations(products, output_dir):
    """Generate Product, ProductAuthorization, and LM instance FSH files.

    Also generates the product identifiers CodeSystem and ValueSet.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    examples_path = os.path.join(output_dir, "examples", "prequal_database_products.fsh")
    cs_path = os.path.join(output_dir, "codesystems", "prequal_database_products_identifiers.fsh")
    vs_path = os.path.join(output_dir, "valuesets", "prequal_database_products_identifiers.fsh")

    os.makedirs(os.path.dirname(examples_path), exist_ok=True)
    os.makedirs(os.path.dirname(cs_path), exist_ok=True)
    os.makedirs(os.path.dirname(vs_path), exist_ok=True)

    cs_entries = []
    generated_count = 0
    depublished_count = 0

    with open(examples_path, "w", encoding="utf-8") as f:
        for i, p in enumerate(products, 1):
            sf_id = p["sf_product_id"]
            sf_name = p["sf_product_name"]
            date = p["date_of_prequal"]
            vax = p.get("vaccine_abbreviated_name", "") or ""
            vax_type = sanitize_code(vax)[:24]
            commercial_name = p["vaccine_commercial_name"]
            presentation = p["presentation"]
            pres_code = sanitize_alpha(presentation)
            num_doses = p["num_doses"]
            manufacturer = p["applicant_name"]
            manufacturer_sf_id = p.get("applicant_id", "")
            holder = p["nra_name"]
            holder_sf_id = p.get("nra_id", "")

            # Every product is emitted, including de-published records that
            # carry only an id, a name, a status and a publishing date.  Those
            # are the authoritative record of a past prequalification, so the
            # logical model makes all the detail optional rather than dropping
            # them.  Fields are written only when present, below.
            if not commercial_name and not manufacturer and not holder:
                logger.info(
                    "Product %s (%s) is de-published (status %s): emitting "
                    "identity and status only",
                    sf_id,
                    sf_name,
                    p.get("status") or "unknown",
                )
                depublished_count += 1

            safe_sf_id = sanitize_code(sf_id) if sf_id else md5hash(str(i))
            mfr_ref_id = sanitize_code(manufacturer_sf_id) if manufacturer_sf_id else md5hash(manufacturer)
            holder_ref_id = sanitize_code(holder_sf_id) if holder_sf_id else md5hash(holder)

            f.write(f"\n// Source Record Row //: {i}\n")
            f.write(f'//  Vaccine Product ID: ({sf_id})\n')
            f.write(f'//  Product Name: ({sf_name})\n')
            f.write(f'//  Date of Prequalification: ({date})\n')
            f.write(f'//  Vaccine Type: ({vax})\n')
            f.write(f'//  Commercial Name: ({commercial_name})\n')
            f.write(f'//  Presentation: ({presentation})\n')
            f.write(f'//  No. of doses: ({num_doses})\n')
            f.write(f'//  Manufacturer: ({manufacturer})\n')
            f.write(f'//  Responsible NRA: ({holder})\n')
            f.write(f"//\n\n")

            # LM Instance
            # No default: inventing "Prequalified" for a record whose status
            # the API did not supply would assert something WHO has not.
            status = p.get("status", "")
            product_type = p.get("product_type", "")
            assessment = p.get("assessment_procedure", "")
            pharm_form = p.get("pharmaceutical_form", "")
            route = p.get("route_of_administration", "")
            preservative = p.get("preservative", "")
            preservative_conc = p.get("preservative_concentration", "")
            vial_monitor = p.get("vial_monitor", "") or ""
            multidose_policy = p.get("multidose_vial_policy", "") or ""
            presentation_other = p.get("presentation_other", "") or ""
            shelf_life = p.get("shelf_life", "") or ""
            temperature = p.get("temperature", "") or ""
            diluent_val = p.get("diluent", "") or ""
            last_pub_date = p.get("last_publishing_date", "") or ""
            pub_remarks = p.get("publishing_remarks", "") or ""
            nra_country = p.get("nra_country", "") or ""

            product_title = f"{commercial_name} - {vax}" if commercial_name and vax else commercial_name or sf_name
            product_desc = f"{commercial_name} ({vax}) by {manufacturer}" if commercial_name else sf_name
            f.write(f"Instance: FinishedProduct{safe_sf_id}\n")
            f.write("InstanceOf: FinishedVaccineProducts\n")
            f.write("Usage: #example\n")
            f.write(f'Title: "PreQual Product: {fsh_escape(product_title)}"\n')
            f.write(f'Description: "{fsh_escape(product_desc)}"\n')
            if product_type:
                f.write(f"* productType = #{sanitize_code(product_type)}\n")
            if date:
                f.write(f"* dateOfPrequal = {date}\n")
            if assessment:
                f.write(f"* assessmentProcedure = #{sanitize_code(assessment)}\n")
            if status:
                f.write(f"* status = #{sanitize_code(status)}\n")
            if pharm_form:
                f.write(f"* pharmaceuticalForm = #{sanitize_code(pharm_form)}\n")
            if pres_code:
                f.write(f'* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"\n')
                f.write(f"* presentation.coding.code = #{pres_code}\n")
                f.write(f'* presentation.coding.display = "{fsh_escape(presentation)}"\n')
            if presentation_other:
                f.write(f'* presentationOther = "{fsh_escape(presentation_other)}"\n')
            if num_doses:
                f.write(f"* numDoses = {num_doses}\n")
            f.write(f'* productId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* productId.value = "{fsh_escape(sf_id)}"\n')
            f.write(f'* productName = "{fsh_escape(sf_name)}"\n')
            if p.get("vaccine_full_name"):
                f.write(f'* vaccineFullName = "{fsh_escape(p["vaccine_full_name"])}"\n')
            if p.get("vaccine_abbreviated_name"):
                f.write(f'* vaccineAbbreviatedName = "{fsh_escape(p["vaccine_abbreviated_name"])}"\n')
            if commercial_name:
                f.write(f'* vaccineCommercialName = "{fsh_escape(commercial_name)}"\n')
            # The coded vaccine type, so an instance states which vaccine it
            # is without a reader having to resolve a Salesforce record id.
            vax_type_code, vax_type_display = vaccine_type_coding(p)
            if vax_type_code:
                f.write('* vaccineType.coding.system = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType"\n')
                f.write(f"* vaccineType.coding.code = #{vax_type_code}\n")
                f.write(f'* vaccineType.coding.display = "{fsh_escape(vax_type_display)}"\n')
            vax_type_id = p.get("vaccine_type_id", "")
            if vax_type_id:
                f.write(f'* vaccineTypeId.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* vaccineTypeId.value = "{fsh_escape(vax_type_id)}"\n')
            if route:
                f.write(f"* routeOfAdministration = #{sanitize_code(route)}\n")
            if vial_monitor and vial_monitor.lower() != "none":
                f.write(f'* vialMonitor = "{fsh_escape(vial_monitor)}"\n')
            if multidose_policy and multidose_policy.lower() != "not applicable":
                f.write(f'* multidoseVialPolicy = "{fsh_escape(multidose_policy)}"\n')
            if manufacturer_sf_id:
                f.write(f'* applicantId.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* applicantId.value = "{fsh_escape(manufacturer_sf_id)}"\n')
            if manufacturer:
                f.write(f'* applicantName = "{fsh_escape(manufacturer)}"\n')
            if holder_sf_id:
                f.write(f'* nraId.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* nraId.value = "{fsh_escape(holder_sf_id)}"\n')
            if holder:
                f.write(f'* nraName = "{fsh_escape(holder)}"\n')
            if nra_country:
                f.write(f'* nraCountry = "{fsh_escape(nra_country)}"\n')
            if shelf_life:
                f.write(f'* shelfLife = "{fsh_escape(shelf_life)}"\n')
            if temperature:
                f.write(f'* storageTemperature = "{fsh_escape(temperature)}"\n')
            if diluent_val and diluent_val.upper() != "N/A":
                f.write(f'* diluent = "{fsh_escape(diluent_val)}"\n')
            if last_pub_date:
                # Trim timestamp to date only if it has a T
                pub_date = last_pub_date.split("T")[0] if "T" in last_pub_date else last_pub_date
                f.write(f"* lastPublishingDate = {pub_date}\n")
            if pub_remarks:
                f.write(f'* publishingRemarks = "{fsh_escape(pub_remarks)}"\n')
            if preservative:
                f.write(f'* preservative = "{fsh_escape(preservative)}"\n')
            if preservative_conc:
                f.write(f'* preservativeConcentration = "{fsh_escape(preservative_conc)}"\n')
            # generate_manufacturers/generate_holders key their instances on the
            # organization name, so a product with no name has no instance to
            # point at.  Referencing one anyway would fail the IG build.
            if manufacturer:
                f.write(f"* manufacturerReference = Reference(Manufacturer{mfr_ref_id})\n")
            if holder:
                f.write(f"* responsibleNRAReference = Reference(Holder{holder_ref_id}) // {fsh_escape(holder)}\n")

            # LM instance references (only when sub-object has a non-null ID;
            # the LM generators also skip unnamed organizations)
            if manufacturer and manufacturer_sf_id:
                f.write(f"* manufacturerLM = Reference(PreQualManufacturer{mfr_ref_id})\n")
            if holder and holder_sf_id:
                f.write(f"* nraLM = Reference(PreQualNRA{holder_ref_id})\n")
            if vax_type_id:
                vax_lm_ref_id = sanitize_code(vax_type_id)
                f.write(f"* vaccineLM = Reference(PreQualVaccine{vax_lm_ref_id})\n")

            # Bulk supplier LM reference
            bs_id = p.get("bulk_supplier_id", "")
            if bs_id:
                f.write(f"* bulkSupplierLM = Reference(PreQualBulkSupplier{sanitize_code(bs_id)})\n")

            # Packaging LM references
            for pkg in p.get("packaging", []) or []:
                pkg_id = pkg.get("Id", "")
                if pkg_id:
                    f.write(f"* packagingLM = Reference(PreQualPackaging{sanitize_code(pkg_id)})\n")

            # Document LM references
            for doc in p.get("documents", []) or []:
                doc_ident = doc.get("Identification", {})
                doc_id = doc_ident.get("Id", "")
                if doc_id:
                    f.write(f"* documentLM = Reference(PreQualDocument{sanitize_code(doc_id)})\n")

            # Site LM references
            for site in p.get("sites", []) or []:
                org = site.get("Organization", {})
                org_ident = org.get("Identification", {})
                org_id = org_ident.get("Id", "")
                if org_id:
                    f.write(f"* siteLM = Reference(PreQualSite{sanitize_code(org_id)})\n")

            # Ingredient LM references
            ing_idx = 0
            for ing in p.get("ingredients", []) or []:
                ing_ident = ing.get("Identification", {})
                ing_id = ing_ident.get("Id", "")
                ing_idx += 1
                if ing_id:
                    f.write(f"* ingredientLM = Reference(PreQualIngredient{sanitize_code(ing_id)})\n")
                else:
                    f.write(f"* ingredientLM = Reference(PreQualIngredient{sanitize_code(sf_id)}Ing{ing_idx})\n")

            f.write("\n")

            generated_count += 1
            cs_entries.append((safe_sf_id, sf_id, product_display(p)))

    # CodeSystem for product identifiers (additive — preserve existing codes)
    existing_ids = read_existing_codes(cs_path)
    new_id_codes = {}
    for entry_id, sf_id, display in cs_entries:
        new_id_codes[entry_id] = f'* #{entry_id} "{fsh_escape(display)}"'

    # A code no longer in the extract is kept, but one still present takes
    # its display from the current data, so an improved display is applied
    # rather than frozen out by the previously stored line.
    merged_ids = dict(existing_ids)
    merged_ids.update(new_id_codes)

    with open(cs_path, "w", encoding="utf-8") as f:
        f.write("\n")
        f.write("Alias: $PreQualProductIds = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds\n")
        f.write("CodeSystem: PreQualProductIds\n")
        f.write('Title : "WHO PreQualificaiton Vaccine Product Ids"\n')
        f.write('Description: "WHO PreQualificaiton Vaccine Product Ids"\n')
        f.write("* ^experimental = true\n")
        f.write("* ^caseSensitive = false\n")
        f.write('* ^name = "PreQualProductIds"\n')
        f.write("* ^status = #active\n\n\n")
        for code in sorted(merged_ids):
            f.write(f'{merged_ids[code]}\n')

    # ValueSet for product identifiers
    with open(vs_path, "w", encoding="utf-8") as f:
        f.write("\n")
        f.write("Alias: $PreQualProductIds = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds\n")
        f.write("ValueSet: PreQualProductIds\n")
        f.write('Title : "WHO PreQualificaiton Vaccine Product Ids"\n')
        f.write('Description: "WHO PreQualificaiton Vaccine Product Ids"\n')
        f.write("* include codes from system $PreQualProductIds\n")

    logger.info("Generated %d product instances", generated_count)
    if depublished_count:
        logger.info(
            "%d of %d are de-published records carrying identity and status only",
            depublished_count,
            len(products),
        )


def main():
    parser = argparse.ArgumentParser(
        description="Import WHO Vaccine PreQual data from the backend API"
    )
    parser.add_argument(
        "--output-dir",
        default="input/fsh",
        help="Output directory for generated FSH files (default: input/fsh)",
    )
    parser.add_argument(
        "--json-file",
        default=None,
        help="Path to a local JSON file to use instead of the API (for testing/offline use)",
    )
    parser.add_argument(
        "--page-size",
        type=int,
        default=DEFAULT_PAGE_SIZE,
        help=(
            "Records to request per API page (default: %d). The services cap "
            "how many parent rows one response carries, so larger values are "
            "silently trimmed." % DEFAULT_PAGE_SIZE
        ),
    )
    parser.add_argument(
        "--pagination-strategy",
        choices=("offset", "timestamp"),
        default="offset",
        help=(
            "How to page through results: 'offset' uses OffSet/Limit, "
            "'timestamp' walks the TimeStamp filter forward for services "
            "that ignore OffSet (default: offset)"
        ),
    )
    parser.add_argument(
        "--timestamp",
        default=None,
        help=(
            "Only fetch products published on or after this ISO 8601 "
            "timestamp, e.g. 2025-01-01T00:00:00.000Z (default: full load)"
        ),
    )
    parser.add_argument(
        "--save-raw",
        default=None,
        help="Write the combined raw API response to this path",
    )
    parser.add_argument(
        "--allow-partial",
        action="store_true",
        help="Warn instead of failing when fewer records arrive than TotalRecords",
    )
    parser.add_argument(
        "--merge-with",
        default=None,
        help=(
            "Merge the fetched records into this existing snapshot (by "
            "product id) before generating. Required with --timestamp, "
            "because the generators rewrite each output file in full and an "
            "unmerged delta would delete every product it does not mention"
        ),
    )
    parser.add_argument(
        "--no-backfill",
        action="store_true",
        help=(
            "Do not recover empty applicant/NRA names from other products "
            "sharing the same organization ID"
        ),
    )
    parser.add_argument(
        "--status",
        action="append",
        default=None,
        help=(
            "Only keep products with this ProductDetails.Status; repeatable. "
            "Omit to keep every status (default)"
        ),
    )
    args = parser.parse_args()

    # An incremental fetch returns only what changed, and every generator
    # rewrites its output file in full, so generating from an unmerged delta
    # would delete every product the delta does not mention.
    if args.timestamp and not args.merge_with:
        logger.error(
            "--timestamp performs an incremental fetch, which returns only "
            "changed products. Generating from that alone would delete every "
            "other product from the IG. Pass --merge-with data/prequal.json "
            "to merge the delta into the stored snapshot first, or omit "
            "--timestamp for a full load."
        )
        sys.exit(1)

    # Load data from API or local file
    if args.json_file:
        raw_products = load_json_file(args.json_file)
    else:
        endpoint = os.environ.get("PREQUAL_API_ENDPOINT")
        username = os.environ.get("PREQUAL_API_USERNAME")
        password = os.environ.get("PREQUAL_API_PASSWORD")

        if not endpoint:
            logger.error("PREQUAL_API_ENDPOINT environment variable is required")
            sys.exit(1)
        if not username or not password:
            logger.error("PREQUAL_API_USERNAME and PREQUAL_API_PASSWORD environment variables are required")
            sys.exit(1)

        try:
            raw_products = download_all_pages(
                endpoint,
                username,
                password,
                page_size=args.page_size,
                timestamp=args.timestamp,
                strategy=args.pagination_strategy,
                allow_partial=args.allow_partial,
            )
        except PreQualAPIError as exc:
            logger.error("%s", exc)
            sys.exit(1)

    if args.merge_with:
        if os.path.exists(args.merge_with):
            stored = load_json_file(args.merge_with)
            raw_products, _, _ = merge_products(stored, raw_products)
        else:
            logger.warning(
                "%s does not exist yet, so there is nothing to merge into; "
                "treating this run as a full load",
                args.merge_with,
            )

    if args.status:
        wanted = set(args.status)
        before = len(raw_products)
        raw_products = [
            p
            for p in raw_products
            if (p.get("ProductDetails") or {}).get("Status") in wanted
        ]
        logger.info(
            "Status filter %s kept %d of %d products",
            sorted(wanted),
            len(raw_products),
            before,
        )

    if not raw_products:
        logger.error("No products found")
        sys.exit(1)

    if args.save_raw:
        os.makedirs(os.path.dirname(args.save_raw) or ".", exist_ok=True)
        with open(args.save_raw, "w", encoding="utf-8") as f:
            json.dump(
                {
                    "FinishedVaccineProducts": raw_products,
                    "AdditionalInfo": {
                        "OffSet": 0,
                        "Limit": len(raw_products),
                        "TotalRecords": len(raw_products),
                    },
                    "Status": {"StatusCode": "SUCCESS"},
                },
                f,
                indent=2,
                ensure_ascii=False,
            )
        logger.info("Wrote raw snapshot of %d products to %s", len(raw_products), args.save_raw)

    # Extract normalized fields
    products = [extract_product_fields(p) for p in raw_products]

    # Repair organization names that are empty but recoverable from their ID
    # before anything is generated from them.
    if not args.no_backfill:
        filled = backfill_names_from_ids(products)
        if any(filled.values()):
            logger.info(
                "Backfilled %s",
                ", ".join(f"{n} {label} name(s)" for label, n in filled.items() if n),
            )

    # Generate all FSH outputs
    os.makedirs(args.output_dir, exist_ok=True)

    generate_metadata_codesystem(products, args.output_dir)
    generate_presentations_codesystem(products, args.output_dir)
    generate_vaccine_types_codesystem(products, args.output_dir)
    generate_manufacturers(products, args.output_dir)
    generate_holders(products, args.output_dir)
    generate_manufacturer_lm_instances(products, args.output_dir)
    generate_nra_lm_instances(products, args.output_dir)
    generate_vaccine_lm_instances(products, args.output_dir)
    generate_bulk_supplier_lm_instances(products, args.output_dir)
    generate_packaging_lm_instances(products, args.output_dir)
    generate_document_lm_instances(products, args.output_dir)
    generate_site_lm_instances(products, args.output_dir)
    generate_ingredient_lm_instances(products, args.output_dir)
    generate_products_and_authorizations(products, args.output_dir)
    generate_product_vaccine_type_conceptmap(products, args.output_dir)

    logger.info("All FSH files generated successfully in %s", args.output_dir)


if __name__ == "__main__":
    main()
