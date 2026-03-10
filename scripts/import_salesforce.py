#!/usr/bin/env python3
"""Import WHO Vaccine PreQual data from the backend API.

Downloads paginated results from the PreQual API and generates:
  - FSH logical model instances (PreQualProduct)
  - FHIR Product and ProductAuthorization instances
  - CodeSystem and ValueSet FSH files
  - ConceptMap from old CSV MD5-based IDs to authoritative vaccine product IDs

Environment variables:
  PREQUAL_API_ENDPOINT  - API endpoint URL
  PREQUAL_API_USERNAME  - API username
  PREQUAL_API_PASSWORD  - API password

Usage:
  python scripts/import_salesforce.py [--output-dir DIR] [--csv-file FILE]
"""

import argparse
import csv
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
    """Compute MD5 hash of text (matching presushi.sh behavior)."""
    return hashlib.md5(text.encode("utf-8")).hexdigest()


def fsh_escape(text):
    """Escape text for use in FSH string literals."""
    if text is None:
        return ""
    return text.replace("\\", "\\\\").replace('"', '\\"')


def fetch_api_page(endpoint, username, password, page=1, page_size=100):
    """Fetch a single page of results from the API.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        page: Page number (1-based).
        page_size: Number of results per page.

    Returns:
        Parsed JSON response.
    """
    separator = "&" if "?" in endpoint else "?"
    url = f"{endpoint}{separator}page={page}&pageSize={page_size}"
    logger.info("Fetching page %d from %s", page, url)

    req = urllib.request.Request(url)
    credentials = base64.b64encode(f"{username}:{password}".encode("utf-8")).decode("ascii")
    req.add_header("Authorization", f"Basic {credentials}")
    req.add_header("Accept", "application/json")

    with urllib.request.urlopen(req) as resp:
        return json.loads(resp.read().decode("utf-8"))


def download_all_pages(endpoint, username, password, page_size=100):
    """Download all pages of results from the API.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        page_size: Number of results per page.

    Returns:
        List of FinishedVaccineProduct records.
    """
    all_products = []
    page = 1
    while True:
        data = fetch_api_page(endpoint, username, password, page, page_size)
        products = data.get("FinishedVaccineProducts", [])
        if not products:
            break
        all_products.extend(products)
        logger.info("Downloaded %d products (page %d)", len(products), page)
        page += 1
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

    return {
        "sf_product_id": ident.get("Id", ""),
        "sf_product_name": ident.get("Name", ""),
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
    }


def build_csv_md5_key(fields):
    """Build the MD5 hash key that presushi.sh uses for CSV-based IDs.

    The CSV export uses these columns:
      1: Date of Prequalification (DD/MM/YYYY)
      2: Vaccine Type (abbreviated name)
      3: Commercial Name
      4: Presentation
      5: No. of doses
      6: Manufacturer
      7: Responsible NRA

    presushi.sh concatenates all columns (with quotes removed) and computes MD5.

    Args:
        fields: Normalized product fields dict.

    Returns:
        MD5 hash string matching presushi.sh output, or None if matching not possible.
    """
    date_str = fields.get("date_of_prequal", "")
    if date_str and re.match(r"\d{4}-\d{1,2}-\d{1,2}", date_str):
        parts = date_str.split("-")
        date_csv = f"{parts[2]}/{parts[1]}/{parts[0]}"
    else:
        date_csv = date_str

    vax = fields.get("vaccine_abbreviated_name", "") or ""
    commercial = fields.get("vaccine_commercial_name", "") or ""
    presentation = fields.get("presentation", "") or ""
    num_doses = fields.get("num_doses", "") or ""
    manufacturer = fields.get("applicant_name", "") or ""
    nra = fields.get("nra_name", "") or ""

    md5_src = f"{date_csv} {vax} {commercial} {presentation} {num_doses} {manufacturer} {nra}"
    return md5hash(md5_src)


def generate_presentations_codesystem(products, output_dir):
    """Generate presentations CodeSystem and ValueSet FSH files.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    presentations = sorted({p["presentation"] for p in products if p["presentation"]})

    cs_path = os.path.join(output_dir, "codesystems", "prequal_presentation.fsh")
    os.makedirs(os.path.dirname(cs_path), exist_ok=True)

    with open(cs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $presentation = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualPresentation\n')
        f.write("CodeSystem: PreQualPresentation\n")
        f.write('Title : "WHO PreQualificaiton Vaccine Presentations"\n')
        f.write('Description: "WHO PreQualificaiton Vaccine Presentations"\n\n')
        for pres in presentations:
            code = sanitize_alpha(pres)
            f.write(f'* #{code} "{fsh_escape(pres)}"\n')

    vs_path = os.path.join(output_dir, "valuesets", "prequal_presentation.fsh")
    os.makedirs(os.path.dirname(vs_path), exist_ok=True)

    with open(vs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $preQualPresentation = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualPresentation\n')
        f.write("ValueSet: PreQualPresentation\n")
        f.write('Title : "WHO PreQualificaiton Presentation "\n')
        f.write('Description: "WHO PreQualificaiton Presentation"\n\n\n')
        f.write("* include codes from system $preQualPresentation\n\n")

    logger.info("Generated presentations CodeSystem with %d codes", len(presentations))


def generate_vaccine_types_codesystem(products, output_dir):
    """Generate vaccine types CodeSystem and ValueSet FSH files.

    Args:
        products: List of normalized product field dicts.
        output_dir: Base output directory (e.g. input/fsh).
    """
    vaccine_types = sorted({
        p["vaccine_abbreviated_name"]
        for p in products
        if p.get("vaccine_abbreviated_name")
    })

    cs_path = os.path.join(output_dir, "codesystems", "preQualVaccineTypes.fsh")
    os.makedirs(os.path.dirname(cs_path), exist_ok=True)

    with open(cs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $vaccinetype = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType\n')
        f.write("CodeSystem: PreQualVaccineType\n")
        f.write('Title : "WHO PreQualificaiton Vaccine VaccineTypes"\n')
        f.write('Description: "WHO PreQualificaiton Vaccine VaccineTypes"\n\n')
        for vax in vaccine_types:
            code = sanitize_code(vax)
            f.write(f'* #{code} "{fsh_escape(vax)}"\n')

    vs_path = os.path.join(output_dir, "valuesets", "PreQualVacccineTypes.fsh")
    os.makedirs(os.path.dirname(vs_path), exist_ok=True)

    with open(vs_path, "w", encoding="utf-8") as f:
        f.write('Alias: $preQualVaccineType = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType\n')
        f.write("ValueSet: PreQualVaccineType\n")
        f.write('Title : "WHO PreQualificaiton VaccineType "\n')
        f.write('Description: "WHO PreQualificaiton VaccineType"\n\n\n')
        f.write("* include codes from system $preQualVaccineType\n\n")

    logger.info("Generated vaccine types CodeSystem with %d codes", len(vaccine_types))


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
            f.write("Usage: #example\n")
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
            f.write("Usage: #example\n")
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
    seen = {}
    for p in products:
        name = p.get("applicant_name", "")
        sf_id = p.get("applicant_id", "")
        if name and name not in seen:
            seen[name] = p

    path = os.path.join(output_dir, "examples", "prequal_database_manufacturer_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for name, p in sorted(seen.items()):
            sf_id = p.get("applicant_id", "")
            instance_id = sanitize_code(sf_id) if sf_id else md5hash(name)
            mfr_org_ref = f"Manufacturer{instance_id}"

            f.write(f"\nInstance: PreQualManufacturer{instance_id}\n")
            f.write("InstanceOf: PreQualManufacturer\n")
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
    seen = {}
    for p in products:
        name = p.get("nra_name", "")
        sf_id = p.get("nra_id", "")
        if name and name not in seen:
            seen[name] = p

    path = os.path.join(output_dir, "examples", "prequal_database_nra_lm.fsh")
    os.makedirs(os.path.dirname(path), exist_ok=True)

    with open(path, "w", encoding="utf-8") as f:
        for name, p in sorted(seen.items()):
            sf_id = p.get("nra_id", "")
            instance_id = sanitize_code(sf_id) if sf_id else md5hash(name)
            holder_org_ref = f"Holder{instance_id}"

            f.write(f"\nInstance: PreQualNRA{instance_id}\n")
            f.write("InstanceOf: PreQualNRA\n")
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

            f.write(f"\nInstance: PreQualVaccine{instance_id}\n")
            f.write("InstanceOf: PreQualVaccine\n")
            f.write(f'* vaccineId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* vaccineId.value = "{fsh_escape(vax_id)}"\n')
            full_name = p.get("vaccine_full_name")
            if full_name:
                f.write(f'* fullName = "{fsh_escape(full_name)}"\n')
            abbr_name = p.get("vaccine_abbreviated_name")
            if abbr_name:
                f.write(f'* abbreviatedName = "{fsh_escape(abbr_name)}"\n')

    logger.info("Generated %d vaccine LM instances", len(seen))


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

            safe_sf_id = sanitize_code(sf_id) if sf_id else md5hash(str(i))
            mfr_ref_id = sanitize_code(manufacturer_sf_id) if manufacturer_sf_id else md5hash(manufacturer)
            holder_ref_id = sanitize_code(holder_sf_id) if holder_sf_id else md5hash(holder)

            prod_id = f"{vax_type}Product{safe_sf_id}"

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
            f.write(f"Instance: PreQualDB{safe_sf_id}\n")
            f.write("InstanceOf: PreQualProduct\n")
            if date:
                f.write(f"* dateOfPrequal = {date}\n")
            if vax_type:
                f.write(f"* vaccineType.coding.code = #{vax_type}\n")
                f.write(f'* vaccineType.coding.display = "{fsh_escape(vax)}"\n')
            f.write(f'* commercialName = "{fsh_escape(commercial_name)}"\n')
            f.write(f'* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"\n')
            f.write(f"* presentation.coding.code = #{pres_code}\n")
            f.write(f'* presentation.coding.display = "{fsh_escape(presentation)}"\n')
            if num_doses:
                f.write(f"* numDoses = {num_doses}\n")
            f.write(f'* manufacturer.text = "{fsh_escape(manufacturer)}"\n')
            f.write(f'* responsibleNRA.text = "{fsh_escape(holder)}"\n')
            f.write(f'* productId.system = "https://extranet.who.int/prequal/api"\n')
            f.write(f'* productId.value = "{fsh_escape(sf_id)}"\n')
            f.write(f'* productName = "{fsh_escape(sf_name)}"\n')
            if p.get("vaccine_full_name"):
                f.write(f'* vaccineFullName = "{fsh_escape(p["vaccine_full_name"])}"\n')
            if p.get("vaccine_abbreviated_name"):
                f.write(f'* vaccineAbbreviatedName = "{fsh_escape(p["vaccine_abbreviated_name"])}"\n')
            f.write(f'* vaccineCommercialName = "{fsh_escape(commercial_name)}"\n')
            f.write(f"* manufacturerReference = Reference(Manufacturer{mfr_ref_id})\n")
            f.write(f"* responsibleNRAReference = Reference(Holder{holder_ref_id}) // {fsh_escape(holder)}\n")
            f.write(f"* productReference = Reference({prod_id})\n")

            # LM instance references
            f.write(f"* manufacturerLM = Reference(PreQualManufacturer{mfr_ref_id})\n")
            f.write(f"* nraLM = Reference(PreQualNRA{holder_ref_id})\n")
            vax_type_id = p.get("vaccine_type_id", "")
            if vax_type_id:
                vax_lm_ref_id = sanitize_code(vax_type_id)
                f.write(f"* vaccineLM = Reference(PreQualVaccine{vax_lm_ref_id})\n")
            f.write("\n")

            # Product Instance
            f.write(f"Instance: {prod_id}\n")
            f.write("InstanceOf: $Product\n")
            f.write("Usage: #example\n")
            f.write("* status = #active\n")
            f.write("* name\n")
            f.write("  * nameType = #official\n")
            f.write(f'  * value = "{fsh_escape(commercial_name)}"\n')
            f.write(f"* manufacturer = Reference(Manufacturer{mfr_ref_id}) // {fsh_escape(manufacturer)}\n")
            if num_doses:
                f.write(f"* doseQuantity =  {num_doses} 'doses'\n")
            if vax_type:
                f.write(f"* classification = #{vax_type}\n")
            f.write("* unitOfUse.coding.code = #doses\n")
            f.write(f"* dosageForm.coding.code = #{pres_code}\n")
            if sf_id:
                f.write(f'* identifier.system = "https://extranet.who.int/prequal/api"\n')
                f.write(f'* identifier.value = "{fsh_escape(sf_id)}"\n')
            f.write("\n")

            # ProductAuthorization Instance
            f.write(f"Instance: PreQual{safe_sf_id}\n")
            f.write("InstanceOf: $ProductAuthorization\n")
            f.write("Usage: #example\n")
            f.write("* status = #active\n")
            f.write("* type = #prequal\n")
            f.write('* jurisdiction.coding.display = "WHO"\n')
            f.write(f"* holder = Reference(Holder{holder_ref_id}) // {fsh_escape(holder)}\n")
            if date:
                f.write(f"* validityPeriod.start = {date}\n")
            f.write(f"* product  = Reference({prod_id})\n")
            f.write("\n")

            cs_entries.append((prod_id, sf_id, sf_name))

    # CodeSystem for product identifiers
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
        for prod_id, sf_id, sf_name in cs_entries:
            f.write(f'* #{prod_id} "{fsh_escape(sf_name)} ({fsh_escape(sf_id)})"\n')

    # ValueSet for product identifiers
    with open(vs_path, "w", encoding="utf-8") as f:
        f.write("\n")
        f.write("Alias: $PreQualProductIds = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds\n")
        f.write("ValueSet: PreQualProductIds\n")
        f.write('Title : "WHO PreQualificaiton Vaccine Product Ids"\n')
        f.write('Description: "WHO PreQualificaiton Vaccine Product Ids"\n')
        f.write("* include codes from system $PreQualProductIds\n")

    logger.info("Generated %d product instances", len(products))


def load_csv_products(csv_path):
    """Load products from CSV file for concept map generation.

    Args:
        csv_path: Path to prequalified_vaccines.csv.

    Returns:
        List of dicts with CSV column values.
    """
    csv_products = []
    with open(csv_path, "r", encoding="utf-8") as f:
        reader = csv.reader(f)
        header = next(reader)
        for row in reader:
            if len(row) < 7:
                continue
            csv_products.append({
                "date": row[0].strip(),
                "vaccine_type": row[1].strip(),
                "commercial_name": row[2].strip(),
                "presentation": row[3].strip(),
                "num_doses": row[4].strip(),
                "manufacturer": row[5].strip(),
                "responsible_nra": row[6].strip(),
            })
    return csv_products


def compute_csv_md5(csv_row):
    """Compute MD5 hash matching presushi.sh for a CSV row.

    presushi.sh concatenates the fields with spaces after stripping quotes,
    then pipes through md5sum.  The AWK code is:
        MD5SRC=gensub(/"/, "", "g", $1) VAX COMMERCIALNAME PRESENTATION $5 MANUFACTURER HOLDER

    This concatenates with space separator in AWK (fields separated by OFS which is comma,
    but the AWK string concatenation with space is used).

    Args:
        csv_row: Dict with CSV column values.

    Returns:
        MD5 hash string.
    """
    md5_src = " ".join([
        csv_row["date"],
        csv_row["vaccine_type"],
        csv_row["commercial_name"],
        csv_row["presentation"],
        csv_row["num_doses"],
        csv_row["manufacturer"],
        csv_row["responsible_nra"],
    ])
    return md5hash(md5_src)


def generate_concept_map(api_products, csv_path, output_dir):
    """Generate ConceptMap from old CSV MD5-based IDs to authoritative vaccine product IDs.

    This attempts to match API products to CSV rows by comparing key fields
    (vaccine type, commercial name, manufacturer, presentation, doses).

    Args:
        api_products: List of normalized product field dicts from API.
        csv_path: Path to the CSV file.
        output_dir: Base output directory (e.g. input/fsh).
    """
    if not os.path.exists(csv_path):
        logger.warning("CSV file not found at %s, skipping concept map generation", csv_path)
        return

    csv_rows = load_csv_products(csv_path)

    # Build lookup from CSV rows by a matching key
    csv_by_key = {}
    for row in csv_rows:
        md5_id = compute_csv_md5(row)
        key = (
            row["commercial_name"].lower().strip(),
            row["manufacturer"].lower().strip(),
            row["num_doses"].strip(),
        )
        csv_by_key.setdefault(key, []).append((md5_id, row))

    mappings = []
    for p in api_products:
        commercial = (p.get("vaccine_commercial_name", "") or "").lower().strip()
        manufacturer = (p.get("applicant_name", "") or "").lower().strip()
        doses = (p.get("num_doses", "") or "").strip()

        key = (commercial, manufacturer, doses)
        if key in csv_by_key:
            for csv_md5, csv_row in csv_by_key[key]:
                sf_id = p.get("sf_product_id", "")
                sf_name = p.get("sf_product_name", "")
                if sf_id:
                    mappings.append((csv_md5, sf_id, sf_name, csv_row))

    cm_path = os.path.join(output_dir, "concept_maps", "prequal_csv_to_api.fsh")
    os.makedirs(os.path.dirname(cm_path), exist_ok=True)

    with open(cm_path, "w", encoding="utf-8") as f:
        f.write('Instance: PreQualCSVtoAPIConceptMap\n')
        f.write("InstanceOf: ConceptMap\n")
        f.write("Usage: #definition\n")
        f.write('* name = "PreQualCSVtoAPIConceptMap"\n')
        f.write('* title = "PreQual CSV to Vaccine Product ID Concept Map"\n')
        f.write('* description = "Maps old CSV export MD5-based identifiers to authoritative vaccine product IDs"\n')
        f.write("* status = #draft\n")
        f.write("* experimental = true\n")
        f.write('* sourceUri = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds"\n')
        f.write('* targetUri = "https://extranet.who.int/prequal/api"\n')
        f.write("* group\n")
        f.write('  * source = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds"\n')
        f.write('  * target = "https://extranet.who.int/prequal/api"\n')
        for csv_md5, sf_id, sf_name, csv_row in mappings:
            display = f'{csv_row["commercial_name"]} - {csv_row["manufacturer"]}'
            f.write(f'  * element\n')
            f.write(f'    * code = #{csv_md5}\n')
            f.write(f'    * display = "{fsh_escape(display)}"\n')
            f.write(f'    * target\n')
            f.write(f'      * code = #{sanitize_code(sf_id)}\n')
            f.write(f'      * display = "{fsh_escape(sf_name)}"\n')
            f.write(f'      * equivalence = #equivalent\n')

    logger.info("Generated concept map with %d mappings", len(mappings))


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
        "--csv-file",
        default="data/prequalified_vaccines.csv",
        help="Path to CSV export for concept map generation (default: data/prequalified_vaccines.csv)",
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

    generate_presentations_codesystem(products, args.output_dir)
    generate_vaccine_types_codesystem(products, args.output_dir)
    generate_manufacturers(products, args.output_dir)
    generate_holders(products, args.output_dir)
    generate_manufacturer_lm_instances(products, args.output_dir)
    generate_nra_lm_instances(products, args.output_dir)
    generate_vaccine_lm_instances(products, args.output_dir)
    generate_products_and_authorizations(products, args.output_dir)

    # Generate concept map from old CSV IDs to authoritative vaccine product IDs
    generate_concept_map(products, args.csv_file, args.output_dir)

    logger.info("All FSH files generated successfully in %s", args.output_dir)


if __name__ == "__main__":
    main()
