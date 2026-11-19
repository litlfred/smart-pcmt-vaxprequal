# PreQualDBa3K3X000006MiiFUAS - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQualDBa3K3X000006MiiFUAS**

## Example Binary: PreQualDBa3K3X000006MiiFUAS

This content is an example of the [WHO PreQual Product](StructureDefinition-PreQualProduct.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "1995-04-04",
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
  "numDoses": 20,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MiiFUAS"
  },
  "productName": "FVP-P-136",
  "vaccineFullName": "Tetanus vaccine (adsorbed)",
  "vaccineAbbreviatedName": "TT",
  "vaccineCommercialName": "Tetanus  Toxoid Vaccine Adsorbed",
  "routeOfAdministration": "Intramuscular",
  "applicantName": "Serum Institute of India",
  "nraName": "Central Drugs Standard Control Organization (CDSCO)",
  "preservative": "Thiomersal",
  "preservativeConcentration": "0.01%",
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
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpqUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VabCUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005iLDxYAM"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00003cPkzfQAC"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiiFUASIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
