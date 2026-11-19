# PreQual Product: Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral) - bOPV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral) - bOPV**

## Example Binary: PreQual Product: Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral) - bOPV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2018-12-07",
  "assessmentProcedure": "PrequalificationStandard",
  "status": "Prequalified",
  "pharmaceuticalForm": "LiquidReadytouse",
  "presentation": {
    "coding": [
      {
        "system": "https://extranet.who.int/prequal/vaccines/prequalified-vaccines",
        "code": "Vial",
        "display": "Vial"
      }
    ]
  },
  "numDoses": 20,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MikHUAS"
  },
  "productName": "FVP-P-335",
  "vaccineFullName": "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
  "vaccineAbbreviatedName": "bOPV",
  "vaccineCommercialName": "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral)",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "bOPV",
        "display": "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpiUAE"
  },
  "routeOfAdministration": "Oral",
  "vialMonitor": "Type 2",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine may be used in subsequent immunization sessions (up to 28 days) if the conditions outlined in the WHO Policy Statement are met.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3YQAQ"
  },
  "applicantName": "Panacea Biotec Ltd.",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4fQAA"
  },
  "nraName": "Central Drugs Standard Control Organization (CDSCO)",
  "nraCountry": "India",
  "shelfLife": "24 months",
  "storageTemperature": "-20°C",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "bOPV Type 1 & 3 vaccine can also be stored for up to six months between +2°C and +8°C.",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3YQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4fQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3YQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4fQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpiUAE"
  },
  "bulkSupplierLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualBulkSupplier/PreQualBulkSupplier0013X0000498p3IQAQ"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001Vag1UAC"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3IQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MikHUASIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
