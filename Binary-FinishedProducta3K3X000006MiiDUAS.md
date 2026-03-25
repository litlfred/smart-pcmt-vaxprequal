# PreQual Product: BCG Vaccine - BCG - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: BCG Vaccine - BCG**

## Example Binary: PreQual Product: BCG Vaccine - BCG

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "1991-02-01",
  "assessmentProcedure": "PrequalificationStandard",
  "status": "Prequalified",
  "pharmaceuticalForm": "Lyophilisedactivecomponenttobereconstitutedwithexcipientdiluentbeforeuse",
  "presentation": {
    "coding": [
      {
        "system": "https://extranet.who.int/prequal/vaccines/prequalified-vaccines",
        "code": "Ampoule",
        "display": "Ampoule"
      }
    ]
  },
  "numDoses": 20,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MiiDUAS"
  },
  "productName": "FVP-P-74",
  "vaccineFullName": "BCG",
  "vaccineAbbreviatedName": "BCG",
  "vaccineCommercialName": "BCG Vaccine",
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSogUAE"
  },
  "routeOfAdministration": "Intradermal",
  "vialMonitor": "Type 30",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p2jQAA"
  },
  "applicantName": "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00003cPkgXQAS"
  },
  "nraName": "Bulgarian Drug Agency (BDA)",
  "nraCountry": "Bulgaria",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Sodium chloride (0.9%)",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "Diluent is in a separate carton and can be stored outside the cold chain volume.",
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
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSogUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001Vab5UAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005i4umYAA"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p2jQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiiDUASIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
