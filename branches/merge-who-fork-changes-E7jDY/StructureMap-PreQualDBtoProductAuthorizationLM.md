# PreQualDBtoProductAuthorizationLM - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQualDBtoProductAuthorizationLM**

## StructureMap: PreQualDBtoProductAuthorizationLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/icvp/StructureMap/PreQualDBtoProductAuthorizationLM | *Version*:0.2.0 |
| Draft as of 2026-03-23 | *Computable Name*:PreQualDBtoProductAuthorizationLM |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "PreQualDBtoProductAuthorizationLM",
  "url" : "http://smart.who.int/icvp/StructureMap/PreQualDBtoProductAuthorizationLM",
  "version" : "0.2.0",
  "name" : "PreQualDBtoProductAuthorizationLM",
  "status" : "draft",
  "date" : "2026-03-23T16:52:24+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "structure" : [{
    "url" : "http://smart.who.int/icvp/StructureDefinition/PreQualDBwithIds",
    "mode" : "source",
    "alias" : "PreQualDB"
  },
  {
    "url" : "http://smart.who.int/icvp/StructureDefinition/ProductAuthorization",
    "mode" : "target",
    "alias" : "ProductAuthorization"
  }],
  "group" : [{
    "name" : "PreQualDBtoProductAuthorizationLM",
    "typeMode" : "none",
    "input" : [{
      "name" : "prequal",
      "type" : "PreQualDB",
      "mode" : "source"
    },
    {
      "name" : "productAuth",
      "type" : "ProductAuthoization",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "status",
      "source" : [{
        "context" : "productAuth",
        "element" : "status",
        "variable" : "status"
      }],
      "target" : [{
        "context" : "status",
        "contextType" : "variable",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "active"
        }]
      }]
    },
    {
      "name" : "set prequal",
      "source" : [{
        "context" : "productAuth",
        "element" : "type",
        "variable" : "type"
      }],
      "target" : [{
        "context" : "type",
        "contextType" : "variable",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "prequal"
        }]
      }]
    },
    {
      "name" : "process nra",
      "source" : [{
        "context" : "prequal",
        "element" : "responsibleNRAReference",
        "variable" : "respNRARef"
      }],
      "rule" : [{
        "name" : "set national regulatory authority holder",
        "source" : [{
          "context" : "respNRARef",
          "variable" : "respNRARef"
        }],
        "target" : [{
          "context" : "productAuth",
          "contextType" : "variable",
          "element" : "holder",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "respNRARef"
          }]
        }]
      }]
    },
    {
      "name" : "process validity period",
      "source" : [{
        "context" : "prequal",
        "element" : "validityPeriod",
        "variable" : "validityPeriod"
      }],
      "rule" : [{
        "name" : "set validity period",
        "source" : [{
          "context" : "validityPeriod",
          "variable" : "validityPeriod"
        }],
        "target" : [{
          "context" : "productAuth",
          "contextType" : "variable",
          "element" : "validityPeriod",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "validityPeriod"
          }]
        }]
      }]
    },
    {
      "name" : "process juris",
      "source" : [{
        "context" : "productAuth",
        "element" : "jurisdiction",
        "variable" : "j"
      }],
      "rule" : [{
        "name" : "set WHO",
        "source" : [{
          "context" : "j",
          "element" : "coding",
          "variable" : "coding"
        }],
        "target" : [{
          "context" : "coding",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "WHO"
          }]
        }]
      }]
    },
    {
      "name" : "set number/index",
      "source" : [{
        "context" : "prequal",
        "element" : "index",
        "variable" : "index"
      }],
      "target" : [{
        "context" : "productAuth",
        "contextType" : "variable",
        "element" : "number",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "index"
        }]
      }]
    },
    {
      "name" : "set prod ref",
      "source" : [{
        "context" : "prequal",
        "element" : "productReference",
        "variable" : "prodRef"
      }],
      "target" : [{
        "context" : "productAuth",
        "contextType" : "variable",
        "element" : "product",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "prodRef"
        }]
      }]
    }]
  }]
}

```
