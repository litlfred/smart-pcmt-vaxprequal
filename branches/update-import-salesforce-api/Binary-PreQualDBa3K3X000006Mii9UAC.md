# PreQualDBa3K3X000006Mii9UAC - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQualDBa3K3X000006Mii9UAC**

## Example Binary: PreQualDBa3K3X000006Mii9UAC

This content is an example of the [WHO PreQual Product](StructureDefinition-PreQualProduct.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2006-05-09",
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
    "value": "a3K3X000006Mii9UAC"
  },
  "productName": "FVP-P-79",
  "vaccineFullName": "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
  "vaccineAbbreviatedName": "dT",
  "vaccineCommercialName": "Tetadif",
  "routeOfAdministration": "Intramuscular",
  "applicantName": "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.",
  "nraName": "Bulgarian Drug Agency (BDA)",
  "preservative": "Thiomersal",
  "preservativeConcentration": "0.01%",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p2jQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00003cPkgXQAS"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p2jQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00003cPkgXQAS"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSokUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VaavUAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005iAAVYA2"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p2jQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006Mii9UACIng3"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
