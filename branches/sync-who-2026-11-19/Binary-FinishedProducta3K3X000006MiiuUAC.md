# PreQual Product: Euvichol-Plus - OCV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Euvichol-Plus - OCV**

## Example Binary: PreQual Product: Euvichol-Plus - OCV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2017-08-11",
  "assessmentProcedure": "PrequalificationAbridged",
  "status": "Prequalified",
  "pharmaceuticalForm": "LiquidReadytouse",
  "presentation": {
    "coding": [
      {
        "system": "https://extranet.who.int/prequal/vaccines/prequalified-vaccines",
        "code": "Plastictube",
        "display": "Plastic tube"
      }
    ]
  },
  "numDoses": 1,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MiiuUAC"
  },
  "productName": "FVP-P-336",
  "vaccineFullName": "Inactivated oral cholera vaccine",
  "vaccineAbbreviatedName": "OCV",
  "vaccineCommercialName": "Euvichol-Plus",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "OCV",
        "display": "Inactivated oral cholera vaccine"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpVUAU"
  },
  "routeOfAdministration": "Oral",
  "vialMonitor": "Type 30",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qtQAA"
  },
  "applicantName": "EuBiologics Co.  Ltd.",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qyQAA"
  },
  "nraName": "Ministry of Food and Drug Safety (MFDS)",
  "nraCountry": "Republic of Korea",
  "shelfLife": "24 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X00004993qtQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00004993qyQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X00004993qtQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00004993qyQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpVUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VacfUAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005l0krYAA"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00004993qtQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiiuUACIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
