# PreQual Product: Vaxigrip - IIV3 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Vaxigrip - IIV3**

## Example Binary: PreQual Product: Vaxigrip - IIV3

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2011-06-30",
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
  "numDoses": 10,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MilnUAC"
  },
  "productName": "FVP-P-238",
  "vaccineFullName": "Influenza vaccine trivalent (split virion, inactivated)",
  "vaccineAbbreviatedName": "IIV3",
  "vaccineCommercialName": "Vaxigrip",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "IIV3",
        "display": "Influenza vaccine trivalent (split virion, inactivated)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpMUAU"
  },
  "routeOfAdministration": "Intramuscularorsubcutaneous",
  "vialMonitor": "Type 7",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine may be used in subsequent immunization sessions (up to 28 days) if the conditions outlined in the WHO Policy Statement are met.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3PQAQ"
  },
  "applicantName": "Sanofi Pasteur SA",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4bQAA"
  },
  "nraName": "Agence nationale de sécurité du médicament et des produits de santé (ANSM)",
  "nraCountry": "France",
  "shelfLife": "12 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "preservative": "Thiomersal",
  "preservativeConcentration": "0.00%",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3PQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4bQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3PQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4bQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpMUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VajyUAC"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3PQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MilnUACIng4"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
