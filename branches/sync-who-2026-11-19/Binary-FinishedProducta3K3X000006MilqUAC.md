# PreQual Product: Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed - DTwP-HepB-Hib - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed - DTwP-HepB-Hib**

## Example Binary: PreQual Product: Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed - DTwP-HepB-Hib

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2010-09-22",
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
  "numDoses": 1,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MilqUAC"
  },
  "productName": "FVP-P-223",
  "vaccineFullName": "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
  "vaccineAbbreviatedName": "DTwP-HepB-Hib",
  "vaccineCommercialName": "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed",
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
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00003cPkzfQAC"
  },
  "applicantName": "Serum Institute of India",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p4fQAA"
  },
  "nraName": "Central Drugs Standard Control Organization (CDSCO)",
  "nraCountry": "India",
  "shelfLife": "30 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "Feb 2016: Approval of variation to change vial size of single dose vial. For some time batches already filled in the old vial may be distributed.  Due to the smaller available vial label space the location of the VVM has moved from the label to the flip-off cap.",
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
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSowUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001Vak5UAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005iignYAA"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00003cPkzfQAC"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MilqUACIng6"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
