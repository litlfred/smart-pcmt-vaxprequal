# PreQual Product: BCG Freeze Dried Glutamate vaccine - BCG - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: BCG Freeze Dried Glutamate vaccine - BCG**

## Example Binary: PreQual Product: BCG Freeze Dried Glutamate vaccine - BCG

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "1987-01-01",
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
    "value": "a3K3X000006MihxUAC"
  },
  "productName": "FVP-P-67",
  "vaccineFullName": "BCG",
  "vaccineAbbreviatedName": "BCG",
  "vaccineCommercialName": "BCG Freeze Dried Glutamate vaccine",
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSogUAE"
  },
  "routeOfAdministration": "Intradermal",
  "vialMonitor": "Type 30",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4ZQAQ"
  },
  "applicantName": "Japan BCG Laboratory (JBL)",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4mQAA"
  },
  "nraName": "Pharmaceutical and Medical Devices Agency (PMDA)",
  "nraCountry": "Japan",
  "shelfLife": "24 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Sodium chloride (0.9%)",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "This presentation is for 20 doses of 0.05 mL (for children under 1 year) or 10 doses of 0.1 mL (for other recipients). This is the recommended dose of BCG vaccine outside the PAHO region. The attached insert is in English French Russian and Portuguese. The manufacturer adds the appropriate monolingual product insert depending on the destination country. For Spanish language text please see the other presentation entry for this vaccine.",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p4ZQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p4mQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p4ZQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p4mQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSogUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VaaLUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005i6DJYAY"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p4ZQAQ"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MihxUACIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
