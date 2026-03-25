# WHO PreQual Site Detail - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Site Detail**

## Logical Model: WHO PreQual Site Detail 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail | *Version*:0.2.0 |
| Draft as of 2026-03-25 | *Computable Name*:PreQualSiteDetail |

 
Logical model for manufacturing site details from the WHO PreQual API (SiteDetails). 

**Usages:**

* Refer to this Logical Model: [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualSiteDetail)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualSiteDetail.csv), [Excel](StructureDefinition-PreQualSiteDetail.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualSiteDetail",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail",
  "version" : "0.2.0",
  "name" : "PreQualSiteDetail",
  "title" : "WHO PreQual Site Detail",
  "status" : "draft",
  "date" : "2026-03-25T13:07:53+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Logical model for manufacturing site details\nfrom the WHO PreQual API (SiteDetails).",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualSiteDetail",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualSiteDetail",
      "path" : "PreQualSiteDetail",
      "short" : "WHO PreQual Site Detail",
      "definition" : "Logical model for manufacturing site details\nfrom the WHO PreQual API (SiteDetails)."
    },
    {
      "id" : "PreQualSiteDetail.siteOrganizationId",
      "path" : "PreQualSiteDetail.siteOrganizationId",
      "short" : "Site organization ID",
      "definition" : "Site organization ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualSiteDetail.siteOrganizationName",
      "path" : "PreQualSiteDetail.siteOrganizationName",
      "short" : "Site organization name",
      "definition" : "Site organization name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualSiteDetail.addressLine1",
      "path" : "PreQualSiteDetail.addressLine1",
      "short" : "Address line 1",
      "definition" : "Address line 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualSiteDetail.city",
      "path" : "PreQualSiteDetail.city",
      "short" : "City",
      "definition" : "City",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualSiteDetail.state",
      "path" : "PreQualSiteDetail.state",
      "short" : "State/Province",
      "definition" : "State/Province",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualSiteDetail.country",
      "path" : "PreQualSiteDetail.country",
      "short" : "Country",
      "definition" : "Country",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualSiteDetail.postalCode",
      "path" : "PreQualSiteDetail.postalCode",
      "short" : "Postal code",
      "definition" : "Postal code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualSiteDetail.siteStatus",
      "path" : "PreQualSiteDetail.siteStatus",
      "short" : "Site status code from PreQualDatabaseMetadata (e.g. Accepted)",
      "definition" : "Site status code from PreQualDatabaseMetadata (e.g. Accepted)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "PreQualSiteDetail.siteActivity",
      "path" : "PreQualSiteDetail.siteActivity",
      "short" : "Site activity code from PreQualDatabaseMetadata (e.g. FVPManufacture)",
      "definition" : "Site activity code from PreQualDatabaseMetadata (e.g. FVPManufacture)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
