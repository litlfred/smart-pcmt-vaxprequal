# PreQualDBa3K3X000006MiiMUAS - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQualDBa3K3X000006MiiMUAS**

## Example Binary: PreQualDBa3K3X000006MiiMUAS

This content is an example of the [WHO PreQual Product](StructureDefinition-PreQualProduct.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "1993-02-15",
  "assessmentProcedure": "PrequalificationStandard",
  "status": "Prequalified",
  "pharmaceuticalForm": "Lyophilisedactivecomponenttobereconstitutedwithexcipientdiluentbeforeuse",
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
    "value": "a3K3X000006MiiMUAS"
  },
  "productName": "FVP-P-145",
  "vaccineFullName": "Measles vaccine (live, attenuated)",
  "vaccineAbbreviatedName": "M",
  "vaccineCommercialName": "Measles Vaccine Live Attenuated",
  "routeOfAdministration": "Subcutaneous",
  "applicantName": "Serum Institute of India",
  "nraName": "Central Drugs Standard Control Organization (CDSCO)",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X00003cPkzfQAC"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4fQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X00003cPkzfQAC"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4fQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpZUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VabVUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005iLnTYAU"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00003cPkzfQAC"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiiMUASIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
