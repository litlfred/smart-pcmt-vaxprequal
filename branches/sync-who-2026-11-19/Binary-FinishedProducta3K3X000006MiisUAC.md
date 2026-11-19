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
  "dateOfPrequal": "2003-05-29",
  "assessmentProcedure": "PrequalificationStandard",
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
  "numDoses": 20,
  "productId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3K3X000006MiisUAC"
  },
  "productName": "FVP-P-117",
  "vaccineFullName": "BCG",
  "vaccineAbbreviatedName": "BCG",
  "vaccineCommercialName": "BCG Vaccine",
  "vaccineType": {
    "coding": [
      {
        "system": "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
        "code": "BCG",
        "display": "BCG"
      }
    ]
  },
  "vaccineTypeId": {
    "system": "https://extranet.who.int/prequal/api",
    "value": "a3S3X000003cSogUAE"
  },
  "routeOfAdministration": "Intradermal",
  "vialMonitor": "Type 14",
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
  "shelfLife": "24 months",
  "storageTemperature": "2 - 8°C",
  "diluent": "Sodium chloride (0.9%)",
  "lastPublishingDate": "2024-09-10",
  "publishingRemarks": "If a 0.05mL dose is recommended this presentation is indicated as 20 doses.  If a  0.1mL dose is used this presentation is indicated as 10 doses.Cold chain volume (cc) per dose: 1.757 (0.1 ml dose)  / 0.878 (0.05 ml dose) Vial                                                1.2528 (0.1 ml dose) /  0.6264 (0.05 dose) Ampoule",
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
    "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine/PreQualVaccinea3S3X000003cSogUAE"
  },
  "packagingLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging/PreQualPackaginga3H3X000001VacdUAC"
    }
  ],
  "siteLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail/PreQualSite0013X00003cPkzfQAC"
    }
  ],
  "ingredientLM": [
    {
      "reference": "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient/PreQualIngredienta3K3X000006MiisUACIng2"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
