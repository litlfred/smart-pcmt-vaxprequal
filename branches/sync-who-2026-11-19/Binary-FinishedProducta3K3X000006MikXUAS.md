# PreQual Product: Fluzone Quadrivalent - IIV4 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Fluzone Quadrivalent - IIV4**

## Example Binary: PreQual Product: Fluzone Quadrivalent - IIV4

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2015-11-04",
  "assessmentProcedure": "PrequalificationAbridged",
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
    "value": "a3K3X000006MikXUAS"
  },
  "productName": "FVP-P-295",
  "vaccineFullName": "Influenza vaccine quadrivalent (surface antigens, inactivated)",
  "vaccineAbbreviatedName": "IIV4",
  "vaccineCommercialName": "Fluzone Quadrivalent",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "IIV4",
        "display": "Influenza vaccine quadrivalent (surface antigens, inactivated)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpSUAU"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 2",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4BQAQ"
  },
  "applicantName": "Sanofi Pasteur Inc.",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p6CQAQ"
  },
  "nraName": "US Food and Drug Administration- Office of Vaccine Research and Review (US FDA)",
  "nraCountry": "United States of America",
  "shelfLife": "<=18 months (June of year following manufacture)",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p4BQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p6CQAQ"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p4BQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p6CQAQ"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpSUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VagZUAS"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4BQAQ"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
