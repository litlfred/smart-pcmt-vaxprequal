# PreQual Product: Novel Oral Poliomyelitis Vaccine Type 2 (nOPV2) - nOPV2 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Novel Oral Poliomyelitis Vaccine Type 2 (nOPV2) - nOPV2**

## Example Binary: PreQual Product: Novel Oral Poliomyelitis Vaccine Type 2 (nOPV2) - nOPV2

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2020-11-13",
  "assessmentProcedure": "EUL",
  "status": "Acceptable",
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
  "numDoses": 50,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3KNN0000001VL72AM"
  },
  "productName": "FVP-P-404",
  "vaccineFullName": "Poliomyelitis vaccines (novel, oral, live, attenuated,  type 2)",
  "vaccineAbbreviatedName": "nOPV2",
  "vaccineCommercialName": "Novel Oral Poliomyelitis Vaccine Type 2 (nOPV2)",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "nOPV2",
        "display": "Poliomyelitis vaccines (novel, oral, live, attenuated,  type 2)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000004URSmUAO"
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
  "shelfLife": "24",
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
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000004URSmUAO"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3HNN0000007wby2AA"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3IQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3KNN0000001VL72AMIng4"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
