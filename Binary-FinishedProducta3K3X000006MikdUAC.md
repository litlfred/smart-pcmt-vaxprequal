# PreQual Product: Cervarix - HPV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Cervarix - HPV**

## Example Binary: PreQual Product: Cervarix - HPV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2009-07-08",
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
    "value": "a3K3X000006MikdUAC"
  },
  "productName": "FVP-P-179",
  "vaccineFullName": "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)",
  "vaccineAbbreviatedName": "HPV",
  "vaccineCommercialName": "Cervarix",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "HPV",
        "display": "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSplUAE"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 30",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3gQAA"
  },
  "applicantName": "GlaxoSmithKline Biologicals SA",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p67QAA"
  },
  "nraName": "Federal Agency for Medicines and Health Products  (FAMPH)",
  "nraCountry": "Belgium",
  "shelfLife": "60 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3gQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p67QAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3gQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p67QAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSplUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VagsUAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005iQojYAE"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3gQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MikdUACIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
