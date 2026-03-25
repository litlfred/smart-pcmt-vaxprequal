# WHO Vaccine PreQual DB - Finished Vaccine Products - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO Vaccine PreQual DB - Finished Vaccine Products**

## Logical Model: WHO Vaccine PreQual DB - Finished Vaccine Products 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts | *Version*:0.2.0 |
| Draft as of 2026-03-25 | *Computable Name*:FinishedVaccineProducts |

 
WHO Vaccine PreQual DB - Finished Vaccine Products. Logical model for the WHO PreQual DB as provided by the backend API at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines This model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export. Sub-objects with Identification.Id are modeled as separate logical models and linked via references. 
Key fields from the API (FinishedVaccineProducts): ProductDetails.Identification.Id - Vaccine Product ID (authoritative) ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447) ProductDetails.Type - Product type code (e.g. Finished Vaccine Product) ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification ProductDetails.AssessmentProcedure - Assessment procedure code ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.) ProductDetails.PharmaceuticalForm - Pharmaceutical form details ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses ProductDetails.NRADetails - Responsible NRA with ID, name, address ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names ProductDetails.StorageDetails - Storage temperature and shelf life ProductDetails.Status - Prequalification status code 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/FinishedVaccineProducts)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FinishedVaccineProducts.csv), [Excel](StructureDefinition-FinishedVaccineProducts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FinishedVaccineProducts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "version" : "0.2.0",
  "name" : "FinishedVaccineProducts",
  "title" : "WHO Vaccine PreQual DB - Finished Vaccine Products",
  "status" : "draft",
  "date" : "2026-03-25T13:07:53+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "WHO Vaccine PreQual DB - Finished Vaccine Products.\nLogical model for the WHO PreQual DB as provided by the backend API at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nThis model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export.\nSub-objects with Identification.Id are modeled as separate logical models and linked via references.\n\nKey fields from the API (FinishedVaccineProducts):\n  ProductDetails.Identification.Id - Vaccine Product ID (authoritative)\n  ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447)\n  ProductDetails.Type - Product type code (e.g. Finished Vaccine Product)\n  ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification\n  ProductDetails.AssessmentProcedure - Assessment procedure code\n  ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address\n  ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.)\n  ProductDetails.PharmaceuticalForm - Pharmaceutical form details\n  ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses\n  ProductDetails.NRADetails - Responsible NRA with ID, name, address\n  ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names\n  ProductDetails.StorageDetails - Storage temperature and shelf life\n  ProductDetails.Status - Prequalification status code",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/FinishedVaccineProducts",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FinishedVaccineProducts",
      "path" : "FinishedVaccineProducts",
      "short" : "WHO Vaccine PreQual DB - Finished Vaccine Products",
      "definition" : "WHO Vaccine PreQual DB - Finished Vaccine Products.\nLogical model for the WHO PreQual DB as provided by the backend API at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nThis model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export.\nSub-objects with Identification.Id are modeled as separate logical models and linked via references.\n\nKey fields from the API (FinishedVaccineProducts):\n  ProductDetails.Identification.Id - Vaccine Product ID (authoritative)\n  ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447)\n  ProductDetails.Type - Product type code (e.g. Finished Vaccine Product)\n  ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification\n  ProductDetails.AssessmentProcedure - Assessment procedure code\n  ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address\n  ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.)\n  ProductDetails.PharmaceuticalForm - Pharmaceutical form details\n  ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses\n  ProductDetails.NRADetails - Responsible NRA with ID, name, address\n  ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names\n  ProductDetails.StorageDetails - Storage temperature and shelf life\n  ProductDetails.Status - Prequalification status code"
    },
    {
      "id" : "FinishedVaccineProducts.productId",
      "path" : "FinishedVaccineProducts.productId",
      "short" : "Vaccine Product ID (authoritative)",
      "definition" : "Vaccine Product ID (authoritative)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.productName",
      "path" : "FinishedVaccineProducts.productName",
      "short" : "Product reference name (e.g. FVP-P-447)",
      "definition" : "Product reference name (e.g. FVP-P-447)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.productType",
      "path" : "FinishedVaccineProducts.productType",
      "short" : "Product type code from PreQualDatabaseMetadata (e.g. FinishedVaccineProduct)",
      "definition" : "Product type code from PreQualDatabaseMetadata (e.g. FinishedVaccineProduct)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.dateOfPrequal",
      "path" : "FinishedVaccineProducts.dateOfPrequal",
      "short" : "Date of prequalification acceptance",
      "definition" : "Date of prequalification acceptance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.assessmentProcedure",
      "path" : "FinishedVaccineProducts.assessmentProcedure",
      "short" : "Assessment procedure code from PreQualDatabaseMetadata (e.g. PrequalificationStandard)",
      "definition" : "Assessment procedure code from PreQualDatabaseMetadata (e.g. PrequalificationStandard)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.status",
      "path" : "FinishedVaccineProducts.status",
      "short" : "Product status code from PreQualDatabaseMetadata (e.g. Prequalified)",
      "definition" : "Product status code from PreQualDatabaseMetadata (e.g. Prequalified)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.pharmaceuticalForm",
      "path" : "FinishedVaccineProducts.pharmaceuticalForm",
      "short" : "Pharmaceutical form code from PreQualDatabaseMetadata",
      "definition" : "Pharmaceutical form code from PreQualDatabaseMetadata",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.presentation",
      "path" : "FinishedVaccineProducts.presentation",
      "short" : "Presentation (e.g. Vial, Ampoule)",
      "definition" : "Presentation (e.g. Vial, Ampoule)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.numDoses",
      "path" : "FinishedVaccineProducts.numDoses",
      "short" : "Number of doses per primary container",
      "definition" : "Number of doses per primary container",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.vaccineFullName",
      "path" : "FinishedVaccineProducts.vaccineFullName",
      "short" : "Vaccine full name",
      "definition" : "Vaccine full name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.vaccineAbbreviatedName",
      "path" : "FinishedVaccineProducts.vaccineAbbreviatedName",
      "short" : "Vaccine abbreviated name",
      "definition" : "Vaccine abbreviated name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.vaccineCommercialName",
      "path" : "FinishedVaccineProducts.vaccineCommercialName",
      "short" : "Vaccine commercial name",
      "definition" : "Vaccine commercial name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.vaccineTypeId",
      "path" : "FinishedVaccineProducts.vaccineTypeId",
      "short" : "Vaccine type ID",
      "definition" : "Vaccine type ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.routeOfAdministration",
      "path" : "FinishedVaccineProducts.routeOfAdministration",
      "short" : "Route of administration code from PreQualDatabaseMetadata",
      "definition" : "Route of administration code from PreQualDatabaseMetadata",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.vialMonitor",
      "path" : "FinishedVaccineProducts.vialMonitor",
      "short" : "Vial monitor type (e.g. Type 14, Type 30)",
      "definition" : "Vial monitor type (e.g. Type 14, Type 30)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.multidoseVialPolicy",
      "path" : "FinishedVaccineProducts.multidoseVialPolicy",
      "short" : "Multidose vial policy text",
      "definition" : "Multidose vial policy text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.presentationOther",
      "path" : "FinishedVaccineProducts.presentationOther",
      "short" : "Alternative presentation description when Presentation is 'Other'",
      "definition" : "Alternative presentation description when Presentation is 'Other'",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.applicantId",
      "path" : "FinishedVaccineProducts.applicantId",
      "short" : "Applicant/manufacturer organization ID (may be absent if not yet assigned)",
      "definition" : "Applicant/manufacturer organization ID (may be absent if not yet assigned)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.applicantName",
      "path" : "FinishedVaccineProducts.applicantName",
      "short" : "Applicant/manufacturer organization name (always present from API data)",
      "definition" : "Applicant/manufacturer organization name (always present from API data)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.applicantAddress",
      "path" : "FinishedVaccineProducts.applicantAddress",
      "short" : "Applicant organization address",
      "definition" : "Applicant organization address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.nraId",
      "path" : "FinishedVaccineProducts.nraId",
      "short" : "NRA organization ID (may be absent if not yet assigned)",
      "definition" : "NRA organization ID (may be absent if not yet assigned)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.nraName",
      "path" : "FinishedVaccineProducts.nraName",
      "short" : "Responsible NRA name (always present from API data)",
      "definition" : "Responsible NRA name (always present from API data)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.nraCountry",
      "path" : "FinishedVaccineProducts.nraCountry",
      "short" : "NRA country",
      "definition" : "NRA country",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.shelfLife",
      "path" : "FinishedVaccineProducts.shelfLife",
      "short" : "Shelf life (e.g. 24 months)",
      "definition" : "Shelf life (e.g. 24 months)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.storageTemperature",
      "path" : "FinishedVaccineProducts.storageTemperature",
      "short" : "Storage temperature (e.g. 2 - 8°C)",
      "definition" : "Storage temperature (e.g. 2 - 8°C)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.diluent",
      "path" : "FinishedVaccineProducts.diluent",
      "short" : "Diluent information",
      "definition" : "Diluent information",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.lastPublishingDate",
      "path" : "FinishedVaccineProducts.lastPublishingDate",
      "short" : "Last publishing date",
      "definition" : "Last publishing date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.publishingRemarks",
      "path" : "FinishedVaccineProducts.publishingRemarks",
      "short" : "Publishing remarks",
      "definition" : "Publishing remarks",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.preservative",
      "path" : "FinishedVaccineProducts.preservative",
      "short" : "Preservative name (e.g. Thiomersal)",
      "definition" : "Preservative name (e.g. Thiomersal)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.preservativeConcentration",
      "path" : "FinishedVaccineProducts.preservativeConcentration",
      "short" : "Preservative concentration (e.g. 0.01%)",
      "definition" : "Preservative concentration (e.g. 0.01%)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FinishedVaccineProducts.manufacturerLM",
      "path" : "FinishedVaccineProducts.manufacturerLM",
      "short" : "Manufacturer logical model instance reference (linked when ApplicantOrganization.Identification.Id is non-null)",
      "definition" : "Manufacturer logical model instance reference (linked when ApplicantOrganization.Identification.Id is non-null)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.nraLM",
      "path" : "FinishedVaccineProducts.nraLM",
      "short" : "NRA logical model instance reference (linked when NRADetails.Identification.Id is non-null)",
      "definition" : "NRA logical model instance reference (linked when NRADetails.Identification.Id is non-null)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.vaccineLM",
      "path" : "FinishedVaccineProducts.vaccineLM",
      "short" : "Vaccine logical model instance reference (linked when VaccineDetails.Identification.Id is non-null)",
      "definition" : "Vaccine logical model instance reference (linked when VaccineDetails.Identification.Id is non-null)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.bulkSupplierLM",
      "path" : "FinishedVaccineProducts.bulkSupplierLM",
      "short" : "Bulk supplier logical model instance reference (linked when BulkSupplier.Id is non-null)",
      "definition" : "Bulk supplier logical model instance reference (linked when BulkSupplier.Id is non-null)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualBulkSupplier"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.packagingLM",
      "path" : "FinishedVaccineProducts.packagingLM",
      "short" : "Product packaging logical model instance references",
      "definition" : "Product packaging logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.documentLM",
      "path" : "FinishedVaccineProducts.documentLM",
      "short" : "Document detail logical model instance references",
      "definition" : "Document detail logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.siteLM",
      "path" : "FinishedVaccineProducts.siteLM",
      "short" : "Site detail logical model instance references",
      "definition" : "Site detail logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.ingredientLM",
      "path" : "FinishedVaccineProducts.ingredientLM",
      "short" : "Product ingredient logical model instance references",
      "definition" : "Product ingredient logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.manufacturerReference",
      "path" : "FinishedVaccineProducts.manufacturerReference",
      "short" : "Manufacturer FHIR Organization reference",
      "definition" : "Manufacturer FHIR Organization reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.responsibleNRAReference",
      "path" : "FinishedVaccineProducts.responsibleNRAReference",
      "short" : "Responsible NRA FHIR Organization reference",
      "definition" : "Responsible NRA FHIR Organization reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization"]
      }]
    },
    {
      "id" : "FinishedVaccineProducts.productReference",
      "path" : "FinishedVaccineProducts.productReference",
      "short" : "Product FHIR reference (when available from pcmt dependency)",
      "definition" : "Product FHIR reference (when available from pcmt dependency)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
