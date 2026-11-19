# PreQual Product: Eupenta - DTwP-HepB-Hib - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Eupenta - DTwP-HepB-Hib**

## Example Binary: PreQual Product: Eupenta - DTwP-HepB-Hib

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2016-02-10",
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
    "value": "a3K3X000006MijGUAS"
  },
  "productName": "FVP-P-305",
  "vaccineFullName": "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
  "vaccineAbbreviatedName": "DTwP-HepB-Hib",
  "vaccineCommercialName": "Eupenta",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "DTwPHepBHib",
        "display": "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSowUAE"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 14",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine may be used in subsequent immunization sessions (up to 28 days) if the conditions outlined in the WHO Policy Statement are met.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qnQAA"
  },
  "applicantName": "LG Chem Ltd (LGC)",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00004993qyQAA"
  },
  "nraName": "Ministry of Food and Drug Safety (MFDS)",
  "nraCountry": "Republic of Korea",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "preservative": "Thiomersal",
  "preservativeConcentration": "0.01%",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X00004993qnQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00004993qyQAA"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X00004993qnQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00004993qyQAA"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSowUAE"
  },
  "bulkSupplierLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualBulkSupplier/PreQualBulkSupplier0013X0000498p2jQAA"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VadWUAS"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005kIyLYAU"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p2jQAA"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MijGUASIng6"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
