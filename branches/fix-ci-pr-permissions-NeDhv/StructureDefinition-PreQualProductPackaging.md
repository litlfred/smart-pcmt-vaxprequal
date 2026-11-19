# WHO PreQual Product Packaging - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Product Packaging**

## Logical Model: WHO PreQual Product Packaging 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging | *Version*:0.2.0 |
| Draft as of 2026-03-24 | *Computable Name*:PreQualProductPackaging |

 
Logical model for product packaging details from the WHO PreQual API (ProductPackaging). 

**Usages:**

* Refer to this Logical Model: [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualProductPackaging)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualProductPackaging.csv), [Excel](StructureDefinition-PreQualProductPackaging.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualProductPackaging",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging",
  "version" : "0.2.0",
  "name" : "PreQualProductPackaging",
  "title" : "WHO PreQual Product Packaging",
  "status" : "draft",
  "date" : "2026-03-24T15:01:36+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Logical model for product packaging details\nfrom the WHO PreQual API (ProductPackaging).",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualProductPackaging",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualProductPackaging",
      "path" : "PreQualProductPackaging",
      "short" : "WHO PreQual Product Packaging",
      "definition" : "Logical model for product packaging details\nfrom the WHO PreQual API (ProductPackaging)."
    },
    {
      "id" : "PreQualProductPackaging.packagingId",
      "path" : "PreQualProductPackaging.packagingId",
      "short" : "Packaging record ID",
      "definition" : "Packaging record ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualProductPackaging.packagingType",
      "path" : "PreQualProductPackaging.packagingType",
      "short" : "Packaging type code from PreQualDatabaseMetadata (e.g. Secondary, Tertiary, ShippingContainer)",
      "definition" : "Packaging type code from PreQualDatabaseMetadata (e.g. Secondary, Tertiary, ShippingContainer)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualProductPackaging.componentPacked",
      "path" : "PreQualProductPackaging.componentPacked",
      "short" : "Component packed code from PreQualDatabaseMetadata (e.g. ActiveVaccine, Diluent)",
      "definition" : "Component packed code from PreQualDatabaseMetadata (e.g. ActiveVaccine, Diluent)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualProductPackaging.coldChainVolume",
      "path" : "PreQualProductPackaging.coldChainVolume",
      "short" : "Cold chain volume per dose",
      "definition" : "Cold chain volume per dose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.description",
      "path" : "PreQualProductPackaging.description",
      "short" : "Packaging description",
      "definition" : "Packaging description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.volume",
      "path" : "PreQualProductPackaging.volume",
      "short" : "Packaging volume/dimensions",
      "definition" : "Packaging volume/dimensions",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.totalDoses",
      "path" : "PreQualProductPackaging.totalDoses",
      "short" : "Total doses in packaging",
      "definition" : "Total doses in packaging",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.totalContainers",
      "path" : "PreQualProductPackaging.totalContainers",
      "short" : "Total containers in packaging",
      "definition" : "Total containers in packaging",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.height",
      "path" : "PreQualProductPackaging.height",
      "short" : "Height",
      "definition" : "Height",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.length",
      "path" : "PreQualProductPackaging.length",
      "short" : "Length",
      "definition" : "Length",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.width",
      "path" : "PreQualProductPackaging.width",
      "short" : "Width",
      "definition" : "Width",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualProductPackaging.primaryContainers",
      "path" : "PreQualProductPackaging.primaryContainers",
      "short" : "Number of primary containers",
      "definition" : "Number of primary containers",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
