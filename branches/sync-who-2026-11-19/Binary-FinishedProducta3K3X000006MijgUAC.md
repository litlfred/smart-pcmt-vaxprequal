# PreQual Product: influenza trivalent vaccine (split virion inactivated) - IIV3 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: influenza trivalent vaccine (split virion inactivated) - IIV3**

## Example Binary: PreQual Product: influenza trivalent vaccine (split virion inactivated) - IIV3

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2021-04-26",
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
    "value": "a3K3X000006MijgUAC"
  },
  "productName": "FVP-P-312",
  "vaccineFullName": "Influenza vaccine trivalent (split virion, inactivated)",
  "vaccineAbbreviatedName": "IIV3",
  "vaccineCommercialName": "influenza trivalent vaccine (split virion inactivated)",
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
  "routeOfAdministration": "Intramuscularordeepsubcutaneous",
  "vialMonitor": "Type 7",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine may be used in subsequent immunization sessions (up to 28 days) if the conditions outlined in the WHO Policy Statement are met.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p2iQAA"
  },
  "applicantName": "Instituto Butantan",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4yQAA"
  },
  "nraName": "Agencia Nacional da Vigilancia Sanitaria (ANVISA)",
  "nraCountry": "Brazil",
  "shelfLife": "12 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "preservative": "Thiomersal",
  "preservativeConcentration": "2 ?g/dose",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p2iQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4yQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p2iQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4yQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpMUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VaebUAC"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p2iQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MijgUACIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
