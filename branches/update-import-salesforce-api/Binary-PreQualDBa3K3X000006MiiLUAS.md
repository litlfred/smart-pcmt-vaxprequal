# PreQualDBa3K3X000006MiiLUAS - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQualDBa3K3X000006MiiLUAS**

## Example Binary: PreQualDBa3K3X000006MiiLUAS

This content is an example of the [WHO PreQual Product](StructureDefinition-PreQualProduct.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct",
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
  "numDoses": 5,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MiiLUAS"
  },
  "productName": "FVP-P-272",
  "vaccineFullName": "Japanese encephalitis vaccine (live, attenuated) for human use",
  "vaccineAbbreviatedName": "JE",
  "vaccineCommercialName": "Japanese Encephalitis Vaccine Live (SA14-14-2)",
  "routeOfAdministration": "Subcutaneous",
  "applicantName": "Chengdu Institute of Biological Products Co. Ltd",
  "nraName": "National Medical Products Administration  (NMPA)",
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
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VabTUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005kErVYAU"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p2qQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiiLUASIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
