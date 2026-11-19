# PreQualDBa3K3X000006MiiBUAS - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQualDBa3K3X000006MiiBUAS**

## Example Binary: PreQualDBa3K3X000006MiiBUAS

This content is an example of the [WHO PreQual Product](StructureDefinition-PreQualProduct.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2020-03-25",
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
  "numDoses": 5,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MiiBUAS"
  },
  "productName": "FVP-P-329",
  "vaccineFullName": "Dengue tetravalent vaccine (live, attenuated)",
  "vaccineAbbreviatedName": "TDV",
  "vaccineCommercialName": "Dengvaxia",
  "routeOfAdministration": "Subcutaneous",
  "applicantName": "Sanofi Pasteur SA",
  "nraName": "Agence nationale de sécurité du médicament et des produits de santé (ANSM)",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3PQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4bQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3PQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4bQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSoiUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VaazUAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005knsbYAA"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3PQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiiBUASIng5"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
