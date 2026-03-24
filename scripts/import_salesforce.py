#!/usr/bin/env python3
"""Import WHO Vaccine PreQual data from the backend API.

Downloads paginated results from the PreQual API and generates:
  - FHIR Organization instances (manufacturers and holders)
  - CodeSystem and ValueSet FSH files

Environment variables:
  PREQUAL_API_ENDPOINT  - API endpoint URL
  PREQUAL_API_USERNAME  - API username
  PREQUAL_API_PASSWORD  - API password

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
import urllib.request
import urllib.error
import urllib.parse
import base64

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


def fetch_api_page(endpoint, username, password, offset=0, limit=100):
    """Fetch a single page of results from the API using offset/limit pagination.

    The API returns an AdditionalInfo object with OffSet, Limit, and TotalRecords.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        offset: Record offset (0-based).
        limit: Maximum number of results to return.

    Returns:
        Parsed JSON response.
    """
    separator = "&" if "?" in endpoint else "?"
    url = f"{endpoint}{separator}offset={offset}&limit={limit}"
    logger.info("Fetching offset=%d limit=%d from %s", offset, limit, url)

    req = urllib.request.Request(url)
    credentials = base64.b64encode(f"{username}:{password}".encode("utf-8")).decode("ascii")
    req.add_header("Authorization", f"Basic {credentials}")
    req.add_header("Accept", "application/json")

    with urllib.request.urlopen(req) as resp:
        return json.loads(resp.read().decode("utf-8"))


def download_all_pages(endpoint, username, password, page_size=100):
    """Download all pages of results from the API using offset/limit pagination.

    Uses AdditionalInfo.TotalRecords from the API response to determine
    when all records have been fetched.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        page_size: Number of results per request.

    Returns:
        List of FinishedVaccineProduct records.
    """
    all_products = []
    offset = 0
    total_records = None
    while True:
        data = fetch_api_page(endpoint, username, password, offset, page_size)
        products = data.get("FinishedVaccineProducts", [])
        if not products:
            break
        all_products.extend(products)

        # Use TotalRecords from API response to know when we're done
        additional_info = data.get("AdditionalInfo", {})
        if total_records is None:
            total_records = additional_info.get("TotalRecords")
            if total_records is not None:
                logger.info("API reports %d total records", total_records)

        logger.info("Downloaded %d products (offset=%d)", len(products), offset)
        offset += len(products)

        # Stop if we've fetched all records
        if total_records is not None and offset >= total_records:
            break

    logger.info("Total products downloaded: %d", len(all_products))
    return all_products


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

    return {
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
        vax = p.get("vaccine_abbreviated_name", "")
        if vax:
            code = sanitize_code(vax)
            new_codes[code] = f'* #{code} "{fsh_escape(vax)}"'

    # Merge: existing first, then new
    merged = dict(existing)
    for code, line in new_codes.items():
        if code not in merged:
            merged[code] = line

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


def generate_manufacturers(products, output_dir):
    """Generate manufacturer Organization instances FSH file.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    seen = {}
    for p in products:
        name = p.get("applicant_name", "")
        sf_id = p.get("applicant_id", "")
        if name and name not in seen:
            seen[name] = sf_id

    path = os.path.join(output_dir, "examples", "prequal_database_manufacturers.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        f.write('Alias: $orgType = http://terminology.hl7.org/CodeSystem/organization-type\n')
        for name, sf_id in sorted(seen.items()):
            instance_id = sf_id if sf_id else md5hash(name)
            f.write(f"\nInstance: Manufacturer{sanitize_code(instance_id)}\n")
            f.write("InstanceOf: IHE.mCSD.Organization\n")
            f.write("Usage: #definition\n")
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
    seen = {}
    for p in products:
        name = p.get("nra_name", "")
        sf_id = p.get("nra_id", "")
        if name and name not in seen:
            seen[name] = sf_id

    path = os.path.join(output_dir, "examples", "prequal_database_holders.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        f.write('Alias: $orgType = http://terminology.hl7.org/CodeSystem/organization-type\n')
        for name, sf_id in sorted(seen.items()):
            instance_id = sf_id if sf_id else md5hash(name)
            f.write(f"\nInstance: Holder{sanitize_code(instance_id)}\n")
            f.write("InstanceOf: IHE.mCSD.Organization\n")
            f.write("Usage: #definition\n")
            f.write(f'Title: "PreQual NRA/Holder: {fsh_escape(name)}"\n')
            f.write(f'Description: "National Regulatory Authority: {fsh_escape(name)}"\n')
            f.write("* active = true\n")
            f.write(f'* name = "{fsh_escape(name)}"\n')
            f.write("* type = $orgType#govt\n")
            if sf_id:
                f.write(f'* identifier.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* identifier.value = "{fsh_escape(sf_id)}"\n')

    logger.info("Generated %d holder instances", len(seen))




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




def generate_product_identifiers(products, output_dir):
    """Generate product identifiers CodeSystem and ValueSet FSH files.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    cs_path = os.path.join(output_dir, "codesystems", "prequal_database_products_identifiers.fsh")
    vs_path = os.path.join(output_dir, "valuesets", "prequal_database_products_identifiers.fsh")

    os.makedirs(os.path.dirname(cs_path), exist_ok=True)
    os.makedirs(os.path.dirname(vs_path), exist_ok=True)

    cs_entries = []

    for i, p in enumerate(products, 1):
        sf_id = p["sf_product_id"]
        sf_name = p["sf_product_name"]
        commercial_name = p["vaccine_commercial_name"]
        manufacturer = p["applicant_name"]
        holder = p["nra_name"]

        # Skip products with missing essential data (e.g. withdrawn products)
        if not commercial_name and not manufacturer and not holder:
            logger.info("Skipping product %s (%s): missing essential data", sf_id, sf_name)
            continue

        safe_sf_id = sanitize_code(sf_id) if sf_id else md5hash(str(i))
        cs_entries.append((safe_sf_id, sf_id, sf_name))

    # CodeSystem for product identifiers (additive — preserve existing codes)
    existing_ids = read_existing_codes(cs_path)
    new_id_codes = {}
    for entry_id, sf_id, sf_name in cs_entries:
        new_id_codes[entry_id] = f'* #{entry_id} "{fsh_escape(sf_name)} ({fsh_escape(sf_id)})"'

    merged_ids = dict(existing_ids)
    for code, line in new_id_codes.items():
        if code not in merged_ids:
            merged_ids[code] = line

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

    logger.info("Generated product identifiers CodeSystem/ValueSet with %d entries", len(cs_entries))


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
        default=100,
        help="Number of records per API page (default: 100)",
    )
    args = parser.parse_args()

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

        raw_products = download_all_pages(endpoint, username, password, args.page_size)

    if not raw_products:
        logger.error("No products found")
        sys.exit(1)

    # Extract normalized fields
    products = [extract_product_fields(p) for p in raw_products]

    # Generate all FSH outputs
    os.makedirs(args.output_dir, exist_ok=True)

    generate_metadata_codesystem(products, args.output_dir)
    generate_presentations_codesystem(products, args.output_dir)
    generate_vaccine_types_codesystem(products, args.output_dir)
    generate_manufacturers(products, args.output_dir)
    generate_holders(products, args.output_dir)
    generate_product_identifiers(products, args.output_dir)

    logger.info("All FSH files generated successfully in %s", args.output_dir)


if __name__ == "__main__":
    main()
