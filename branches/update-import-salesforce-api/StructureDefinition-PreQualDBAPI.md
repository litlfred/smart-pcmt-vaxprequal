# WHO Vaccine PreQual DB (API) - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO Vaccine PreQual DB (API)**

## Logical Model: WHO Vaccine PreQual DB (API) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBAPI | *Version*:0.1.0 |
| Draft as of 2026-03-11 | *Computable Name*:PreQualDBAPI |

 
WHO Vaccine PreQual DB (API).
 Logical model for the WHO PreQual DB as provided by the backend API at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines This model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export. 
Key fields from the API (FinishedVaccineProducts): ProductDetails.Identification.Id - Vaccine Product ID (authoritative) ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447) ProductDetails.Type - Product type code (e.g. Finished Vaccine Product) ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification ProductDetails.AssessmentProcedure - Assessment procedure code ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.) ProductDetails.PharmaceuticalForm - Pharmaceutical form details ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses ProductDetails.NRADetails - Responsible NRA with ID, name, address ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names ProductDetails.StorageDetails - Storage temperature and shelf life ProductDetails.Status - Prequalification status code 

**Usages:**

* Derived from this Logical Model: [WHO PreQual Product](StructureDefinition-PreQualProduct.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualDBAPI)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualDBAPI.csv), [Excel](StructureDefinition-PreQualDBAPI.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualDBAPI",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBAPI",
  "version" : "0.1.0",
  "name" : "PreQualDBAPI",
  "title" : "WHO Vaccine PreQual DB (API)",
  "status" : "draft",
  "date" : "2026-03-11T13:44:05+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "WHO Vaccine PreQual DB (API).  \nLogical model for the WHO PreQual DB as provided by the backend API at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nThis model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export.\n\nKey fields from the API (FinishedVaccineProducts):\n  ProductDetails.Identification.Id - Vaccine Product ID (authoritative)\n  ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447)\n  ProductDetails.Type - Product type code (e.g. Finished Vaccine Product)\n  ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification\n  ProductDetails.AssessmentProcedure - Assessment procedure code\n  ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address\n  ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.)\n  ProductDetails.PharmaceuticalForm - Pharmaceutical form details\n  ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses\n  ProductDetails.NRADetails - Responsible NRA with ID, name, address\n  ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names\n  ProductDetails.StorageDetails - Storage temperature and shelf life\n  ProductDetails.Status - Prequalification status code",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBAPI",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualDBAPI",
      "path" : "PreQualDBAPI",
      "short" : "WHO Vaccine PreQual DB (API)",
      "definition" : "WHO Vaccine PreQual DB (API).  \nLogical model for the WHO PreQual DB as provided by the backend API at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nThis model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export.\n\nKey fields from the API (FinishedVaccineProducts):\n  ProductDetails.Identification.Id - Vaccine Product ID (authoritative)\n  ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447)\n  ProductDetails.Type - Product type code (e.g. Finished Vaccine Product)\n  ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification\n  ProductDetails.AssessmentProcedure - Assessment procedure code\n  ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address\n  ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.)\n  ProductDetails.PharmaceuticalForm - Pharmaceutical form details\n  ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses\n  ProductDetails.NRADetails - Responsible NRA with ID, name, address\n  ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names\n  ProductDetails.StorageDetails - Storage temperature and shelf life\n  ProductDetails.Status - Prequalification status code"
    },
    {
      "id" : "PreQualDBAPI.productId",
      "path" : "PreQualDBAPI.productId",
      "short" : "Vaccine Product ID (authoritative)",
      "definition" : "Vaccine Product ID (authoritative)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualDBAPI.productName",
      "path" : "PreQualDBAPI.productName",
      "short" : "Product reference name (e.g. FVP-P-447)",
      "definition" : "Product reference name (e.g. FVP-P-447)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.productType",
      "path" : "PreQualDBAPI.productType",
      "short" : "Product type code from PreQualDatabaseMetadata (e.g. FinishedVaccineProduct)",
      "definition" : "Product type code from PreQualDatabaseMetadata (e.g. FinishedVaccineProduct)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualDBAPI.dateOfPrequal",
      "path" : "PreQualDBAPI.dateOfPrequal",
      "short" : "Date of prequalification acceptance",
      "definition" : "Date of prequalification acceptance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "PreQualDBAPI.assessmentProcedure",
      "path" : "PreQualDBAPI.assessmentProcedure",
      "short" : "Assessment procedure code from PreQualDatabaseMetadata (e.g. PrequalificationStandard)",
      "definition" : "Assessment procedure code from PreQualDatabaseMetadata (e.g. PrequalificationStandard)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualDBAPI.status",
      "path" : "PreQualDBAPI.status",
      "short" : "Product status code from PreQualDatabaseMetadata (e.g. Prequalified)",
      "definition" : "Product status code from PreQualDatabaseMetadata (e.g. Prequalified)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualDBAPI.pharmaceuticalForm",
      "path" : "PreQualDBAPI.pharmaceuticalForm",
      "short" : "Pharmaceutical form code from PreQualDatabaseMetadata",
      "definition" : "Pharmaceutical form code from PreQualDatabaseMetadata",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualDBAPI.presentation",
      "path" : "PreQualDBAPI.presentation",
      "short" : "Presentation (e.g. Vial, Ampoule)",
      "definition" : "Presentation (e.g. Vial, Ampoule)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "PreQualDBAPI.numDoses",
      "path" : "PreQualDBAPI.numDoses",
      "short" : "Number of doses per primary container",
      "definition" : "Number of doses per primary container",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "PreQualDBAPI.vaccineFullName",
      "path" : "PreQualDBAPI.vaccineFullName",
      "short" : "Vaccine full name",
      "definition" : "Vaccine full name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.vaccineAbbreviatedName",
      "path" : "PreQualDBAPI.vaccineAbbreviatedName",
      "short" : "Vaccine abbreviated name",
      "definition" : "Vaccine abbreviated name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.vaccineCommercialName",
      "path" : "PreQualDBAPI.vaccineCommercialName",
      "short" : "Vaccine commercial name",
      "definition" : "Vaccine commercial name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.vaccineTypeId",
      "path" : "PreQualDBAPI.vaccineTypeId",
      "short" : "Vaccine type ID",
      "definition" : "Vaccine type ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualDBAPI.routeOfAdministration",
      "path" : "PreQualDBAPI.routeOfAdministration",
      "short" : "Route of administration code from PreQualDatabaseMetadata",
      "definition" : "Route of administration code from PreQualDatabaseMetadata",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualDBAPI.applicantId",
      "path" : "PreQualDBAPI.applicantId",
      "short" : "Applicant/manufacturer organization ID (may be absent if not yet assigned)",
      "definition" : "Applicant/manufacturer organization ID (may be absent if not yet assigned)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualDBAPI.applicantName",
      "path" : "PreQualDBAPI.applicantName",
      "short" : "Applicant/manufacturer organization name (always present from API data)",
      "definition" : "Applicant/manufacturer organization name (always present from API data)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.applicantAddress",
      "path" : "PreQualDBAPI.applicantAddress",
      "short" : "Applicant organization address",
      "definition" : "Applicant organization address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "PreQualDBAPI.nraId",
      "path" : "PreQualDBAPI.nraId",
      "short" : "NRA organization ID (may be absent if not yet assigned)",
      "definition" : "NRA organization ID (may be absent if not yet assigned)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualDBAPI.nraName",
      "path" : "PreQualDBAPI.nraName",
      "short" : "Responsible NRA name (always present from API data)",
      "definition" : "Responsible NRA name (always present from API data)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.nraCountry",
      "path" : "PreQualDBAPI.nraCountry",
      "short" : "NRA country",
      "definition" : "NRA country",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.shelfLife",
      "path" : "PreQualDBAPI.shelfLife",
      "short" : "Shelf life (e.g. 24 months)",
      "definition" : "Shelf life (e.g. 24 months)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.storageTemperature",
      "path" : "PreQualDBAPI.storageTemperature",
      "short" : "Storage temperature (e.g. 2 - 8°C)",
      "definition" : "Storage temperature (e.g. 2 - 8°C)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.diluent",
      "path" : "PreQualDBAPI.diluent",
      "short" : "Diluent information",
      "definition" : "Diluent information",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.lastPublishingDate",
      "path" : "PreQualDBAPI.lastPublishingDate",
      "short" : "Last publishing date",
      "definition" : "Last publishing date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "PreQualDBAPI.publishingRemarks",
      "path" : "PreQualDBAPI.publishingRemarks",
      "short" : "Publishing remarks",
      "definition" : "Publishing remarks",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.preservative",
      "path" : "PreQualDBAPI.preservative",
      "short" : "Preservative name (e.g. Thiomersal)",
      "definition" : "Preservative name (e.g. Thiomersal)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDBAPI.preservativeConcentration",
      "path" : "PreQualDBAPI.preservativeConcentration",
      "short" : "Preservative concentration (e.g. 0.01%)",
      "definition" : "Preservative concentration (e.g. 0.01%)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
