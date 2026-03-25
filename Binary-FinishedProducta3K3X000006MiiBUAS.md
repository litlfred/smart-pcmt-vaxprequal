# PreQual Product: Dengvaxia - TDV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Dengvaxia - TDV**

## Example Binary: PreQual Product: Dengvaxia - TDV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
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
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSoiUAE"
  },
  "routeOfAdministration": "Subcutaneous",
  "vialMonitor": "Type 14",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3PQAQ"
  },
  "applicantName": "Sanofi Pasteur SA",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4bQAA"
  },
  "nraName": "Agence nationale de sécurité du médicament et des produits de santé (ANSM)",
  "nraCountry": "France",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Sodium chloride (0.9%)",
  "lastPublishingDate": "2024-09-10",
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
