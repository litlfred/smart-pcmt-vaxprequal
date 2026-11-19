# PreQual Product: Menveo - MenACYW-135 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Menveo - MenACYW-135**

## Example Binary: PreQual Product: Menveo - MenACYW-135

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2013-07-31",
  "assessmentProcedure": "PrequalificationStandard",
  "status": "Prequalified",
  "pharmaceuticalForm": "Lyophilisedactivecomponenttobereconstitutedwithliquidactivecomponentbeforeuse",
  "presentation": {
    "coding": [
      {
        "system": "https://extranet.who.int/prequal/vaccines/prequalified-vaccines",
        "code": "Twovialsetactiveactive",
        "display": "Two vial set (active + active)"
      }
    ]
  },
  "numDoses": 1,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MilTUAS"
  },
  "productName": "FVP-P-267",
  "vaccineFullName": "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)",
  "vaccineAbbreviatedName": "MenACYW-135",
  "vaccineCommercialName": "Menveo",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "MenACYW135",
        "display": "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpEUAU"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 14",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4QQAQ"
  },
  "applicantName": "GlaxoSmithKline Vaccines S.r.l.",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00003cPkkYQAS"
  },
  "nraName": "European Medicines Agency",
  "nraCountry": "Netherlands",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Liquid active component",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p4QQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00003cPkkYQAS"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p4QQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00003cPkkYQAS"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpEUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VajJUAS"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4QQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MilTUASIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
