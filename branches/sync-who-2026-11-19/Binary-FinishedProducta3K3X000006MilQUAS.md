# PreQual Product: Poliomyelitis vaccine - IPV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Poliomyelitis vaccine - IPV**

## Example Binary: PreQual Product: Poliomyelitis vaccine - IPV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2010-12-07",
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
    "value": "a3K3X000006MilQUAS"
  },
  "productName": "FVP-P-230",
  "vaccineFullName": "Poliomyelitis vaccine (inactivated)",
  "vaccineAbbreviatedName": "IPV",
  "vaccineCommercialName": "Poliomyelitis vaccine",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "IPV",
        "display": "Poliomyelitis vaccine (inactivated)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpeUAE"
  },
  "routeOfAdministration": "Intramuscularorsubcutaneous",
  "vialMonitor": "Type 7",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3yQAA"
  },
  "applicantName": "Bilthoven Biologicals B.V.",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00003qpCfYQAU"
  },
  "nraName": "Medicines Evaluation Board",
  "nraCountry": "Netherlands",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "preservative": "2-phenoxyethanol",
  "preservativeConcentration": "5 mg/ml",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3yQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00003qpCfYQAU"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3yQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00003qpCfYQAU"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpeUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VajDUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005iuTXYAY"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3yQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MilQUASIng4"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
