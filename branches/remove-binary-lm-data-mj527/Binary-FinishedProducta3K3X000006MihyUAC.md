# PreQual Product: Euvax B - HepB - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Euvax B - HepB**

## Example Binary: PreQual Product: Euvax B - HepB

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "1996-11-22",
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
    "value": "a3K3X000006MihyUAC"
  },
  "productName": "FVP-P-68",
  "vaccineFullName": "Hepatitis B vaccine (recombinant)",
  "vaccineAbbreviatedName": "HepB",
  "vaccineCommercialName": "Euvax B",
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpJUAU"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 30",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qnQAA"
  },
  "applicantName": "LG Chem Ltd (LGC)",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qyQAA"
  },
  "nraName": "Ministry of Food and Drug Safety (MFDS)",
  "nraCountry": "Republic of Korea",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "preservative": "Thiomersal",
  "preservativeConcentration": "0.01%",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X00004993qnQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00004993qyQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X00004993qnQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00004993qyQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpJUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VaaPUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005i5QyYAI"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00004993qnQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MihyUACIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
