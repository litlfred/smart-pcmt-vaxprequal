# PreQual Product: ERVEBO - EBOV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: ERVEBO - EBOV**

## Example Binary: PreQual Product: ERVEBO - EBOV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2019-11-12",
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
  "numDoses": 1,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MijHUAS"
  },
  "productName": "FVP-P-383",
  "vaccineFullName": "Ebola vaccine (live, attenuated)",
  "vaccineAbbreviatedName": "EBOV",
  "vaccineCommercialName": "ERVEBO",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "EBOV",
        "display": "Ebola vaccine (live, attenuated)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpCUAU"
  },
  "routeOfAdministration": "Intramuscular",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p39QAA"
  },
  "applicantName": "Merck Sharp & Dohme LLC",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00003cPkkYQAS"
  },
  "nraName": "European Medicines Agency",
  "nraCountry": "Netherlands",
  "shelfLife": "36 months",
  "storageTemperature": "-80 to -60°C",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "PQ effective date: 12/11/2019The vaccines should be stored and transported frozen at -80°C to -60°C.",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p39QAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00003cPkkYQAS"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p39QAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00003cPkkYQAS"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpCUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VadZUAS"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p39QAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MijHUASIng4"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
