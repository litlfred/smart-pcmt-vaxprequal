# PreQual Product: ROTASIIL®Thermo - LARV - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual Product: ROTASIIL®Thermo - LARV**

## Example Binary: PreQual Product: ROTASIIL®Thermo - LARV

This content is an example of the [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "productType": "FinishedVaccineProduct",
  "dateOfPrequal": "2020-01-28",
  "assessmentProcedure": "PrequalificationAbridged",
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
  "numDoses": 2,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MijMUAS"
  },
  "productName": "FVP-P-397",
  "vaccineFullName": "Rotavirus vaccine (live attenuated) (oral)",
  "vaccineAbbreviatedName": "LARV",
  "vaccineCommercialName": "ROTASIIL®Thermo",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "LARV",
        "display": "Rotavirus vaccine (live attenuated) (oral)"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSpYUAU"
  },
  "routeOfAdministration": "Oral",
  "vialMonitor": "Type +250",
  "multidoseVialPolicy": "WHO recommends that opened vials of this vaccine should be discarded 6 hours after opening or at the end of the immunization session, whichever comes first.",
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
  "storageTemperature": "25°C",
  "diluent": "Citrate bicarbonate buffer",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "Even though the manufacturer provided stability data to allow storage of the ROTASIIL®Thermo vaccine at higher temperatures than 8°C with use of higher category of VVM+250 the vaccines should be stored at temperatures lower than 25°C and countries should ensure adequate facilities (conditioned rooms) with temperatures not exceeding 25°C. Otherwise the VVM will reach the end point for use before the vaccine reaches the end of the approved shelf-life.",
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
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSpYUAU"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VadpUAC"
    }
  ],
  "documentLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail/PreQualDocument069NN000005lFlVYAU"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00003cPkzfQAC"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MijMUASIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
