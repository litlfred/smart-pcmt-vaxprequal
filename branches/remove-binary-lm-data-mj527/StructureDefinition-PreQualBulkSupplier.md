# WHO PreQual Bulk Supplier - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Bulk Supplier**

## Logical Model: WHO PreQual Bulk Supplier 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualBulkSupplier | *Version*:0.2.0 |
| Draft as of 2026-03-25 | *Computable Name*:PreQualBulkSupplier |

 
Logical model for the bulk supplier organization from the WHO PreQual API (ProductDetails.BulkSupplier). 

**Usages:**

* Refer to this Logical Model: [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualBulkSupplier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualBulkSupplier.csv), [Excel](StructureDefinition-PreQualBulkSupplier.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualBulkSupplier",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualBulkSupplier",
  "version" : "0.2.0",
  "name" : "PreQualBulkSupplier",
  "title" : "WHO PreQual Bulk Supplier",
  "status" : "draft",
  "date" : "2026-03-25T12:49:39+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Logical model for the bulk supplier organization\nfrom the WHO PreQual API (ProductDetails.BulkSupplier).",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualBulkSupplier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualBulkSupplier",
      "path" : "PreQualBulkSupplier",
      "short" : "WHO PreQual Bulk Supplier",
      "definition" : "Logical model for the bulk supplier organization\nfrom the WHO PreQual API (ProductDetails.BulkSupplier)."
    },
    {
      "id" : "PreQualBulkSupplier.bulkSupplierId",
      "path" : "PreQualBulkSupplier.bulkSupplierId",
      "short" : "Bulk supplier organization ID",
      "definition" : "Bulk supplier organization ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualBulkSupplier.name",
      "path" : "PreQualBulkSupplier.name",
      "short" : "Organization name",
      "definition" : "Organization name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
