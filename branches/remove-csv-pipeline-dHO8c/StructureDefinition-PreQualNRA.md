# WHO PreQual NRA - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual NRA**

## Logical Model: WHO PreQual NRA 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA | *Version*:0.2.0 |
| Draft as of 2026-03-24 | *Computable Name*:PreQualNRA |

 
Logical model for the responsible National Regulatory Authority (NRA) from the WHO PreQual API (ProductDetails.NRADetails). 

**Usages:**

* Refer to this Logical Model: [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualNRA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualNRA.csv), [Excel](StructureDefinition-PreQualNRA.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualNRA",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA",
  "version" : "0.2.0",
  "name" : "PreQualNRA",
  "title" : "WHO PreQual NRA",
  "status" : "draft",
  "date" : "2026-03-24T14:17:08+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Logical model for the responsible National Regulatory Authority (NRA)\nfrom the WHO PreQual API (ProductDetails.NRADetails).",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualNRA",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualNRA",
      "path" : "PreQualNRA",
      "short" : "WHO PreQual NRA",
      "definition" : "Logical model for the responsible National Regulatory Authority (NRA)\nfrom the WHO PreQual API (ProductDetails.NRADetails)."
    },
    {
      "id" : "PreQualNRA.nraId",
      "path" : "PreQualNRA.nraId",
      "short" : "NRA organization ID",
      "definition" : "NRA organization ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualNRA.name",
      "path" : "PreQualNRA.name",
      "short" : "Organization name",
      "definition" : "Organization name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualNRA.addressLine1",
      "path" : "PreQualNRA.addressLine1",
      "short" : "Address line 1",
      "definition" : "Address line 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualNRA.country",
      "path" : "PreQualNRA.country",
      "short" : "Country",
      "definition" : "Country",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualNRA.website",
      "path" : "PreQualNRA.website",
      "short" : "Website URL",
      "definition" : "Website URL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualNRA.organizationReference",
      "path" : "PreQualNRA.organizationReference",
      "short" : "FHIR Organization reference",
      "definition" : "FHIR Organization reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization"]
      }]
    }]
  }
}

```
