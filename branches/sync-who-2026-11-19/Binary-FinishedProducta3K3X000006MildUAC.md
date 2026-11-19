# PreQual Product: Sinsavac - YF - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Sinsavac - YF**

## Example Binary: PreQual Product: Sinsavac - YF

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2022-10-14",
  "assessmentProcedure": "PrequalificationAbridged",
  "status": "Prequalified",
  "pharmaceuticalForm": "Lyophilisedactivecomponenttobereconstitutedwithexcipientdiluentbeforeuse",
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
    "value": "a3K3X000006MildUAC"
  },
  "productName": "FVP-P-436",
  "vaccineFullName": "Yellow fever vaccine (live attenuated)",
  "vaccineAbbreviatedName": "YF",
  "vaccineCommercialName": "Sinsavac",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "YF",
        "display": "Yellow fever vaccine (live attenuated)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpuUAE"
  },
  "routeOfAdministration": "Intramuscularorsubcutaneous",
  "vialMonitor": "Type 14",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3KQAQ"
  },
  "applicantName": "Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p6VQAQ"
  },
  "nraName": "Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation",
  "nraCountry": "Russian Federation",
  "shelfLife": "24 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Water for injection",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "SmartBioTech is a distributor responsable for marketing related activities to SinSaVac™vaccine.",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3KQAQ"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X0000498p6VQAQ"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3KQAQ"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X0000498p6VQAQ"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpuUAE"
  },
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005lIeXYAU"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3KQAQ"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
