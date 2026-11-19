# PreQual Product: Adacel - DTaP - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Adacel - DTaP**

## Example Binary: PreQual Product: Adacel - DTaP

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2017-05-08",
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
    "value": "a3K3X000006MikbUAC"
  },
  "productName": "FVP-P-315",
  "vaccineFullName": "Diphtheria, tetanus and (acellular) pertussis vaccine (adsorbed)",
  "vaccineAbbreviatedName": "DTaP",
  "vaccineCommercialName": "Adacel",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "DTaP",
        "display": "Diphtheria, tetanus and (acellular) pertussis vaccine (adsorbed)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSonUAE"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 30",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4MQAQ"
  },
  "applicantName": "Sanofi Pasteur Limited",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "001NN00000KExPmYAL"
  },
  "nraName": "Heath Canada - PQ",
  "nraCountry": "Canada",
  "shelfLife": "48 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2025-07-14",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p4MQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder001NN00000KExPmYAL"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p4MQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA001NN00000KExPmYAL"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSonUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VagkUAC"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4MQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MikbUACIng3"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
