# PreQual Product: Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3) - bOPV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3) - bOPV**

## Example Binary: PreQual Product: Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3) - bOPV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2015-11-05",
  "assessmentProcedure": "PrequalificationAbridged",
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
  "numDoses": 10,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MijZUAS"
  },
  "productName": "FVP-P-297",
  "vaccineFullName": "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
  "vaccineAbbreviatedName": "bOPV",
  "vaccineCommercialName": "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3)",
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
    "value": "0013X0000498p3IQAQ"
  },
  "applicantName": "PT Bio Farma (Persero)",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4xQAA"
  },
  "nraName": "National Agency of Drug and Food Control Indonesia (NADFCI)",
  "nraCountry": "Indonesia",
  "shelfLife": "24 months",
  "storageTemperature": "-20°C",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3IQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4xQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3IQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4xQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpiUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VaeJUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005kIgbYAE"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3IQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MijZUASIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
