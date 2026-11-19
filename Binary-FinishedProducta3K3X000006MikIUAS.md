# PreQual Product: FVP-P-app8 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: FVP-P-app8**

## Example Binary: PreQual Product: FVP-P-app8

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2010-07-01",
  "assessmentProcedure": "PrequalificationStandard",
  "status": "Prequalified",
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MikIUAS"
  },
  "productName": "FVP-P-app8",
  "vaccineFullName": "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
  "vaccineAbbreviatedName": "DTwP",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "DTwP",
        "display": "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSomUAE"
  },
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3pQAA"
  },
  "applicantName": "Sanofi Healthcare India Private Limited",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4fQAA"
  },
  "nraName": "Central Drugs Standard Control Organization (CDSCO)",
  "nraCountry": "India",
  "lastPublishingDate": "2023-12-21",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3pQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4fQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3pQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4fQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSomUAE"
  },
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3pQAA"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
