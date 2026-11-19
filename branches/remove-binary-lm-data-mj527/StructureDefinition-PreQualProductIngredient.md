# WHO PreQual Product Ingredient - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Product Ingredient**

## Logical Model: WHO PreQual Product Ingredient 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient | *Version*:0.2.0 |
| Draft as of 2026-03-25 | *Computable Name*:PreQualProductIngredient |

 
Logical model for product ingredient details from the WHO PreQual API (ProductIngredients). 

**Usages:**

* Refer to this Logical Model: [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualProductIngredient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualProductIngredient.csv), [Excel](StructureDefinition-PreQualProductIngredient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualProductIngredient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient",
  "version" : "0.2.0",
  "name" : "PreQualProductIngredient",
  "title" : "WHO PreQual Product Ingredient",
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
  "description" : "Logical model for product ingredient details\nfrom the WHO PreQual API (ProductIngredients).",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductIngredient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualProductIngredient",
      "path" : "PreQualProductIngredient",
      "short" : "WHO PreQual Product Ingredient",
      "definition" : "Logical model for product ingredient details\nfrom the WHO PreQual API (ProductIngredients)."
    },
    {
      "id" : "PreQualProductIngredient.ingredientId",
      "path" : "PreQualProductIngredient.ingredientId",
      "short" : "Ingredient ID",
      "definition" : "Ingredient ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualProductIngredient.ingredientType",
      "path" : "PreQualProductIngredient.ingredientType",
      "short" : "Ingredient type code from PreQualDatabaseMetadata (e.g. VxFVP)",
      "definition" : "Ingredient type code from PreQualDatabaseMetadata (e.g. VxFVP)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualProductIngredient.unit",
      "path" : "PreQualProductIngredient.unit",
      "short" : "Measurement unit",
      "definition" : "Measurement unit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductIngredient.product",
      "path" : "PreQualProductIngredient.product",
      "short" : "Product reference ID",
      "definition" : "Product reference ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductIngredient.productComponentType",
      "path" : "PreQualProductIngredient.productComponentType",
      "short" : "Product component type code from PreQualDatabaseMetadata (e.g. Diluent)",
      "definition" : "Product component type code from PreQualDatabaseMetadata (e.g. Diluent)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualProductIngredient.function",
      "path" : "PreQualProductIngredient.function",
      "short" : "Ingredient function",
      "definition" : "Ingredient function",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
