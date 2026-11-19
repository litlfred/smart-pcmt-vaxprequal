# PreQual Product: IMOJEV MD - JE - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: IMOJEV MD - JE**

## Example Binary: PreQual Product: IMOJEV MD - JE

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2014-09-18",
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
  "numDoses": 4,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MilWUAS"
  },
  "productName": "FVP-P-276",
  "vaccineFullName": "Japanese encephalitis vaccine (live, attenuated) for human use",
  "vaccineAbbreviatedName": "JE",
  "vaccineCommercialName": "IMOJEV MD",
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
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3uQAA"
  },
  "applicantName": "GPO-MBP Co.  Ltd. (GPO-MBP)",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p50QAA"
  },
  "nraName": "Thai Food and Drug Administration (FDA)",
  "nraCountry": "Thailand",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Sodium chloride (0.9%)",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "The manufacturer of the finished product is Government Pharmaceutical Organization-Merieux Biological Products Co (GPO-MBP) a joint venture between GPO (Thailand) and Sanofi Pasteur.  Sanofi Pasteur is the owner of the product as indicated in product labelling.",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3uQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p50QAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3uQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p50QAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpXUAU"
  },
  "bulkSupplierLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualBulkSupplier/PreQualBulkSupplier0013X0000498p4BQAQ"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VajSUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005kFIwYAM"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4BQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MilWUASIng1"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
