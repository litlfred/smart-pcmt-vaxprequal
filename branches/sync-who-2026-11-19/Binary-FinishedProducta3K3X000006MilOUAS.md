# PreQual Product: Influenza A (H1N1) 2009 monovalent vaccine - IIVPandemic - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Influenza A (H1N1) 2009 monovalent vaccine - IIVPandemic**

## Example Binary: PreQual Product: Influenza A (H1N1) 2009 monovalent vaccine - IIVPandemic

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2010-01-27",
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
    "value": "a3K3X000006MilOUAS"
  },
  "productName": "FVP-P-214",
  "vaccineFullName": "Human pandemic influenza vaccine",
  "vaccineAbbreviatedName": "IIVPandemic",
  "vaccineCommercialName": "Influenza A (H1N1) 2009 monovalent vaccine",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "IIVPandemic",
        "display": "Human pandemic influenza vaccine"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpKUAU"
  },
  "routeOfAdministration": "Intramuscular",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4BQAQ"
  },
  "applicantName": "Sanofi Pasteur Inc.",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p56QAA"
  },
  "nraName": "CBER/FDA",
  "nraCountry": "United States of America",
  "shelfLife": "12 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "There is no routine production for this vaccine.",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p4BQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p56QAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p4BQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p56QAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpKUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001Vaj9UAC"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4BQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MilOUASIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
