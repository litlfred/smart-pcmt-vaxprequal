# PreQual Product: Japanese Encephalitis Vaccine Live (SA14-14-2) - JE - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Japanese Encephalitis Vaccine Live (SA14-14-2) - JE**

## Example Binary: PreQual Product: Japanese Encephalitis Vaccine Live (SA14-14-2) - JE

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2013-10-09",
  "assessmentProcedure": "PrequalificationStandard",
  "status": "Prequalified",
  "pharmaceuticalForm": "Lyophilisedactivecomponenttobereconstitutedwithexcipientdiluentbeforeuse",
  "presentation": {
    "coding": [
      {
        "system": "https://extranet.who.int/prequal/vaccines/prequalified-vaccines",
        "code": "Twovialsetactiveexcipient",
        "display": "Two vial set (active + excipient)"
      }
    ]
  },
  "numDoses": 1,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MiicUAC"
  },
  "productName": "FVP-P-271",
  "vaccineFullName": "Japanese encephalitis vaccine (live, attenuated) for human use",
  "vaccineAbbreviatedName": "JE",
  "vaccineCommercialName": "Japanese Encephalitis Vaccine Live (SA14-14-2)",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "JE",
        "display": "Japanese encephalitis vaccine (live, attenuated) for human use"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpXUAU"
  },
  "routeOfAdministration": "Subcutaneous",
  "vialMonitor": "Type 14",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p2qQAA"
  },
  "applicantName": "Chengdu Institute of Biological Products Co. Ltd",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4wQAA"
  },
  "nraName": "National Medical Products Administration  (NMPA)",
  "nraCountry": "China",
  "shelfLife": "24 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Water for injection",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p2qQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4wQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p2qQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4wQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpXUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VacAUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005kEEnYAM"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p2qQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiicUACIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
