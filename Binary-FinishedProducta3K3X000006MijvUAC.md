# PreQual Product: SKYCellflu® inj. - IIV3 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: SKYCellflu® inj. - IIV3**

## Example Binary: PreQual Product: SKYCellflu® inj. - IIV3

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2019-05-15",
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
    "value": "a3K3X000006MijvUAC"
  },
  "productName": "FVP-P-339",
  "vaccineFullName": "Influenza vaccine trivalent (surface antigens, inactivated)",
  "vaccineAbbreviatedName": "IIV3",
  "vaccineCommercialName": "SKYCellflu® inj.",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "IIV3",
        "display": "Influenza vaccine trivalent (surface antigens, inactivated)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpNUAU"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 7",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qwQAA"
  },
  "applicantName": "SK Bioscience Co.  Ltd. (SK)",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qyQAA"
  },
  "nraName": "Ministry of Food and Drug Safety (MFDS)",
  "nraCountry": "Republic of Korea",
  "shelfLife": "12 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "Under the criteria of the Programmatic Suitability of Vaccine Candidates for WHO Prequalification (PSPQ); SKYCellflu® inj. Trivalent Influenza Vaccine (single-dose vial) fails the critical characteristics because for children use 6-35 months age it constitutes a multidose injectable liquid product (2 dose per vial) but does not contain a preservative that would permit use in subsequent vaccination sessions in accordance with the WHO multi-dose vial policy (MDVP). Therefore statement in the product insert that when the vaccine is divided and administered to children 6-35 months of age the remaining vaccine should be IMMEDIATELY discarded.",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X00004993qwQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00004993qyQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X00004993qwQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00004993qyQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpNUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VafGUAS"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00004993qwQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MijvUACIng3"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
