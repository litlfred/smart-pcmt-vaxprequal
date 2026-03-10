<!--badges-->
[![License: CC BY-IGO 3.0](https://licensebuttons.net/l/by-nc/3.0/igo/80x15.png)](https://creativecommons.org/licenses/by/3.0/igo)
![CI Build](https://img.shields.io/github/actions/workflow/status/WorldHealthOrganization/smart-ig-empty/ghbuild.yml)  
   
![QA errors](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2FWorldHealthOrganization.github.io%2Fsmart-ig-empty%2Fqa.json&query=%24.errs&logoColor=red&label=QA%20errors&color=yellow)
![QA warnings](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2FWorldHealthOrganization.github.io%2Fsmart-ig-empty%2Fqa.json&query=%24.warnings&logoColor=orange&label=QA%20warnings&color=yellow)
![QA hints](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2FWorldHealthOrganization.github.io%2Fsmart-ig-empty%2Fqa.json&query=%24.hints&logoColor=yellow&label=QA%20hints&color=yellow)
<!--/badges-->

# WHO SMART GUIDELINES - EMPTY IG

This is an empty framework, to be used to create SMART Implementation Guides.

Please see these [instructions](https://smart.who.int/ig-starter-kit/ig_setup.html#github-setup)


## Generating Instances Locally

To generate FSH logical model instances from the sample data (no API credentials needed):

```bash
python3 scripts/import_salesforce.py --json-file data/prequal.json
```

This reads 35 products from `data/prequal.json` and writes generated FSH files into `input/fsh/`:
- `input/fsh/examples/prequal_database_products.fsh` — PreQualProduct, Product, and ProductAuthorization instances
- `input/fsh/examples/prequal_database_manufacturers.fsh` — Manufacturer Organization instances
- `input/fsh/examples/prequal_database_holders.fsh` — NRA/Holder Organization instances
- `input/fsh/codesystems/` — CodeSystems for presentations, vaccine types, and product identifiers
- `input/fsh/valuesets/` — ValueSet for product identifiers
- `input/fsh/concept_maps/` — ConceptMap from CSV IDs to API IDs

To run tests:

```bash
python3 -m unittest tests/test_import_salesforce.py -v
```

## Sample Generated Instance

For each product in the WHO PreQual database, the import script generates three FSH instances:
1. A `PreQualProduct` logical model instance (capturing all API fields plus FHIR references)
2. A `Product` resource instance
3. A `ProductAuthorization` resource instance

Here is a sample for the CYVAC malaria vaccine:

```fsh
Instance: PreQualDBa3K3X000005atRtUAI
InstanceOf: PreQualProduct
* dateOfPrequal = 2023-12-19
* vaccineType.coding.code = #Malaria
* vaccineType.coding.display = "Malaria"
* commercialName = "CYVAC"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000005atRtUAI"
* productName = "FVP-P-447"
* vaccineFullName = "Recombinant malaria vaccine"
* vaccineAbbreviatedName = "Malaria"
* vaccineCommercialName = "CYVAC"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA)
* productReference = Reference(MalariaProducta3K3X000005atRtUAI)

Instance: MalariaProducta3K3X000005atRtUAI
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "CYVAC"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC)
* doseQuantity =  2 'doses'
* classification = #Malaria
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000005atRtUAI"

Instance: PreQuala3K3X000005atRtUAI
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA)
* validityPeriod.start = 2023-12-19
* product  = Reference(MalariaProducta3K3X000005atRtUAI)
```

## Changes and feedback

Feedback and issues about this empty framework can be submitted via the [issues](issues) page, and will be incorporated into subsequent releases.

