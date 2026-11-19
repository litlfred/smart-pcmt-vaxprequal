# PreQual CSV to Vaccine Product ID Concept Map - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQual CSV to Vaccine Product ID Concept Map**

## ConceptMap: PreQual CSV to Vaccine Product ID Concept Map (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/ConceptMap/PreQualCSVtoAPIConceptMap | *Version*:0.1.0 |
| Draft as of 2026-03-11 | *Computable Name*:PreQualCSVtoAPIConceptMap |

 
Maps old CSV export MD5-based identifiers to authoritative vaccine product IDs 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PreQualCSVtoAPIConceptMap",
  "url" : "http://smart.who.int/pcmt-vaxprequal/ConceptMap/PreQualCSVtoAPIConceptMap",
  "version" : "0.1.0",
  "name" : "PreQualCSVtoAPIConceptMap",
  "title" : "PreQual CSV to Vaccine Product ID Concept Map",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-11T13:44:05+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Maps old CSV export MD5-based identifiers to authoritative vaccine product IDs",
  "sourceScopeUri" : "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds",
  "targetScopeUri" : "https://extranet.who.int/prequal/api",
  "group" : [{
    "source" : "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds",
    "target" : "https://extranet.who.int/prequal/api",
    "element" : [{
      "code" : "8d4be0b798546e105e856d14b7910ccb",
      "display" : "HEALIVE - Sinovac Biotech Co. Ltd",
      "target" : [{
        "code" : "a3K3X000006Mii5UAC",
        "display" : "FVP-P-311",
        "relationship" : "equivalent"
      }]
    }]
  }]
}

```
