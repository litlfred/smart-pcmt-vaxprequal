# WHO PreQual Product - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Product**

## Logical Model: WHO PreQual Product 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct | *Version*:0.1.0 |
| Draft as of 2026-03-11 | *Computable Name*:PreQualProduct |

 
Logical model for WHO PreQual Product from the backend API with additional data fields for referencing associated FHIR and logical model data objects. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualProduct)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualProduct.csv), [Excel](StructureDefinition-PreQualProduct.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualProduct",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct",
  "version" : "0.1.0",
  "name" : "PreQualProduct",
  "title" : "WHO PreQual Product",
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
  "description" : "Logical model for WHO PreQual Product from the backend API\nwith additional data fields for referencing associated FHIR and logical model data objects.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProduct",
  "baseDefinition" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDBAPI",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualProduct",
      "path" : "PreQualProduct",
      "short" : "WHO PreQual Product",
      "definition" : "Logical model for WHO PreQual Product from the backend API\nwith additional data fields for referencing associated FHIR and logical model data objects."
    },
    {
      "id" : "PreQualProduct.manufacturerReference",
      "path" : "PreQualProduct.manufacturerReference",
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
      "id" : "PreQualProduct.responsibleNRAReference",
      "path" : "PreQualProduct.responsibleNRAReference",
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
      "id" : "PreQualProduct.productReference",
      "path" : "PreQualProduct.productReference",
      "short" : "Product FHIR reference (when available from pcmt dependency)",
      "definition" : "Product FHIR reference (when available from pcmt dependency)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.manufacturerLM",
      "path" : "PreQualProduct.manufacturerLM",
      "short" : "Manufacturer logical model instance reference",
      "definition" : "Manufacturer logical model instance reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.nraLM",
      "path" : "PreQualProduct.nraLM",
      "short" : "NRA logical model instance reference",
      "definition" : "NRA logical model instance reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.vaccineLM",
      "path" : "PreQualProduct.vaccineLM",
      "short" : "Vaccine logical model instance reference",
      "definition" : "Vaccine logical model instance reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.bulkSupplierLM",
      "path" : "PreQualProduct.bulkSupplierLM",
      "short" : "Bulk supplier logical model instance reference",
      "definition" : "Bulk supplier logical model instance reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.packagingLM",
      "path" : "PreQualProduct.packagingLM",
      "short" : "Product packaging logical model instance references",
      "definition" : "Product packaging logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.documentLM",
      "path" : "PreQualProduct.documentLM",
      "short" : "Document detail logical model instance references",
      "definition" : "Document detail logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.siteLM",
      "path" : "PreQualProduct.siteLM",
      "short" : "Site detail logical model instance references",
      "definition" : "Site detail logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "PreQualProduct.ingredientLM",
      "path" : "PreQualProduct.ingredientLM",
      "short" : "Product ingredient logical model instance references",
      "definition" : "Product ingredient logical model instance references",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
