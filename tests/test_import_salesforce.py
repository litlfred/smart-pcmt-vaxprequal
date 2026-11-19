#!/usr/bin/env python3
"""Tests for import_salesforce.py"""

import json
import os
import re
import sys
import tempfile
import unittest
from unittest import mock

# Add scripts directory to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "scripts"))

from import_salesforce import (
    DEFAULT_TIMESTAMP,
    PreQualAPIError,
    backfill_names_from_ids,
    build_api_url,
    check_response_status,
    download_all_pages,
    download_offset_pages,
    download_timestamp_pages,
    extract_product_fields,
    parse_response,
    product_display,
    fsh_escape,
    generate_bulk_supplier_lm_instances,
    generate_document_lm_instances,
    generate_holders,
    generate_ingredient_lm_instances,
    generate_manufacturer_lm_instances,
    generate_manufacturers,
    generate_metadata_codesystem,
    generate_nra_lm_instances,
    generate_packaging_lm_instances,
    generate_presentations_codesystem,
    generate_product_vaccine_type_conceptmap,
    generate_products_and_authorizations,
    generate_site_lm_instances,
    generate_vaccine_lm_instances,
    generate_vaccine_types_codesystem,
    organizations_by_id,
    load_json_file,
    md5hash,
    merge_products,
    read_existing_codes,
    sanitize_alpha,
    sanitize_code,
    vaccine_type_coding,
)


SAMPLE_PRODUCT = {
    "ProductDetails": {
        "Identification": {"Id": "a3K3X000005atRtUAI", "Name": "FVP-P-447"},
        "Type": "Finished Vaccine Product",
        "DateOfPreQualifiedAcceptance": "2023-12-19",
        "AssessmentProcedure": "Prequalification - Standard",
        "ApplicantOrganization": {
            "Identification": {
                "Id": "0013X00003cPkzfQAC",
                "Name": "Serum Institute of India",
            },
            "Address": {
                "AddressLine1": "212/2 Off Soli Poonawala Road",
                "City": "Pune",
                "State": "Maharashtra",
                "Country": "India",
                "PostalCode": "411 028",
                "ISOCountryCode": "IND",
                "Region": "SEARO",
            },
            "Contact": [{"Website": "http://www.seruminstitute.com/"}],
        },
        "BulkSupplier": {"Id": None, "Name": None},
        "ConsumptionDetails": {"Diluent": None},
        "DosageDetails": {"NoOfDosagesPerPrimaryContainer": "2"},
        "StorageDetails": {"ShelfLife": "24 months", "Temperature": "2 - 8\u00b0C"},
        "PharmaceuticalForm": "Liquid: Ready to use",
        "Presentation": "Vial",
        "PresentationOther": None,
        "NRADetails": {
            "Identification": {
                "Id": "0013X0000498p4fQAA",
                "Name": "Central Drugs Standard Control Organization (CDSCO)",
            },
            "Address": {"AddressLine1": None, "Country": "India"},
            "Contact": [{"Website": "www.cdsco.nic.in"}],
        },
        "VaccineDetails": {
            "Identification": {"Id": "a3S3X000003cSpnUAE"},
            "VaccineName": {
                "FullName": "Recombinant malaria vaccine",
                "AbbreviatedName": "Malaria",
                "CommercialName": "CYVAC",
            },
            "RouteOfAdministrationVx": "Intramuscular",
            "VialMonitor": "Type 14",
            "MultidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
        },
        "Status": "Prequalified",
        "PreservativeDetails": {"Id": "None"},
        "PreservativeConcentartionDetails": {"Id": None},
        "LastPublishingDate": "2024-09-10T14:16:34.000Z",
        "PublishingRemarks": None,
    },
    "ProductPackaging": [
        {
            "Id": "a3HNN0000007wYl2AI",
            "ComponentPacked": "Active (Vaccine)",
            "ShippingContainer": {
                "Configuration": "Shipping box",
                "Volume": "71.5 x 60.5 x 63.5",
                "TotalDoses": "3600",
                "TotalContainers": "1800",
            },
            "FVPPackagingType": "Shipping Container",
        }
    ],
    "DocumentDetails": [
        {
            "Identification": {
                "Id": "069NN000005lDn4YAE",
                "Name": "-FVP-P-446-447_R21Malaria_SIIPL_PI-2023_2",
            },
            "Type": "Product Insert",
            "VersionId": "068NN0000061zZCYAY",
            "FileExtension": "pdf",
            "FileType": "PDF",
        }
    ],
}

# Product with bulk supplier, sites, and ingredients
SAMPLE_PRODUCT_WITH_EXTRAS = {
    "ProductDetails": {
        "Identification": {"Id": "a3K3X000006MihtUAC", "Name": "FVP-P-63"},
        "Type": "Finished Vaccine Product",
        "DateOfPreQualifiedAcceptance": "2008-12-01",
        "AssessmentProcedure": "Prequalification - Standard",
        "ApplicantOrganization": {
            "Identification": {
                "Id": "0013X0000498p2wQAA",
                "Name": "Haffkine Bio Pharmaceutical Corporation Ltd",
            },
            "Address": {"City": "Mumbai", "Country": "India"},
            "Contact": [],
        },
        "BulkSupplier": {"Id": "0013X0000498p3IQAQ", "Name": "PT Bio Farma (Persero)"},
        "ConsumptionDetails": {"Diluent": None},
        "DosageDetails": {"NoOfDosagesPerPrimaryContainer": "20"},
        "StorageDetails": {"ShelfLife": "24 months", "Temperature": "2 - 8\u00b0C"},
        "PharmaceuticalForm": "Liquid: Ready to use",
        "Presentation": "Vial",
        "NRADetails": {
            "Identification": {
                "Id": "0013X0000498p4bQAA",
                "Name": "Central Drugs Standard Control Organization (CDSCO)",
            },
            "Address": {"Country": "India"},
            "Contact": [],
        },
        "VaccineDetails": {
            "Identification": {"Id": "a3S3X000003cSogUAE"},
            "VaccineName": {
                "FullName": "BCG Vaccine",
                "AbbreviatedName": "BCG",
                "CommercialName": "BCG Vaccine",
            },
            "RouteOfAdministrationVx": "Intradermal",
        },
        "Status": "Prequalified",
        "PreservativeDetails": {"Id": "None"},
        "PreservativeConcentartionDetails": {"Id": None},
    },
    "SiteDetails": [
        {
            "Organization": {
                "Identification": {
                    "Id": "0013X0000498p2wQAA",
                    "Name": "Haffkine Bio Pharmaceutical Corporation Ltd",
                },
                "Address": {
                    "AddressLine1": "Acharya Donde Marg, Parel",
                    "City": "Mumbai",
                    "Country": "India",
                },
            },
            "Status": "Accepted",
            "SiteActivity": "FVP Manufacture",
        }
    ],
    "ProductIngredients": [
        {
            "Identification": {"Id": None},
            "Type": "Vx FVP",
            "Unit": "%",
            "Product": "a3K3X000006MihtUAC",
            "ProductComponentType": "Diluent",
            "Function": None,
        }
    ],
}


class TestSanitizers(unittest.TestCase):
    def test_sanitize_code(self):
        self.assertEqual(sanitize_code("Hello World!"), "HelloWorld")
        self.assertEqual(sanitize_code("BCG (Danish)"), "BCGDanish")

    def test_sanitize_alpha(self):
        self.assertEqual(sanitize_alpha("Two vial set"), "Twovialset")
        self.assertEqual(sanitize_alpha("Vial"), "Vial")

    def test_md5hash(self):
        result = md5hash("test")
        self.assertEqual(len(result), 32)
        self.assertEqual(result, "098f6bcd4621d373cade4e832627b4f6")

    def test_fsh_escape(self):
        self.assertEqual(fsh_escape(None), "")
        self.assertEqual(fsh_escape('Hello "World"'), 'Hello \\"World\\"')
        self.assertEqual(fsh_escape("back\\slash"), "back\\\\slash")


class TestExtractProductFields(unittest.TestCase):
    def test_basic_extraction(self):
        fields = extract_product_fields(SAMPLE_PRODUCT)
        self.assertEqual(fields["sf_product_id"], "a3K3X000005atRtUAI")
        self.assertEqual(fields["sf_product_name"], "FVP-P-447")
        self.assertEqual(fields["product_type"], "Finished Vaccine Product")
        self.assertEqual(fields["date_of_prequal"], "2023-12-19")
        self.assertEqual(fields["presentation"], "Vial")
        self.assertEqual(fields["num_doses"], "2")
        self.assertEqual(fields["applicant_name"], "Serum Institute of India")
        self.assertEqual(
            fields["nra_name"],
            "Central Drugs Standard Control Organization (CDSCO)",
        )
        self.assertEqual(fields["vaccine_commercial_name"], "CYVAC")
        self.assertEqual(fields["vaccine_abbreviated_name"], "Malaria")
        self.assertEqual(fields["vaccine_full_name"], "Recombinant malaria vaccine")
        self.assertEqual(fields["status"], "Prequalified")
        self.assertEqual(fields["pharmaceutical_form"], "Liquid: Ready to use")
        self.assertEqual(fields["assessment_procedure"], "Prequalification - Standard")
        self.assertEqual(fields["route_of_administration"], "Intramuscular")
        self.assertEqual(fields["vial_monitor"], "Type 14")
        self.assertIn("WHO recommends", fields["multidose_vial_policy"])
        # Referenced object fields
        self.assertEqual(fields["applicant_website"], "http://www.seruminstitute.com/")
        self.assertEqual(fields["applicant_city"], "Pune")
        self.assertEqual(fields["applicant_state"], "Maharashtra")
        self.assertEqual(fields["nra_website"], "www.cdsco.nic.in")
        self.assertEqual(fields["nra_country"], "India")
        self.assertEqual(fields["vaccine_type_id"], "a3S3X000003cSpnUAE")
        # Preservative fields (None -> empty string)
        self.assertEqual(fields["preservative"], "")
        self.assertEqual(fields["preservative_concentration"], "")
        # Bulk supplier fields (None -> empty string)
        self.assertEqual(fields["bulk_supplier_id"], "")
        self.assertEqual(fields["bulk_supplier_name"], "")
        # Packaging/document lists
        self.assertEqual(len(fields["packaging"]), 1)
        self.assertEqual(len(fields["documents"]), 1)

    def test_product_with_extras(self):
        fields = extract_product_fields(SAMPLE_PRODUCT_WITH_EXTRAS)
        self.assertEqual(fields["bulk_supplier_id"], "0013X0000498p3IQAQ")
        self.assertEqual(fields["bulk_supplier_name"], "PT Bio Farma (Persero)")
        self.assertEqual(len(fields["sites"]), 1)
        self.assertEqual(len(fields["ingredients"]), 1)

    def test_empty_product(self):
        fields = extract_product_fields({})
        self.assertEqual(fields["sf_product_id"], "")
        self.assertEqual(fields["presentation"], "")
        self.assertEqual(fields["product_type"], "")


class TestGenerateFSH(unittest.TestCase):
    def setUp(self):
        self.tmpdir = tempfile.mkdtemp()
        self.products = [extract_product_fields(SAMPLE_PRODUCT)]

    def test_generate_presentations(self):
        generate_presentations_codesystem(self.products, self.tmpdir)
        cs_path = os.path.join(self.tmpdir, "codesystems", "prequal_presentation.fsh")
        self.assertTrue(os.path.exists(cs_path))
        content = open(cs_path).read()
        self.assertIn("CodeSystem: PreQualPresentation", content)
        self.assertIn('#Vial "Vial"', content)

    def test_generate_vaccine_types(self):
        generate_vaccine_types_codesystem(self.products, self.tmpdir)
        cs_path = os.path.join(
            self.tmpdir, "codesystems", "preQualVaccineTypes.fsh"
        )
        self.assertTrue(os.path.exists(cs_path))
        content = open(cs_path).read()
        self.assertIn("CodeSystem: PreQualVaccineType", content)
        # The code is the abbreviated name; the display is the full name, so
        # the CodeSystem says which vaccine each code is rather than
        # repeating the abbreviation back.
        self.assertIn('#Malaria "Recombinant malaria vaccine"', content)

    def test_generate_manufacturers(self):
        generate_manufacturers(self.products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_manufacturers.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("Serum Institute of India", content)
        self.assertIn("IHE.mCSD.Organization", content)
        self.assertIn("0013X00003cPkzfQAC", content)

    def test_generate_holders(self):
        generate_holders(self.products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_holders.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("Central Drugs Standard Control Organization (CDSCO)", content)
        self.assertIn("$orgType#govt", content)

    def test_generate_products_and_authorizations(self):
        generate_products_and_authorizations(self.products, self.tmpdir)
        examples_path = os.path.join(
            self.tmpdir, "examples", "prequal_database_products.fsh"
        )
        cs_path = os.path.join(
            self.tmpdir,
            "codesystems",
            "prequal_database_products_identifiers.fsh",
        )
        vs_path = os.path.join(
            self.tmpdir,
            "valuesets",
            "prequal_database_products_identifiers.fsh",
        )

        self.assertTrue(os.path.exists(examples_path))
        self.assertTrue(os.path.exists(cs_path))
        self.assertTrue(os.path.exists(vs_path))

        content = open(examples_path).read()
        self.assertIn("InstanceOf: FinishedVaccineProducts", content)
        self.assertIn("a3K3X000005atRtUAI", content)
        self.assertIn("CYVAC", content)

        # Verify coded metadata fields use code syntax (not string)
        self.assertIn("productType = #FinishedVaccineProduct", content)
        self.assertIn("status = #Prequalified", content)
        self.assertIn("assessmentProcedure = #PrequalificationStandard", content)
        self.assertIn("pharmaceuticalForm = #LiquidReadytouse", content)
        self.assertIn("routeOfAdministration = #Intramuscular", content)

        # Verify string fields still use string syntax
        self.assertIn('applicantName = "Serum Institute of India"', content)
        self.assertIn('nraName = "Central Drugs Standard Control Organization (CDSCO)"', content)

        # Verify new fields are written
        self.assertIn('vialMonitor = "Type 14"', content)
        self.assertIn('multidoseVialPolicy = "WHO recommends', content)
        self.assertIn('shelfLife = "24 months"', content)
        self.assertIn('nraCountry = "India"', content)
        self.assertIn("lastPublishingDate = 2024-09-10", content)
        self.assertIn('vaccineTypeId.value = "a3S3X000003cSpnUAE"', content)
        self.assertIn('applicantId.value = "0013X00003cPkzfQAC"', content)
        self.assertIn('nraId.value = "0013X0000498p4fQAA"', content)

        # The vaccine type is coded, so an instance states which vaccine it
        # is without a reader resolving the Salesforce record id.
        self.assertIn(
            '* vaccineType.coding.system = '
            '"http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType"',
            content,
        )
        self.assertIn("* vaccineType.coding.code = #Malaria", content)
        self.assertIn(
            '* vaccineType.coding.display = "Recombinant malaria vaccine"', content
        )

        # Verify old CSV-model fields are NOT present
        self.assertNotIn("commercialName", content)
        self.assertNotIn("manufacturer.text", content)
        self.assertNotIn("responsibleNRA.text", content)

        # Verify $Product and $ProductAuthorization instances are NOT generated
        self.assertNotIn("InstanceOf: $Product", content)
        self.assertNotIn("InstanceOf: $ProductAuthorization", content)

        # Verify LM linkages
        self.assertIn("manufacturerLM = Reference(PreQualManufacturer", content)
        self.assertIn("nraLM = Reference(PreQualNRA", content)
        self.assertIn("vaccineLM = Reference(PreQualVaccine", content)

        # Verify packaging and document LM linkages
        self.assertIn("packagingLM = Reference(PreQualPackaging", content)
        self.assertIn("documentLM = Reference(PreQualDocument", content)

        cs_content = open(cs_path).read()
        self.assertIn("CodeSystem: PreQualProductIds", cs_content)

        vs_content = open(vs_path).read()
        self.assertIn("ValueSet: PreQualProductIds", vs_content)


class TestGenerateMetadataCodeSystem(unittest.TestCase):
    def test_generate_metadata_codesystem(self):
        tmpdir = tempfile.mkdtemp()
        products = [extract_product_fields(SAMPLE_PRODUCT)]
        generate_metadata_codesystem(products, tmpdir)

        cs_path = os.path.join(tmpdir, "codesystems", "prequal_database_metadata.fsh")
        self.assertTrue(os.path.exists(cs_path))
        content = open(cs_path).read()
        self.assertIn("CodeSystem: PreQualDatabaseMetadata", content)
        self.assertIn('#FinishedVaccineProduct "Finished Vaccine Product"', content)
        self.assertIn('#PrequalificationStandard "Prequalification - Standard"', content)
        self.assertIn('#Prequalified "Prequalified"', content)
        self.assertIn('#LiquidReadytouse "Liquid: Ready to use"', content)
        self.assertIn('#Intramuscular "Intramuscular"', content)
        self.assertIn('#ShippingContainer "Shipping Container"', content)
        self.assertIn('#ActiveVaccine "Active (Vaccine)"', content)
        self.assertIn('#ProductInsert "Product Insert"', content)

        vs_path = os.path.join(tmpdir, "valuesets", "prequal_database_metadata.fsh")
        self.assertTrue(os.path.exists(vs_path))
        vs_content = open(vs_path).read()
        self.assertIn("ValueSet: PreQualDatabaseMetadata", vs_content)


class TestGenerateLMInstances(unittest.TestCase):
    def setUp(self):
        self.tmpdir = tempfile.mkdtemp()
        self.products = [extract_product_fields(SAMPLE_PRODUCT)]

    def test_generate_manufacturer_lm_instances(self):
        generate_manufacturer_lm_instances(self.products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_manufacturer_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualManufacturer", content)
        self.assertIn("Serum Institute of India", content)
        self.assertIn("0013X00003cPkzfQAC", content)
        self.assertIn('city = "Pune"', content)
        self.assertIn('state = "Maharashtra"', content)
        self.assertIn('country = "India"', content)
        self.assertIn('website = "http://www.seruminstitute.com/"', content)
        self.assertIn("organizationReference = Reference(Manufacturer", content)

    def test_generate_nra_lm_instances(self):
        generate_nra_lm_instances(self.products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_nra_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualNRA", content)
        self.assertIn("Central Drugs Standard Control Organization (CDSCO)", content)
        self.assertIn("0013X0000498p4fQAA", content)
        self.assertIn('country = "India"', content)
        self.assertIn('website = "www.cdsco.nic.in"', content)
        self.assertIn("organizationReference = Reference(Holder", content)

    def test_generate_vaccine_lm_instances(self):
        generate_vaccine_lm_instances(self.products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_vaccine_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualVaccine", content)
        self.assertIn("a3S3X000003cSpnUAE", content)
        self.assertIn('fullName = "Recombinant malaria vaccine"', content)
        self.assertIn('abbreviatedName = "Malaria"', content)

    def test_generate_packaging_lm_instances(self):
        generate_packaging_lm_instances(self.products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_packaging_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualProductPackaging", content)
        self.assertIn("a3HNN0000007wYl2AI", content)
        self.assertIn("packagingType = #ShippingContainer", content)
        self.assertIn("componentPacked = #ActiveVaccine", content)

    def test_generate_document_lm_instances(self):
        generate_document_lm_instances(self.products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_document_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualDocumentDetail", content)
        self.assertIn("069NN000005lDn4YAE", content)
        self.assertIn("documentType = #ProductInsert", content)
        self.assertIn('fileExtension = "pdf"', content)

    def test_generate_bulk_supplier_lm_instances(self):
        products = [extract_product_fields(SAMPLE_PRODUCT_WITH_EXTRAS)]
        generate_bulk_supplier_lm_instances(products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_bulk_supplier_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualBulkSupplier", content)
        self.assertIn("0013X0000498p3IQAQ", content)
        self.assertIn('name = "PT Bio Farma (Persero)"', content)

    def test_generate_site_lm_instances(self):
        products = [extract_product_fields(SAMPLE_PRODUCT_WITH_EXTRAS)]
        generate_site_lm_instances(products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_site_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualSiteDetail", content)
        self.assertIn("0013X0000498p2wQAA", content)
        self.assertIn('siteOrganizationName = "Haffkine Bio Pharmaceutical Corporation Ltd"', content)
        self.assertIn("siteStatus = #Accepted", content)
        self.assertIn("siteActivity = #FVPManufacture", content)

    def test_generate_ingredient_lm_instances(self):
        products = [extract_product_fields(SAMPLE_PRODUCT_WITH_EXTRAS)]
        generate_ingredient_lm_instances(products, self.tmpdir)
        path = os.path.join(
            self.tmpdir, "examples", "prequal_database_ingredient_lm.fsh"
        )
        self.assertTrue(os.path.exists(path))
        content = open(path).read()
        self.assertIn("InstanceOf: PreQualProductIngredient", content)
        self.assertIn("ingredientType = #VxFVP", content)
        self.assertIn("productComponentType = #Diluent", content)


class TestLoadJsonFile(unittest.TestCase):
    def test_load_json(self):
        test_data = {
            "FinishedVaccineProducts": [SAMPLE_PRODUCT, SAMPLE_PRODUCT]
        }
        with tempfile.NamedTemporaryFile(
            mode="w", suffix=".json", delete=False
        ) as f:
            json.dump(test_data, f)
            tmp_path = f.name

        try:
            products = load_json_file(tmp_path)
            self.assertEqual(len(products), 2)
        finally:
            os.unlink(tmp_path)


class TestDepublishedProducts(unittest.TestCase):
    """A de-published product keeps its identity and status in the IG.

    The source database clears a product's detail when it leaves
    prequalified status, so these records carry only productId, productName,
    status and a publishing date.  They are the authoritative record of a
    past prequalification and are published, not dropped.
    """

    def build(self):
        depublished = extract_product_fields({
            "ProductDetails": {
                "Identification": {"Id": "a3K3X000006MihzUAC", "Name": "FVP-P-27"},
                "Status": "Withdrawn: Was Prequalified",
                "LastPublishingDate": "2023-10-30T17:12:26.000Z",
            }
        })
        normal = extract_product_fields(SAMPLE_PRODUCT)
        tmpdir = tempfile.mkdtemp()
        generate_products_and_authorizations([depublished, normal], tmpdir)
        path = os.path.join(tmpdir, "examples", "prequal_database_products.fsh")
        return open(path).read()

    def test_depublished_product_is_emitted(self):
        content = self.build()
        self.assertIn("Instance: FinishedProducta3K3X000006MihzUAC", content)
        self.assertIn("a3K3X000005atRtUAI", content)

    def test_depublished_product_carries_the_mandatory_fields(self):
        content = self.build()
        stub = content.split("Instance: FinishedProducta3K3X000006MihzUAC")[1]
        stub = stub.split("// Source Record Row")[0]
        self.assertIn('* productId.value = "a3K3X000006MihzUAC"', stub)
        self.assertIn('* productName = "FVP-P-27"', stub)
        self.assertIn("* status = #WithdrawnWasPrequalified", stub)

    def test_depublished_product_omits_absent_fields_and_references(self):
        content = self.build()
        stub = content.split("Instance: FinishedProducta3K3X000006MihzUAC")[1]
        stub = stub.split("// Source Record Row")[0]
        # Writing these would either assert data WHO did not supply or point
        # at Organization instances that are never generated.
        for element in (
            "* applicantName",
            "* nraName",
            "* vaccineCommercialName",
            "* manufacturerReference",
            "* responsibleNRAReference",
            "* presentation.coding",
            "* productType",
            "* dateOfPrequal",
        ):
            self.assertNotIn(element, stub)
        self.assertNotIn("None", stub)

    def test_status_is_never_invented(self):
        # A record with no status must not be labelled Prequalified.
        product = extract_product_fields({
            "ProductDetails": {"Identification": {"Id": "noStatus", "Name": "FVP-P-0"}}
        })
        tmpdir = tempfile.mkdtemp()
        generate_products_and_authorizations([product], tmpdir)
        path = os.path.join(tmpdir, "examples", "prequal_database_products.fsh")
        content = open(path).read()
        self.assertNotIn("#Prequalified", content)
        self.assertNotIn("* status =", content)


class TestProductDisplay(unittest.TestCase):
    """No descriptive field identifies a product uniquely; the record name does."""

    def test_description_leads_and_record_name_disambiguates(self):
        display = product_display(
            {
                "sf_product_name": "FVP-P-447",
                "vaccine_commercial_name": "CYVAC",
                "vaccine_abbreviated_name": "Malaria",
                "applicant_name": "Serum Institute of India",
                "presentation": "Vial",
                "num_doses": "2",
            }
        )
        self.assertEqual(
            display,
            "CYVAC (Malaria), Serum Institute of India, Vial, 2 doses [FVP-P-447]",
        )

    def test_single_dose_is_not_pluralised(self):
        display = product_display(
            {"sf_product_name": "FVP-P-1", "presentation": "Vial", "num_doses": "1"}
        )
        self.assertIn("Vial, 1 dose [", display)
        self.assertNotIn("1 doses", display)

    def test_depublished_product_falls_back_to_status(self):
        display = product_display(
            {"sf_product_name": "FVP-P-27", "status": "Withdrawn: Was Prequalified"}
        )
        self.assertEqual(display, "Withdrawn: Was Prequalified [FVP-P-27]")

    def test_record_name_is_always_present(self):
        # It is the only value that makes the display unique.
        for product in (
            {"sf_product_name": "FVP-P-9"},
            {"sf_product_name": "FVP-P-9", "vaccine_commercial_name": "X"},
            {"sf_product_name": "FVP-P-9", "status": "Prequalified"},
        ):
            self.assertIn("FVP-P-9", product_display(product))

    def test_falls_back_to_the_salesforce_id_without_a_record_name(self):
        self.assertIn("a3K", product_display({"sf_product_id": "a3K123"}))

    def test_partial_data_omits_missing_parts_without_stray_separators(self):
        display = product_display(
            {"sf_product_name": "FVP-P-5", "vaccine_commercial_name": "Solo"}
        )
        self.assertEqual(display, "Solo [FVP-P-5]")

    def test_two_products_differing_only_by_doses_are_distinguishable(self):
        base = {
            "vaccine_commercial_name": "Euvax B",
            "vaccine_abbreviated_name": "HepB",
            "applicant_name": "LG Chem Ltd (LGC)",
            "presentation": "Vial",
        }
        one = product_display({**base, "sf_product_name": "FVP-P-68", "num_doses": "1"})
        ten = product_display({**base, "sf_product_name": "FVP-P-71", "num_doses": "10"})
        self.assertNotEqual(one, ten)
        self.assertIn("1 dose", one)
        self.assertIn("10 doses", ten)


class TestProductVaccineTypeConceptMap(unittest.TestCase):
    """Every product is listed; those with no vaccine type are marked noMap."""

    def build(self, products):
        tmpdir = tempfile.mkdtemp()
        generate_product_vaccine_type_conceptmap(products, tmpdir)
        path = os.path.join(
            tmpdir, "conceptmaps", "prequal_product_to_vaccine_type.fsh"
        )
        return open(path).read()

    def test_maps_a_product_to_its_vaccine_type(self):
        content = self.build([extract_product_fields(SAMPLE_PRODUCT)])
        self.assertIn("* group[0].element[0].target[0].code = #Malaria", content)
        self.assertIn(
            "* group[0].element[0].target[0].relationship = "
            "#source-is-narrower-than-target",
            content,
        )

    def test_product_without_a_vaccine_type_is_marked_nomap(self):
        depublished = extract_product_fields(
            {
                "ProductDetails": {
                    "Identification": {"Id": "dep1", "Name": "FVP-P-27"},
                    "Status": "Withdrawn: Was Prequalified",
                }
            }
        )
        content = self.build([depublished])
        self.assertIn("* group[0].element[0].noMap = true", content)
        self.assertNotIn("target[0].code", content)

    def test_every_product_appears_exactly_once(self):
        a = extract_product_fields(SAMPLE_PRODUCT)
        b = dict(a)
        b["sf_product_id"] = "second"
        content = self.build([a, b, dict(a)])
        codes = re.findall(r"^\* group\[0\]\.element\[\d+\]\.code = #(\S+)$", content, re.M)
        self.assertEqual(len(codes), 2, "a repeated product must not be listed twice")
        self.assertEqual(len(codes), len(set(codes)))

    def test_scopes_and_groups_name_the_right_systems(self):
        content = self.build([extract_product_fields(SAMPLE_PRODUCT)])
        self.assertIn("/CodeSystem/PreQualProductIds", content)
        self.assertIn("/CodeSystem/PreQualVaccineType", content)
        self.assertIn("/ValueSet/PreQualProductIds", content)
        self.assertIn("/ValueSet/PreQualVaccineType", content)

    def test_elements_are_sorted_so_syncs_diff_cleanly(self):
        rows = []
        for pid in ("zzz", "aaa", "mmm"):
            p = dict(extract_product_fields(SAMPLE_PRODUCT))
            p["sf_product_id"] = pid
            rows.append(p)
        content = self.build(rows)
        codes = re.findall(r"^\* group\[0\]\.element\[\d+\]\.code = #(\S+)$", content, re.M)
        self.assertEqual(codes, sorted(codes))


class TestVaccineTypeCoding(unittest.TestCase):
    """The code is the abbreviation, the display is the full name."""

    def test_abbreviation_is_the_code_and_full_name_the_display(self):
        code, display = vaccine_type_coding(
            {
                "vaccine_abbreviated_name": "TDV",
                "vaccine_full_name": "Dengue tetravalent vaccine (live, attenuated)",
            }
        )
        self.assertEqual(code, "TDV")
        self.assertEqual(display, "Dengue tetravalent vaccine (live, attenuated)")

    def test_full_name_is_used_for_both_when_abbreviation_is_missing(self):
        code, display = vaccine_type_coding(
            {"vaccine_abbreviated_name": "", "vaccine_full_name": "Recombinant malaria vaccine"}
        )
        self.assertEqual(code, sanitize_code("Recombinant malaria vaccine"))
        self.assertEqual(display, "Recombinant malaria vaccine")

    def test_abbreviation_is_used_for_both_when_full_name_is_missing(self):
        code, display = vaccine_type_coding(
            {"vaccine_abbreviated_name": "BCG", "vaccine_full_name": ""}
        )
        self.assertEqual((code, display), ("BCG", "BCG"))

    def test_no_names_yields_no_coding(self):
        self.assertEqual(
            vaccine_type_coding({"vaccine_abbreviated_name": "", "vaccine_full_name": ""}),
            ("", ""),
        )

    def test_nulls_do_not_raise(self):
        # extract_product_fields normalises these, but the helper is also
        # reachable with raw dicts.
        self.assertEqual(
            vaccine_type_coding({"vaccine_abbreviated_name": None, "vaccine_full_name": None}),
            ("", ""),
        )

    def test_code_is_safe_for_fsh(self):
        code, _ = vaccine_type_coding(
            {"vaccine_abbreviated_name": "cholera: inactivated oral", "vaccine_full_name": "Cholera"}
        )
        self.assertNotIn(":", code)
        self.assertNotIn(" ", code)

    def test_depublished_product_gets_no_vaccine_type(self):
        tmpdir = tempfile.mkdtemp()
        for sub in ("codesystems", "valuesets", "examples"):
            os.makedirs(os.path.join(tmpdir, sub), exist_ok=True)
        product = extract_product_fields(
            {
                "ProductDetails": {
                    "Identification": {"Id": "dep1", "Name": "FVP-P-1"},
                    "Status": "Withdrawn: Was Prequalified",
                }
            }
        )
        generate_products_and_authorizations([product], tmpdir)
        content = open(
            os.path.join(tmpdir, "examples", "prequal_database_products.fsh")
        ).read()
        self.assertNotIn("vaccineType.coding", content)


class TestOrganizationsById(unittest.TestCase):
    """Instances are named from the id, so grouping must key on the id.

    Keying on the name emitted two instances with the same name whenever one
    organization id appeared under two spellings, which SUSHI rejects as a
    duplicate.  The 35-record sample contained no such case; a production
    extract does.
    """

    def rows(self, *triples):
        return [
            {"nra_name": name, "nra_id": org_id, "last_publishing_date": stamp}
            for name, org_id, stamp in triples
        ]

    def test_one_id_with_two_spellings_yields_one_instance(self):
        groups = organizations_by_id(
            self.rows(
                ("Central Drugs Standard Control Organization (CDSCO)", "nra1", "2024-01-01"),
                ("Central Drugs Standard Control Organisation (CDSCO)", "nra1", "2023-01-01"),
            ),
            "nra_name",
            "nra_id",
        )
        self.assertEqual(len(groups), 1)
        self.assertEqual(groups[0][0], "nra1")

    def test_most_recently_published_name_wins(self):
        groups = organizations_by_id(
            self.rows(("Old Name", "nra1", "2020-01-01"), ("New Name", "nra1", "2026-01-01")),
            "nra_name",
            "nra_id",
        )
        # A renamed organization should surface under its current name.
        self.assertEqual(groups[0][1]["nra_name"], "New Name")

    def test_detail_comes_from_the_same_record_as_the_name(self):
        rows = [
            {"nra_name": "Old", "nra_id": "nra1", "nra_country": "Kenya", "last_publishing_date": "2020-01-01"},
            {"nra_name": "New", "nra_id": "nra1", "nra_country": "India", "last_publishing_date": "2026-01-01"},
        ]
        _, product = organizations_by_id(rows, "nra_name", "nra_id")[0]
        self.assertEqual(product["nra_name"], "New")
        self.assertEqual(product["nra_country"], "India")

    def test_distinct_ids_stay_distinct(self):
        groups = organizations_by_id(
            self.rows(("A", "nra1", "2024-01-01"), ("B", "nra2", "2024-01-01")),
            "nra_name",
            "nra_id",
        )
        self.assertEqual([g[0] for g in groups], ["nra1", "nra2"])

    def test_same_name_under_two_ids_yields_two_instances(self):
        # The id is the identity; a shared name must not merge them, which
        # keying on the name used to do.
        groups = organizations_by_id(
            self.rows(("Shared", "nra1", "2024-01-01"), ("Shared", "nra2", "2024-01-01")),
            "nra_name",
            "nra_id",
        )
        self.assertEqual(sorted(g[0] for g in groups), ["nra1", "nra2"])

    def test_organizations_without_an_id_are_keyed_by_name_hash(self):
        groups = organizations_by_id(
            self.rows(("NoId Org", "", "2024-01-01")), "nra_name", "nra_id"
        )
        self.assertEqual(groups[0][0], md5hash("NoId Org"))

    def test_require_id_skips_organizations_without_one(self):
        groups = organizations_by_id(
            self.rows(("Has", "nra1", "2024-01-01"), ("HasNot", "", "2024-01-01")),
            "nra_name",
            "nra_id",
            require_id=True,
        )
        self.assertEqual([g[0] for g in groups], ["nra1"])

    def test_nameless_organizations_are_skipped(self):
        groups = organizations_by_id(
            self.rows(("", "nra1", "2024-01-01")), "nra_name", "nra_id"
        )
        self.assertEqual(groups, [])

    def test_missing_publishing_dates_do_not_raise(self):
        groups = organizations_by_id(
            [
                {"nra_name": "A", "nra_id": "nra1"},
                {"nra_name": "B", "nra_id": "nra1", "last_publishing_date": ""},
            ],
            "nra_name",
            "nra_id",
        )
        self.assertEqual(len(groups), 1)


class TestNoDuplicateInstanceNames(unittest.TestCase):
    """End-to-end guard for the SUSHI "already exists" build failure."""

    def build(self):
        tmpdir = tempfile.mkdtemp()
        os.makedirs(os.path.join(tmpdir, "examples"), exist_ok=True)
        base = extract_product_fields(SAMPLE_PRODUCT)
        renamed = dict(base)
        renamed["nra_name"] = "Central Drugs Standard Control Organisation (CDSCO)"
        renamed["last_publishing_date"] = "2020-01-01T00:00:00.000Z"
        other = dict(base)
        other["applicant_name"] = "Serum Institute of India Pvt. Ltd."
        products = [base, renamed, other]
        generate_holders(products, tmpdir)
        generate_nra_lm_instances(products, tmpdir)
        generate_manufacturers(products, tmpdir)
        generate_manufacturer_lm_instances(products, tmpdir)
        return tmpdir

    def test_no_generated_file_declares_a_name_twice(self):
        import re

        tmpdir = self.build()
        for filename in (
            "prequal_database_holders.fsh",
            "prequal_database_nra_lm.fsh",
            "prequal_database_manufacturers.fsh",
            "prequal_database_manufacturer_lm.fsh",
        ):
            content = open(os.path.join(tmpdir, "examples", filename)).read()
            names = re.findall(r"^Instance: (\S+)", content, re.M)
            self.assertEqual(
                sorted(names), sorted(set(names)), f"duplicate Instance in {filename}"
            )


class TestNoDanglingLMReferences(unittest.TestCase):
    """An LM reference must not name an instance that is never generated.

    The LM generators skip organizations with no name, so a product with an
    organization id but no name would otherwise emit a reference to an
    instance that does not exist and fail the build.
    """

    def generate(self, overrides):
        tmpdir = tempfile.mkdtemp()
        for sub in ("codesystems", "valuesets", "examples"):
            os.makedirs(os.path.join(tmpdir, sub), exist_ok=True)
        product = dict(extract_product_fields(SAMPLE_PRODUCT))
        product.update(overrides)
        generate_manufacturer_lm_instances([product], tmpdir)
        generate_nra_lm_instances([product], tmpdir)
        generate_products_and_authorizations([product], tmpdir)
        base = os.path.join(tmpdir, "examples")
        return (
            open(os.path.join(base, "prequal_database_products.fsh")).read(),
            open(os.path.join(base, "prequal_database_manufacturer_lm.fsh")).read(),
            open(os.path.join(base, "prequal_database_nra_lm.fsh")).read(),
        )

    def test_manufacturer_lm_not_referenced_when_name_is_missing(self):
        products, mfr_lm, _ = self.generate({"applicant_name": ""})
        self.assertNotIn("* manufacturerLM", products)
        self.assertNotIn("Instance: PreQualManufacturer", mfr_lm)

    def test_nra_lm_not_referenced_when_name_is_missing(self):
        products, _, nra_lm = self.generate({"nra_name": ""})
        self.assertNotIn("* nraLM", products)
        self.assertNotIn("Instance: PreQualNRA", nra_lm)

    def test_references_are_present_when_both_id_and_name_exist(self):
        products, mfr_lm, nra_lm = self.generate({})
        self.assertIn("* manufacturerLM", products)
        self.assertIn("* nraLM", products)
        self.assertIn("Instance: PreQualManufacturer", mfr_lm)
        self.assertIn("Instance: PreQualNRA", nra_lm)

    def test_every_lm_reference_resolves_to_a_generated_instance(self):
        import re

        products, mfr_lm, nra_lm = self.generate({"applicant_name": "", "nra_name": ""})
        declared = set(re.findall(r"^Instance: (\S+)", mfr_lm + nra_lm, re.M))
        referenced = set(
            re.findall(r"= Reference\((PreQual(?:Manufacturer|NRA)\S*)\)", products)
        )
        self.assertEqual(referenced - declared, set())


class TestMergeProducts(unittest.TestCase):
    """An incremental fetch must be merged, not generated from directly.

    Every generator rewrites its output file in full, so generating from a
    delta would delete every product the delta does not mention.
    """

    def raw(self, pid, name, status="Prequalified", stamp="2024-01-01T00:00:00.000Z"):
        return {
            "ProductDetails": {
                "Identification": {"Id": pid, "Name": name},
                "Status": status,
                "LastPublishingDate": stamp,
            }
        }

    def test_fetched_copy_replaces_the_stored_one(self):
        stored = [self.raw("id1", "FVP-P-1"), self.raw("id2", "FVP-P-2")]
        # The withdrawal arrives as a cleared-down record.
        delta = [self.raw("id2", "FVP-P-2", "Withdrawn: Was Prequalified", "2026-10-20T09:00:00.000Z")]
        merged, added, updated = merge_products(stored, delta)
        self.assertEqual(len(merged), 2)
        self.assertEqual((added, updated), (0, 1))
        self.assertEqual(
            merged[1]["ProductDetails"]["Status"], "Withdrawn: Was Prequalified"
        )

    def test_products_absent_from_the_delta_survive(self):
        stored = [self.raw(f"id{i}", f"FVP-P-{i}") for i in range(35)]
        merged, added, updated = merge_products(stored, [self.raw("id7", "FVP-P-7")])
        self.assertEqual(len(merged), 35)
        self.assertEqual((added, updated), (0, 1))

    def test_new_products_are_appended(self):
        stored = [self.raw("id1", "FVP-P-1")]
        merged, added, updated = merge_products(stored, [self.raw("id9", "FVP-P-9")])
        self.assertEqual([p["ProductDetails"]["Identification"]["Id"] for p in merged], ["id1", "id9"])
        self.assertEqual((added, updated), (1, 0))

    def test_existing_order_is_preserved_for_small_diffs(self):
        stored = [self.raw(f"id{i}", f"FVP-P-{i}") for i in range(5)]
        delta = [self.raw("id3", "FVP-P-3", "Withdrawn: Was Prequalified")]
        merged, _, _ = merge_products(stored, delta)
        self.assertEqual(
            [p["ProductDetails"]["Identification"]["Id"] for p in merged],
            ["id0", "id1", "id2", "id3", "id4"],
        )

    def test_merging_empty_delta_is_a_no_op(self):
        stored = [self.raw("id1", "FVP-P-1")]
        merged, added, updated = merge_products(stored, [])
        self.assertEqual(merged, stored)
        self.assertEqual((added, updated), (0, 0))


class TestBackfillNames(unittest.TestCase):
    """Empty denormalized names are recovered from another product's copy."""

    def test_nra_name_recovered_from_shared_id(self):
        complete = extract_product_fields(SAMPLE_PRODUCT)
        gap = extract_product_fields(SAMPLE_PRODUCT)
        gap["sf_product_id"] = "other"
        gap["sf_product_name"] = "FVP-P-98"
        gap["nra_name"] = ""
        filled = backfill_names_from_ids([complete, gap])
        self.assertEqual(filled["NRA"], 1)
        self.assertEqual(gap["nra_name"], complete["nra_name"])

    def test_applicant_name_recovered_from_shared_id(self):
        complete = extract_product_fields(SAMPLE_PRODUCT)
        gap = extract_product_fields(SAMPLE_PRODUCT)
        gap["sf_product_name"] = "FVP-P-455"
        gap["applicant_name"] = ""
        filled = backfill_names_from_ids([complete, gap])
        self.assertEqual(filled["applicant"], 1)
        self.assertEqual(gap["applicant_name"], complete["applicant_name"])

    def test_no_id_means_no_backfill(self):
        # FVP-P-98's real shape: neither NRA name nor NRA id.
        gap = extract_product_fields(SAMPLE_PRODUCT)
        gap["nra_name"] = ""
        gap["nra_id"] = ""
        filled = backfill_names_from_ids([gap])
        self.assertEqual(filled["NRA"], 0)
        self.assertEqual(gap["nra_name"], "")

    def test_names_are_never_invented_for_unknown_ids(self):
        gap = extract_product_fields(SAMPLE_PRODUCT)
        gap["nra_name"] = ""
        gap["nra_id"] = "an-id-nothing-else-has"
        filled = backfill_names_from_ids([gap])
        self.assertEqual(filled["NRA"], 0)
        self.assertEqual(gap["nra_name"], "")


class TestNullSubObjectIds(unittest.TestCase):
    """When a sub-object's Identification.Id is null, don't generate or link to its LM instance."""

    def test_manufacturer_lm_not_generated_without_id(self):
        """Manufacturer LM instances should only be generated when applicant ID is non-null."""
        tmpdir = tempfile.mkdtemp()
        product_no_id = extract_product_fields({
            "ProductDetails": {
                "Identification": {"Id": "PROD1", "Name": "Test"},
                "ApplicantOrganization": {
                    "Identification": {"Id": None, "Name": "NoIdManufacturer"},
                },
                "NRADetails": {"Identification": {}},
                "VaccineDetails": {"VaccineName": {}},
            }
        })
        products = [product_no_id]
        generate_manufacturer_lm_instances(products, tmpdir)
        path = os.path.join(tmpdir, "examples", "prequal_database_manufacturer_lm.fsh")
        # File should be empty (no instances) since the only manufacturer has no ID
        content = open(path).read()
        self.assertNotIn("InstanceOf: PreQualManufacturer", content)

    def test_nra_lm_not_generated_without_id(self):
        """NRA LM instances should only be generated when NRA ID is non-null."""
        tmpdir = tempfile.mkdtemp()
        product_no_id = extract_product_fields({
            "ProductDetails": {
                "Identification": {"Id": "PROD1", "Name": "Test"},
                "ApplicantOrganization": {"Identification": {}},
                "NRADetails": {
                    "Identification": {"Id": None, "Name": "NoIdNRA"},
                },
                "VaccineDetails": {"VaccineName": {}},
            }
        })
        products = [product_no_id]
        generate_nra_lm_instances(products, tmpdir)
        path = os.path.join(tmpdir, "examples", "prequal_database_nra_lm.fsh")
        content = open(path).read()
        self.assertNotIn("InstanceOf: PreQualNRA", content)

    def test_product_does_not_link_null_id_lm(self):
        """Product instances should not link to LMs when sub-object IDs are null."""
        tmpdir = tempfile.mkdtemp()
        product_null_ids = extract_product_fields({
            "ProductDetails": {
                "Identification": {"Id": "a3K_NULL_TEST", "Name": "FVP-NULL"},
                "Type": "Finished Vaccine Product",
                "DateOfPreQualifiedAcceptance": "2024-01-01",
                "Status": "Prequalified",
                "ApplicantOrganization": {
                    "Identification": {"Id": None, "Name": "SomeManufacturer"},
                },
                "NRADetails": {
                    "Identification": {"Id": None, "Name": "SomeNRA"},
                },
                "VaccineDetails": {
                    "Identification": {"Id": None},
                    "VaccineName": {"CommercialName": "TestVax"},
                },
            }
        })
        generate_products_and_authorizations([product_null_ids], tmpdir)
        path = os.path.join(tmpdir, "examples", "prequal_database_products.fsh")
        content = open(path).read()
        # Product should exist
        self.assertIn("a3K_NULL_TEST", content)
        # But should NOT link to manufacturer/NRA/vaccine LMs
        self.assertNotIn("manufacturerLM", content)
        self.assertNotIn("nraLM", content)
        self.assertNotIn("vaccineLM", content)
        # Should still have FHIR Organization references (those use md5 fallback)
        self.assertIn("manufacturerReference = Reference(Manufacturer", content)
        self.assertIn("responsibleNRAReference = Reference(Holder", content)


class TestAdditiveCodeSystems(unittest.TestCase):
    """CodeSystem generation must preserve existing codes that are not in current data."""

    def test_read_existing_codes(self):
        tmpdir = tempfile.mkdtemp()
        cs_path = os.path.join(tmpdir, "test.fsh")
        with open(cs_path, "w") as f:
            f.write('CodeSystem: Test\n')
            f.write('* #Foo "Foo label"\n')
            f.write('* #Bar "Bar label"\n')
        codes = read_existing_codes(cs_path)
        self.assertIn("Foo", codes)
        self.assertIn("Bar", codes)
        self.assertEqual(codes["Foo"], '* #Foo "Foo label"')

    def test_read_existing_codes_nonexistent_file(self):
        codes = read_existing_codes("/tmp/nonexistent_file_xyz.fsh")
        self.assertEqual(len(codes), 0)

    def test_presentations_preserves_existing_codes(self):
        tmpdir = tempfile.mkdtemp()
        os.makedirs(os.path.join(tmpdir, "codesystems"), exist_ok=True)
        os.makedirs(os.path.join(tmpdir, "valuesets"), exist_ok=True)
        # Pre-populate with extra code not in current data
        cs_path = os.path.join(tmpdir, "codesystems", "prequal_presentation.fsh")
        with open(cs_path, "w") as f:
            f.write('CodeSystem: PreQualPresentation\n')
            f.write('* #Vial "Vial"\n')
            f.write('* #Syringe "Pre-filled Syringe"\n')  # not in sample data

        products = [extract_product_fields(SAMPLE_PRODUCT)]
        generate_presentations_codesystem(products, tmpdir)
        content = open(cs_path).read()
        # Existing code preserved
        self.assertIn('#Syringe "Pre-filled Syringe"', content)
        # New/current code still present
        self.assertIn('#Vial "Vial"', content)

    def test_vaccine_types_preserves_existing_codes(self):
        tmpdir = tempfile.mkdtemp()
        os.makedirs(os.path.join(tmpdir, "codesystems"), exist_ok=True)
        os.makedirs(os.path.join(tmpdir, "valuesets"), exist_ok=True)
        cs_path = os.path.join(tmpdir, "codesystems", "preQualVaccineTypes.fsh")
        with open(cs_path, "w") as f:
            f.write('CodeSystem: PreQualVaccineType\n')
            f.write('* #Malaria "Malaria"\n')
            f.write('* #COVID19 "COVID-19"\n')  # not in sample data

        products = [extract_product_fields(SAMPLE_PRODUCT)]
        generate_vaccine_types_codesystem(products, tmpdir)
        content = open(cs_path).read()
        # A code absent from this extract is kept...
        self.assertIn('#COVID19 "COVID-19"', content)
        # ...but one the extract still carries takes its display from the
        # current data, so an improved display is not frozen out.
        self.assertIn('#Malaria "Recombinant malaria vaccine"', content)
        self.assertNotIn('#Malaria "Malaria"', content)

    def test_metadata_preserves_existing_codes(self):
        tmpdir = tempfile.mkdtemp()
        os.makedirs(os.path.join(tmpdir, "codesystems"), exist_ok=True)
        os.makedirs(os.path.join(tmpdir, "valuesets"), exist_ok=True)
        cs_path = os.path.join(tmpdir, "codesystems", "prequal_database_metadata.fsh")
        with open(cs_path, "w") as f:
            f.write('CodeSystem: PreQualDatabaseMetadata\n')
            f.write('* #Prequalified "Prequalified"\n')
            f.write('* #OldLegacyCode "Some old value"\n')  # not in sample data

        products = [extract_product_fields(SAMPLE_PRODUCT)]
        generate_metadata_codesystem(products, tmpdir)
        content = open(cs_path).read()
        self.assertIn('#OldLegacyCode "Some old value"', content)
        self.assertIn('#Prequalified "Prequalified"', content)

    def test_product_ids_preserves_existing_codes(self):
        tmpdir = tempfile.mkdtemp()
        os.makedirs(os.path.join(tmpdir, "codesystems"), exist_ok=True)
        os.makedirs(os.path.join(tmpdir, "valuesets"), exist_ok=True)
        os.makedirs(os.path.join(tmpdir, "examples"), exist_ok=True)
        cs_path = os.path.join(tmpdir, "codesystems", "prequal_database_products_identifiers.fsh")
        with open(cs_path, "w") as f:
            f.write('CodeSystem: PreQualProductIds\n')
            f.write('* #a3K3X000005atRtUAI "FVP-P-447 (a3K3X000005atRtUAI)"\n')
            f.write('* #OldRemovedProduct "Old Product (OldRemovedProduct)"\n')

        products = [extract_product_fields(SAMPLE_PRODUCT)]
        generate_products_and_authorizations(products, tmpdir)
        content = open(cs_path).read()
        self.assertIn('#OldRemovedProduct "Old Product (OldRemovedProduct)"', content)
        self.assertIn("a3K3X000005atRtUAI", content)


def make_page(products, offset=0, limit=20, total=None):
    """Build an API-shaped response envelope around some product stubs."""
    return {
        "FinishedVaccineProducts": products,
        "AdditionalInfo": {
            "OffSet": offset,
            "Limit": limit,
            "TotalRecords": total if total is not None else len(products),
        },
        "Status": {"StatusCode": "SUCCESS"},
    }


def make_products(start, count, stamp="2024-01-01T00:00:00.000Z"):
    """Build `count` minimal product records numbered from `start`."""
    return [
        {
            "ProductDetails": {
                "Identification": {"Id": f"id-{i}", "Name": f"FVP-P-{i}"},
                "Status": "Prequalified",
                "LastPublishingDate": stamp,
            }
        }
        for i in range(start, start + count)
    ]


class TestBuildApiUrl(unittest.TestCase):
    ENDPOINT = (
        "https://soa.example.int/soa-infra/resources/EPQS/"
        "QueryFinishedVaccineProducts!1.0/RestService_FVP"
        "?Query=FinishedVaccineProduct&TimeStamp=2021-01-01T00:00:00.000Z&OffSet=0&Limit=20"
    )

    def test_uses_pascal_case_parameters(self):
        url = build_api_url(self.ENDPOINT, offset=40, limit=20)
        self.assertIn("OffSet=40", url)
        self.assertIn("Limit=20", url)
        self.assertNotIn("offset=", url)
        self.assertNotIn("limit=", url)

    def test_replaces_rather_than_duplicates_existing_pagination(self):
        url = build_api_url(self.ENDPOINT, offset=60, limit=25)
        self.assertEqual(url.count("OffSet="), 1)
        self.assertEqual(url.count("Limit="), 1)
        self.assertIn("OffSet=60", url)
        self.assertIn("Limit=25", url)

    def test_drops_lowercase_pagination_already_in_endpoint(self):
        url = build_api_url(self.ENDPOINT + "&offset=0&limit=100", offset=20, limit=20)
        self.assertNotIn("offset=0", url)
        self.assertNotIn("limit=100", url)
        self.assertIn("OffSet=20", url)

    def test_preserves_query_and_service_version(self):
        url = build_api_url(self.ENDPOINT, offset=0, limit=20)
        self.assertIn("Query=FinishedVaccineProduct", url)
        self.assertIn("QueryFinishedVaccineProducts!1.0", url)

    def test_timestamp_argument_overrides_endpoint_value(self):
        url = build_api_url(
            self.ENDPOINT, offset=0, limit=20, timestamp="2025-06-01T00:00:00.000Z"
        )
        self.assertIn("TimeStamp=2025-06-01T00:00:00.000Z", url)
        self.assertNotIn("2021-01-01", url)

    def test_timestamp_colons_are_not_percent_encoded(self):
        url = build_api_url(self.ENDPOINT, offset=0, limit=20)
        self.assertIn("TimeStamp=2021-01-01T00:00:00.000Z", url)

    def test_timestamp_always_sent_even_when_endpoint_omits_it(self):
        # The service binds TimeStamp into its SOQL, so omitting it faults
        # the call with "Bind Parameter's value is empty".
        bare = "https://soa.example.int/x/RestService_FVP?Query=FinishedVaccineProduct"
        url = build_api_url(bare, offset=0, limit=20)
        self.assertIn(f"TimeStamp={DEFAULT_TIMESTAMP}", url)

    def test_blank_timestamp_in_endpoint_is_replaced(self):
        url = build_api_url(
            "https://soa.example.int/x/RestService_FVP?Query=FVP&TimeStamp=",
            offset=0,
            limit=20,
        )
        self.assertIn(f"TimeStamp={DEFAULT_TIMESTAMP}", url)
        self.assertNotIn("TimeStamp=&", url)


class TestExplicitNulls(unittest.TestCase):
    """The API sends "Name": null rather than omitting the key."""

    def test_null_scalars_become_empty_strings(self):
        product = {
            "ProductDetails": {
                "Identification": {"Id": "a3K", "Name": "FVP-P-1"},
                "NRADetails": {"Identification": {"Id": None, "Name": None}},
                "PublishingRemarks": None,
                "PresentationOther": None,
                "Status": "Prequalified",
            }
        }
        fields = extract_product_fields(product)
        # None would crash md5hash() and write "None" into the FSH.
        self.assertEqual(fields["nra_name"], "")
        self.assertEqual(fields["nra_id"], "")
        self.assertEqual(fields["publishing_remarks"], "")
        self.assertIsNotNone(fields["presentation_other"])
        for key, value in fields.items():
            self.assertIsNotNone(value, f"{key} is None")

    def test_null_nra_name_does_not_crash_generation(self):
        # Reproduces the AttributeError from md5hash(None) seen on the full
        # 271-record dataset.
        product = {
            "ProductDetails": {
                "Identification": {"Id": "a3Knull", "Name": "FVP-P-999"},
                "ApplicantOrganization": {"Identification": {"Id": "app1", "Name": "Acme"}},
                "NRADetails": {"Identification": {"Id": None, "Name": None}},
                "VaccineDetails": {"VaccineName": {"CommercialName": "Vaxx"}},
                "Status": "Prequalified",
            }
        }
        tmpdir = tempfile.mkdtemp()
        for sub in ("codesystems", "valuesets", "examples"):
            os.makedirs(os.path.join(tmpdir, sub), exist_ok=True)
        fields = [extract_product_fields(product)]
        generate_products_and_authorizations(fields, tmpdir)
        content = open(os.path.join(tmpdir, "examples", "prequal_database_products.fsh")).read()
        # No instance is emitted, so nothing can dangle.
        self.assertNotIn("Reference(Holder)", content)
        self.assertNotIn("None", content)

    def test_product_without_nra_name_is_skipped_not_dangling(self):
        # nraName and responsibleNRAReference are both 1..1, and no Holder
        # instance exists for a nameless NRA.
        tmpdir = tempfile.mkdtemp()
        for sub in ("codesystems", "valuesets", "examples"):
            os.makedirs(os.path.join(tmpdir, sub), exist_ok=True)
        product = dict(SAMPLE_PRODUCT)
        fields = extract_product_fields(product)
        fields["nra_name"] = ""
        fields["nra_id"] = ""
        generate_products_and_authorizations([fields], tmpdir)
        content = open(os.path.join(tmpdir, "examples", "prequal_database_products.fsh")).read()
        self.assertNotIn("responsibleNRAReference", content)


class TestParseResponse(unittest.TestCase):
    # The fault the UAT service returned for a request with no TimeStamp.
    XML_FAULT = """<ns0:FVP_OUT xmlns:ns0="http://www.fvp.org">
   <ns0:Status>
      <ns0:StatusCode>FAULTED</ns0:StatusCode>
      <ns0:StatusMessage>Exception occurred when binding was invoked.
Exception occurred during invocation of JCA binding: "JCA Binding execute of
Reference operation 'query' failed due to: Error sending bytes:
oracle.cloud.connector.api.CloudInvocationException: Bind Parameter's value is empty.
".</ns0:StatusMessage>
   </ns0:Status>
</ns0:FVP_OUT>"""

    def test_parses_json(self):
        data = parse_response('{"FinishedVaccineProducts": [], "Status": {"StatusCode": "SUCCESS"}}')
        self.assertEqual(data["Status"]["StatusCode"], "SUCCESS")

    def test_extracts_status_from_namespaced_xml_fault(self):
        data = parse_response(self.XML_FAULT)
        self.assertEqual(data["Status"]["StatusCode"], "FAULTED")
        self.assertIn("Bind Parameter's value is empty", data["Status"]["StatusMessage"])

    def test_xml_fault_surfaces_as_error_with_its_message(self):
        with self.assertRaises(PreQualAPIError) as ctx:
            check_response_status(parse_response(self.XML_FAULT))
        self.assertIn("Bind Parameter's value is empty", str(ctx.exception))

    def test_rejects_body_that_is_neither_json_nor_xml(self):
        with self.assertRaises(PreQualAPIError) as ctx:
            parse_response("<html><body>502 Bad Gateway</body></html>")
        self.assertIn("Unrecognised XML", str(ctx.exception))

    def test_rejects_unparseable_body(self):
        with self.assertRaises(PreQualAPIError) as ctx:
            parse_response("not json, not xml, just noise <<<")
        self.assertIn("neither JSON nor XML", str(ctx.exception))


class TestOffsetPagination(unittest.TestCase):
    def setUp(self):
        self.calls = []

    def fake_fetch(self, pages):
        """Return a fetch_api_page stand-in that serves `pages` in order."""

        def _fetch(endpoint, username, password, offset, limit, timestamp, timeout):
            self.calls.append({"offset": offset, "limit": limit, "timestamp": timestamp})
            return pages[len(self.calls) - 1]

        return _fetch

    def test_advances_by_records_returned_not_requested_limit(self):
        # The service caps each response at 14 rows even though 20 are asked
        # for, so the offset has to advance by 14.
        pages = [
            make_page(make_products(0, 14), total=30),
            make_page(make_products(14, 14), total=30),
            make_page(make_products(28, 2), total=30),
        ]
        with mock.patch("import_salesforce.fetch_api_page", self.fake_fetch(pages)):
            products, total = download_offset_pages("http://e", "u", "p", page_size=20)
        self.assertEqual(len(products), 30)
        self.assertEqual(total, 30)
        self.assertEqual([c["offset"] for c in self.calls], [0, 14, 28])

    def test_raises_when_service_ignores_offset(self):
        # This is the 35-record bug: the same page comes back every time.
        page = make_page(make_products(0, 35), total=271)
        with mock.patch("import_salesforce.fetch_api_page", self.fake_fetch([page] * 5)):
            with self.assertRaises(PreQualAPIError) as ctx:
                download_offset_pages("http://e", "u", "p", page_size=20)
        message = str(ctx.exception)
        self.assertIn("ignoring OffSet", message)
        self.assertIn("35 of 271", message)

    def test_stops_on_empty_page_when_total_unknown(self):
        pages = [
            {"FinishedVaccineProducts": make_products(0, 20)},
            {"FinishedVaccineProducts": []},
        ]
        with mock.patch("import_salesforce.fetch_api_page", self.fake_fetch(pages)):
            products, total = download_offset_pages("http://e", "u", "p", page_size=20)
        self.assertEqual(len(products), 20)
        self.assertIsNone(total)

    def test_raises_on_api_error_status(self):
        pages = [{"Status": {"StatusCode": "FAILURE", "StatusMessage": "SOQL error"}}]
        with mock.patch("import_salesforce.fetch_api_page", self.fake_fetch(pages)):
            with self.assertRaises(PreQualAPIError) as ctx:
                download_offset_pages("http://e", "u", "p")
        self.assertIn("SOQL error", str(ctx.exception))


class TestTimestampPagination(unittest.TestCase):
    def setUp(self):
        self.calls = []

    def fake_fetch(self, pages):
        def _fetch(endpoint, username, password, offset, limit, timestamp, timeout):
            self.calls.append({"offset": offset, "limit": limit, "timestamp": timestamp})
            return pages[len(self.calls) - 1]

        return _fetch

    def test_walks_timestamp_window_forward(self):
        pages = [
            make_page(make_products(0, 2, "2024-01-01T00:00:00.000Z"), total=4),
            make_page(make_products(2, 2, "2024-02-01T00:00:00.000Z"), total=4),
        ]
        with mock.patch("import_salesforce.fetch_api_page", self.fake_fetch(pages)):
            products, total = download_timestamp_pages("http://e", "u", "p", page_size=2)
        self.assertEqual(len(products), 4)
        self.assertEqual(total, 4)
        self.assertEqual(self.calls[1]["timestamp"], "2024-01-01T00:00:00.000Z")

    def test_raises_when_window_cannot_advance(self):
        # Every record shares one timestamp and the page is already full.
        page = make_page(make_products(0, 2, "2024-01-01T00:00:00.000Z"), total=99)
        with mock.patch("import_salesforce.fetch_api_page", self.fake_fetch([page] * 4)):
            with self.assertRaises(PreQualAPIError) as ctx:
                download_timestamp_pages(
                    "http://e", "u", "p", page_size=2, timestamp="2024-01-01T00:00:00.000Z"
                )
        self.assertIn("Stuck at TimeStamp", str(ctx.exception))


class TestDownloadAllPages(unittest.TestCase):
    def test_raises_on_short_read(self):
        page = make_page(make_products(0, 10), total=271)
        with mock.patch(
            "import_salesforce.download_offset_pages", return_value=(page["FinishedVaccineProducts"], 271)
        ):
            with self.assertRaises(PreQualAPIError) as ctx:
                download_all_pages("http://e", "u", "p")
        self.assertIn("incomplete", str(ctx.exception))

    def test_allow_partial_downgrades_short_read_to_warning(self):
        products = make_products(0, 10)
        with mock.patch(
            "import_salesforce.download_offset_pages", return_value=(products, 271)
        ):
            result = download_all_pages("http://e", "u", "p", allow_partial=True)
        self.assertEqual(len(result), 10)

    def test_rejects_unknown_strategy(self):
        with self.assertRaises(PreQualAPIError):
            download_all_pages("http://e", "u", "p", strategy="bogus")

    def test_passes_default_timestamp_when_none_given(self):
        captured = {}

        def fake(endpoint, username, password, page_size, timestamp, timeout):
            captured["timestamp"] = timestamp
            return make_products(0, 1), 1

        with mock.patch("import_salesforce.download_offset_pages", fake):
            download_all_pages("http://e", "u", "p")
        self.assertEqual(captured["timestamp"], DEFAULT_TIMESTAMP)


if __name__ == "__main__":
    unittest.main()
