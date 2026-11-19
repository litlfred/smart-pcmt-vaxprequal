# PreQual Product: Mosquirix - Malaria - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: Mosquirix - Malaria**

## Example Binary: PreQual Product: Mosquirix - Malaria

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2022-07-15",
  "assessmentProcedure": "PrequalificationAbridged",
  "status": "Prequalified",
  "pharmaceuticalForm": "LiquidActivecomponenttobemixedwithsecondcomponentbeforeuse",
  "presentation": {
    "coding": [
      {
        "system": "https://extranet.who.int/prequal/vaccines/prequalified-vaccines",
        "code": "Twovialsetactiveactive",
        "display": "Two vial set (active + active)"
      }
    ]
  },
  "numDoses": 2,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MikCUAS"
  },
  "productName": "FVP-P-424",
  "vaccineFullName": "Recombinant malaria vaccine",
  "vaccineAbbreviatedName": "Malaria",
  "vaccineCommercialName": "Mosquirix",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "Malaria",
        "display": "Recombinant malaria vaccine"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpnUAE"
  },
  "routeOfAdministration": "Intramuscular",
  "vialMonitor": "Type 14",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
  "applicantId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X0000498p3gQAA"
  },
  "applicantName": "GlaxoSmithKline Biologicals SA",
  "nraId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "0013X00003cPkkYQAS"
  },
  "nraName": "European Medicines Agency",
  "nraCountry": "Netherlands",
  "shelfLife": "36 months",
  "storageTemperature": "2 - 8°C",
  "lastPublishingDate": "2024-09-10",
  "manufacturerReference": {
    "reference": "Organization/Manufacturer0013X0000498p3gQAA"
  },
  "responsibleNRAReference": {
    "reference": "Organization/Holder0013X00003cPkkYQAS"
  },
  "manufacturerLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer/PreQualManufacturer0013X0000498p3gQAA"
  },
  "nraLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA/PreQualNRA0013X00003cPkkYQAS"
  },
  "vaccineLM": {
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpnUAE"
  },
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005lFokYAE"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X0000498p3gQAA"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
