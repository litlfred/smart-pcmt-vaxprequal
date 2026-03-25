# WHO PreQual Document Detail - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Document Detail**

## Logical Model: WHO PreQual Document Detail 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail | *Version*:0.1.0 |
| Draft as of 2026-03-11 | *Computable Name*:PreQualDocumentDetail |

 
Logical model for document details from the WHO PreQual API (DocumentDetails). 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualDocumentDetail)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualDocumentDetail.csv), [Excel](StructureDefinition-PreQualDocumentDetail.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualDocumentDetail",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail",
  "version" : "0.1.0",
  "name" : "PreQualDocumentDetail",
  "title" : "WHO PreQual Document Detail",
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
  "description" : "Logical model for document details\nfrom the WHO PreQual API (DocumentDetails).",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDocumentDetail",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualDocumentDetail",
      "path" : "PreQualDocumentDetail",
      "short" : "WHO PreQual Document Detail",
      "definition" : "Logical model for document details\nfrom the WHO PreQual API (DocumentDetails)."
    },
    {
      "id" : "PreQualDocumentDetail.documentId",
      "path" : "PreQualDocumentDetail.documentId",
      "short" : "Document ID",
      "definition" : "Document ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualDocumentDetail.documentName",
      "path" : "PreQualDocumentDetail.documentName",
      "short" : "Document name",
      "definition" : "Document name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDocumentDetail.documentType",
      "path" : "PreQualDocumentDetail.documentType",
      "short" : "Document type code from PreQualDatabaseMetadata (e.g. ProductInsert, Photo, VSPAR)",
      "definition" : "Document type code from PreQualDatabaseMetadata (e.g. ProductInsert, Photo, VSPAR)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualDocumentDetail.versionId",
      "path" : "PreQualDocumentDetail.versionId",
      "short" : "Document version ID",
      "definition" : "Document version ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDocumentDetail.fileExtension",
      "path" : "PreQualDocumentDetail.fileExtension",
      "short" : "File extension (e.g. pdf, jpg)",
      "definition" : "File extension (e.g. pdf, jpg)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDocumentDetail.fileType",
      "path" : "PreQualDocumentDetail.fileType",
      "short" : "File type (e.g. PDF, JPEG)",
      "definition" : "File type (e.g. PDF, JPEG)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
