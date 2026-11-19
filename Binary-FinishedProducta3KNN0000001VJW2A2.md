# PreQual Product: Influeza Vaccine (Split Virion), Inactivated - IIV3 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Influeza Vaccine (Split Virion), Inactivated - IIV3**

## Example Binary: PreQual Product: Influeza Vaccine (Split Virion), Inactivated - IIV3

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2023-10-20",
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
    "value": "a3KNN0000001VJW2A2"
  },
  "productName": "FVP-P-455",
  "vaccineFullName": "Influenza vaccine trivalent (split virion, inactivated)",
  "vaccineAbbreviatedName": "IIV3",
  "vaccineCommercialName": "Influeza Vaccine (Split Virion), Inactivated",
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
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 7",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3WQAQ"
  },
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4wQAA"
  },
  "nraName": "National Medical Products Administration  (NMPA)",
  "nraCountry": "China",
  "shelfLife": "12 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4wQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4wQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpMUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3HNN0000007wYq2AI"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
