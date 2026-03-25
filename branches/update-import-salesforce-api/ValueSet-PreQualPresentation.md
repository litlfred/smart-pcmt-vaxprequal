# WHO PreQualificaiton Presentation - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQualificaiton Presentation **

## ValueSet: WHO PreQualificaiton Presentation 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualPresentation | *Version*:0.1.0 |
| Draft as of 2026-03-11 | *Computable Name*:PreQualPresentation |

 
WHO PreQualificaiton Presentation 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |

## API Information

##### WHO PreQualificaiton Presentation Schema API

JSON Schema for WHO PreQualificaiton Presentation ValueSet codes. Generated from FHIR expansions using IRI format.

**Version:** 1.0.0

## Endpoints

### GET /ValueSet-PreQualPresentation.schema.json

#### JSON Schema definition for the enumeration ValueSet-PreQualPresentation

This endpoint serves the JSON Schema definition for the enumeration ValueSet-PreQualPresentation.

## Schema Definition

### ValueSet-PreQualPresentation

**Description:** JSON Schema for WHO PreQualificaiton Presentation ValueSet codes. Generated from FHIR expansions using IRI format.

**Type:** string

**This documentation is automatically generated from the OpenAPI specification.**



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "PreQualPresentation",
  "url" : "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualPresentation",
  "version" : "0.1.0",
  "name" : "PreQualPresentation",
  "title" : "WHO PreQualificaiton Presentation ",
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
  "description" : "WHO PreQualificaiton Presentation",
  "compose" : {
    "include" : [{
      "system" : "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualPresentation"
    }]
  }
}

```
