# WHO PreQual Manufacturer - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Manufacturer**

## Logical Model: WHO PreQual Manufacturer 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer | *Version*:0.1.0 |
| Draft as of 2026-03-19 | *Computable Name*:PreQualManufacturer |

 
Logical model for the manufacturer/applicant organization from the WHO PreQual API (ProductDetails.ApplicantOrganization). 

**Usages:**

* Refer to this Logical Model: [WHO Vaccine PreQual DB - Finished Vaccine Products](StructureDefinition-FinishedVaccineProducts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.pcmt-vaxprequal|current/StructureDefinition/PreQualManufacturer)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PreQualManufacturer.csv), [Excel](StructureDefinition-PreQualManufacturer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PreQualManufacturer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer",
  "version" : "0.1.0",
  "name" : "PreQualManufacturer",
  "title" : "WHO PreQual Manufacturer",
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
  "description" : "Logical model for the manufacturer/applicant organization\nfrom the WHO PreQual API (ProductDetails.ApplicantOrganization).",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/pcmt-vaxprequal/StructureDefinition/PreQualManufacturer",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PreQualManufacturer",
      "path" : "PreQualManufacturer",
      "short" : "WHO PreQual Manufacturer",
      "definition" : "Logical model for the manufacturer/applicant organization\nfrom the WHO PreQual API (ProductDetails.ApplicantOrganization)."
    },
    {
      "id" : "PreQualManufacturer.manufacturerId",
      "path" : "PreQualManufacturer.manufacturerId",
      "short" : "Manufacturer organization ID",
      "definition" : "Manufacturer organization ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PreQualManufacturer.name",
      "path" : "PreQualManufacturer.name",
      "short" : "Organization name",
      "definition" : "Organization name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.addressLine1",
      "path" : "PreQualManufacturer.addressLine1",
      "short" : "Address line 1",
      "definition" : "Address line 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.city",
      "path" : "PreQualManufacturer.city",
      "short" : "City",
      "definition" : "City",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.state",
      "path" : "PreQualManufacturer.state",
      "short" : "State/Province",
      "definition" : "State/Province",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.country",
      "path" : "PreQualManufacturer.country",
      "short" : "Country",
      "definition" : "Country",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.postalCode",
      "path" : "PreQualManufacturer.postalCode",
      "short" : "Postal code",
      "definition" : "Postal code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.isoCountryCode",
      "path" : "PreQualManufacturer.isoCountryCode",
      "short" : "ISO country code",
      "definition" : "ISO country code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.region",
      "path" : "PreQualManufacturer.region",
      "short" : "WHO region",
      "definition" : "WHO region",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.website",
      "path" : "PreQualManufacturer.website",
      "short" : "Website URL",
      "definition" : "Website URL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PreQualManufacturer.organizationReference",
      "path" : "PreQualManufacturer.organizationReference",
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
