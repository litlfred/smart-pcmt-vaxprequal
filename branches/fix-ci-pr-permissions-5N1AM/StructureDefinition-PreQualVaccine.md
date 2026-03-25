# WHO PreQual Vaccine - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Vaccine**

## Logical Model: WHO PreQual Vaccine 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine | *Version*:0.2.0 |
| Draft as of 2026-03-24 | *Computable Name*:PreQualVaccine |

 
Logical model for the vaccine type details from the WHO PreQual API (ProductDetails.VaccineDetails). Contains only vaccine-type-level fields that are stable across products. Product-specific fields (CommercialName, RouteOfAdministration) remain on FinishedVaccineProducts. 

**Usages:**

* Refer to this Logical Model: [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualVaccine)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualVaccine.csv), [Excel](StructureDefinition-PreQualVaccine.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualVaccine",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine",
  "version" : "0.2.0",
  "name" : "PreQualVaccine",
  "title" : "WHO PreQual Vaccine",
  "status" : "draft",
  "date" : "2026-03-24T15:01:31+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Logical model for the vaccine type details\nfrom the WHO PreQual API (ProductDetails.VaccineDetails).\nContains only vaccine-type-level fields that are stable across products.\nProduct-specific fields (CommercialName, RouteOfAdministration) remain on FinishedVaccineProducts.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualVaccine",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualVaccine",
      "path" : "PreQualVaccine",
      "short" : "WHO PreQual Vaccine",
      "definition" : "Logical model for the vaccine type details\nfrom the WHO PreQual API (ProductDetails.VaccineDetails).\nContains only vaccine-type-level fields that are stable across products.\nProduct-specific fields (CommercialName, RouteOfAdministration) remain on FinishedVaccineProducts."
    },
    {
      "id" : "PreQualVaccine.vaccineId",
      "path" : "PreQualVaccine.vaccineId",
      "short" : "Vaccine type ID",
      "definition" : "Vaccine type ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualVaccine.fullName",
      "path" : "PreQualVaccine.fullName",
      "short" : "Vaccine full name",
      "definition" : "Vaccine full name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualVaccine.abbreviatedName",
      "path" : "PreQualVaccine.abbreviatedName",
      "short" : "Vaccine abbreviated name",
      "definition" : "Vaccine abbreviated name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
