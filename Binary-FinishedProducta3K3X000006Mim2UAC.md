# PreQual Product: Celtura - IIVPandemic - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Celtura - IIVPandemic**

## Example Binary: PreQual Product: Celtura - IIVPandemic

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2009-12-17",
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
  "numDoses": 17,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006Mim2UAC"
  },
  "productName": "FVP-P-210",
  "vaccineFullName": "Human pandemic influenza vaccine",
  "vaccineAbbreviatedName": "IIVPandemic",
  "vaccineCommercialName": "Celtura",
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
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine may be used in subsequent immunization sessions (up to 28 days) if the conditions outlined in the WHO Policy Statement are met.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4OQAQ"
  },
  "applicantName": "Seqirus GmbH",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4pQAA"
  },
  "nraName": "Paul Ehrlich Institute",
  "nraCountry": "Germany",
  "shelfLife": "6 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "There is no routine production for this vaccine.",
  "preservative": "Thiomersal",
  "preservativeConcentration": "0.1mg/mL",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p4OQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4pQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p4OQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4pQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpKUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VakWUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005igFCYAY"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4OQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006Mim2UACIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
