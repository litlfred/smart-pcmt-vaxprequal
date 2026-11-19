# WHO Vaccine PreQual DB - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO Vaccine PreQual DB**

## Logical Model: WHO Vaccine PreQual DB 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDB | *Version*:0.1.0 |
| Draft as of 2026-03-11 | *Computable Name*:PreQualDB |

 
WHO Vaccine PreQual DB. Logical model for WHO PreQual DB as CSV file available at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines Columns of the CSV are as follows 1:Date of Prequalification
 2:Vaccine Type 3:Commercial Name 4:Presentation 5:No. of doses 6:Manufacturer 7:Responsible NRA 

**Usages:**

* Derived from this Logical Model: [WHO Vaccine PreQual DB with IDs](StructureDefinition-PreQualDBwithIds.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualDB)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualDB.csv), [Excel](StructureDefinition-PreQualDB.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualDB",
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDB",
  "version" : "0.1.0",
  "name" : "PreQualDB",
  "title" : "WHO Vaccine PreQual DB",
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
  "description" : "WHO Vaccine PreQual DB.  Logical model for WHO PreQual DB as CSV file available at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nColumns of the CSV are as follows\n  1:Date of Prequalification  \n  2:Vaccine Type\n  3:Commercial Name\n  4:Presentation\n  5:No. of doses\n  6:Manufacturer\n  7:Responsible NRA\n",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualDB",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualDB",
      "path" : "PreQualDB",
      "short" : "WHO Vaccine PreQual DB",
      "definition" : "WHO Vaccine PreQual DB.  Logical model for WHO PreQual DB as CSV file available at:\n     https://extranet.who.int/prequal/vaccines/prequalified-vaccines\nColumns of the CSV are as follows\n  1:Date of Prequalification  \n  2:Vaccine Type\n  3:Commercial Name\n  4:Presentation\n  5:No. of doses\n  6:Manufacturer\n  7:Responsible NRA\n"
    },
    {
      "id" : "PreQualDB.dateOfPrequal",
      "path" : "PreQualDB.dateOfPrequal",
      "short" : "Date of Prequalification (DD/MM/YY)",
      "definition" : "Date of Prequalification (DD/MM/YY)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "PreQualDB.vaccineType",
      "path" : "PreQualDB.vaccineType",
      "short" : "Vaccine Type",
      "definition" : "Vaccine Type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "PreQualDB.commercialName",
      "path" : "PreQualDB.commercialName",
      "short" : "Commercial Name",
      "definition" : "Commercial Name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualDB.presentation",
      "path" : "PreQualDB.presentation",
      "short" : "Presentation",
      "definition" : "Presentation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "PreQualDB.numDoses",
      "path" : "PreQualDB.numDoses",
      "short" : "Number of doses",
      "definition" : "Number of doses",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "PreQualDB.manufacturer",
      "path" : "PreQualDB.manufacturer",
      "short" : "Manufacturer",
      "definition" : "Manufacturer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "PreQualDB.responsibleNRA",
      "path" : "PreQualDB.responsibleNRA",
      "short" : "Responsible NRA",
      "definition" : "Responsible NRA",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
