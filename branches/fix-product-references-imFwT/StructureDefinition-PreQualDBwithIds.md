# WHO Vaccine PreQual DB with IDs - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO Vaccine PreQual DB with IDs**

## Logical Model: WHO Vaccine PreQual DB with IDs 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBwithIds | *Version*:0.1.0 |
| Draft as of 2026-03-19 | *Computable Name*:PreQualDBwithIds |

 
Logical model for WHO PreQual DB as CSV file available at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines Columns of the CSV are as follows with additional data fields for appropriately referencing associated data objects 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualDBwithIds)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualDBwithIds.csv), [Excel](StructureDefinition-PreQualDBwithIds.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualDBwithIds",
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBwithIds",
  "version" : "0.1.0",
  "name" : "PreQualDBwithIds",
  "title" : "WHO Vaccine PreQual DB with IDs",
  "status" : "draft",
  "date" : "2026-03-19T19:07:29+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Logical model for WHO PreQual DB as CSV file available at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nColumns of the CSV are as follows\nwith additional data fields for appropriately referencing associated data objects",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBwithIds",
  "baseDefinition" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDB",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualDBwithIds",
      "path" : "PreQualDBwithIds",
      "short" : "WHO Vaccine PreQual DB with IDs",
      "definition" : "Logical model for WHO PreQual DB as CSV file available at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nColumns of the CSV are as follows\nwith additional data fields for appropriately referencing associated data objects"
    },
    {
      "id" : "PreQualDBwithIds.index",
      "path" : "PreQualDBwithIds.index",
      "short" : "An index or identifier of the prequalificaiton for the product.",
      "definition" : "An index or identifier of the prequalificaiton for the product.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "constraint" : [{
        "key" : "is-a-prequal-product-id",
        "severity" : "error",
        "human" : "Product ID comes from the PreQual Databatase",
        "expression" : "system = 'http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds'",
        "source" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBwithIds"
      }]
    },
    {
      "id" : "PreQualDBwithIds.manufacturerReference",
      "path" : "PreQualDBwithIds.manufacturerReference",
      "short" : "Manufacturer referecne",
      "definition" : "Manufacturer referecne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization"]
      }]
    },
    {
      "id" : "PreQualDBwithIds.responsibleNRAReference",
      "path" : "PreQualDBwithIds.responsibleNRAReference",
      "short" : "Responsible NRA reference",
      "definition" : "Responsible NRA reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization"]
      }]
    },
    {
      "id" : "PreQualDBwithIds.productReference",
      "path" : "PreQualDBwithIds.productReference",
      "short" : "Product reference (when available from pcmt dependency)",
      "definition" : "Product reference (when available from pcmt dependency)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
