#!/usr/bin/env python3
"""Tests for import_salesforce.py"""

import json
import os
import sys
import tempfile
import unittest

# Add scripts directory to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "scripts"))

from import_salesforce import (
    extract_product_fields,
    fsh_escape,
    generate_concept_map,
    generate_holders,
    generate_manufacturers,
    generate_presentations_codesystem,
    generate_products_and_authorizations,
    generate_vaccine_types_codesystem,
    load_json_file,
    md5hash,
    sanitize_alpha,
    sanitize_code,
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
        },
        "Status": "Prequalified",
        "PreservativeDetails": {"Id": "None"},
        "PreservativeConcentartionDetails": {"Id": None},
        "LastPublishingDate": "2024-09-10T14:16:34.000Z",
        "PublishingRemarks": None,
    }
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

    def test_empty_product(self):
        fields = extract_product_fields({})
        self.assertEqual(fields["sf_product_id"], "")
        self.assertEqual(fields["presentation"], "")


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
        self.assertIn('#Malaria "Malaria"', content)

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
        self.assertIn("InstanceOf: PreQualDBSalesforceWithRefs", content)
        self.assertIn("InstanceOf: $Product", content)
        self.assertIn("InstanceOf: $ProductAuthorization", content)
        self.assertIn("a3K3X000005atRtUAI", content)
        self.assertIn("CYVAC", content)

        cs_content = open(cs_path).read()
        self.assertIn("CodeSystem: PreQualProductIds", cs_content)

        vs_content = open(vs_path).read()
        self.assertIn("ValueSet: PreQualProductIds", vs_content)


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


class TestConceptMap(unittest.TestCase):
    def test_generate_concept_map(self):
        tmpdir = tempfile.mkdtemp()
        # Create a minimal CSV matching the sample product
        csv_path = os.path.join(tmpdir, "test.csv")
        with open(csv_path, "w") as f:
            f.write('"Date of Prequalification ","Vaccine Type","Commercial Name",Presentation,"No. of doses",Manufacturer,"Responsible NRA"\n')
            f.write('19/12/2023,Malaria,CYVAC,Vial,2,"Serum Institute of India","Central Drugs Standard Control Organization (CDSCO)"\n')

        products = [extract_product_fields(SAMPLE_PRODUCT)]
        generate_concept_map(products, csv_path, tmpdir)

        cm_path = os.path.join(
            tmpdir, "concept_maps", "prequal_csv_to_salesforce.fsh"
        )
        self.assertTrue(os.path.exists(cm_path))
        content = open(cm_path).read()
        self.assertIn("ConceptMap", content)
        self.assertIn("PreQualCSVtoSalesforceConceptMap", content)


if __name__ == "__main__":
    unittest.main()
