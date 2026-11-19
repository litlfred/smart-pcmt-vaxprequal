# PreQual Product: Nimenrix - MenACYW-135 - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Nimenrix - MenACYW-135**

## Example Binary: PreQual Product: Nimenrix - MenACYW-135

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2016-08-31",
  "assessmentProcedure": "PrequalificationAbridged",
  "status": "Prequalified",
  "pharmaceuticalForm": "Lyophilisedactivecomponenttobereconstitutedwithexcipientdiluentbeforeuse",
  "presentation": {
    "coding": [
      {
        "system": "https://extranet.who.int/prequal/vaccines/prequalified-vaccines",
        "code": "VialAmpoule",
        "display": "Vial + Ampoule"
      }
    ]
  },
  "numDoses": 1,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MikZUAS"
  },
  "productName": "FVP-P-301",
  "vaccineFullName": "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)",
  "vaccineAbbreviatedName": "MenACYW-135",
  "vaccineCommercialName": "Nimenrix",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "MenACYW135",
        "display": "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpEUAU"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 30",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4CQAQ"
  },
  "applicantName": "Pfizer Europe MA EEIG (Pfizer)",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00003cPkkYQAS"
  },
  "nraName": "European Medicines Agency",
  "nraCountry": "Netherlands",
  "shelfLife": "48 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Sodium chloride (0.9%)",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p4CQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00003cPkkYQAS"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p4CQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00003cPkkYQAS"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpEUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VagfUAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005kIgdYAE"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4CQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MikZUASIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
