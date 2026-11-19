# PreQual Product: Rotavac - LARV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Rotavac - LARV**

## Example Binary: PreQual Product: Rotavac - LARV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2018-01-05",
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
    "value": "a3K3X000006MiizUAC"
  },
  "productName": "FVP-P-343",
  "vaccineFullName": "Rotavirus vaccine (live attenuated) (oral)",
  "vaccineAbbreviatedName": "LARV",
  "vaccineCommercialName": "Rotavac",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "LARV",
        "display": "Rotavirus vaccine (live attenuated) (oral)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpYUAU"
  },
  "routeOfAdministration": "Oral",
  "vialMonitor": "Type 2",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine may be used in subsequent immunization sessions (up to 28 days) if the conditions outlined in the WHO Policy Statement are met.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3cQAA"
  },
  "applicantName": "Bharat Biotech International Limited",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4fQAA"
  },
  "nraName": "Central Drugs Standard Control Organization (CDSCO)",
  "nraCountry": "India",
  "shelfLife": "24 months",
  "storageTemperature": "-20°C",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "STORAGE TEMPERATUREStability data indicates that vaccine can be stored at 2-8°C until discard point of VVM2. (at 5°C the VVM2 discard point is 225 days). For the delivery to PAHO without VVM a maximum storage of 6 months at 2-8°C .",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3cQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4fQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3cQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4fQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpYUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VacrUAC"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3cQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiizUACIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
