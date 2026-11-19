# PreQualDBtoProductLM - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **PreQualDBtoProductLM**

## StructureMap: PreQualDBtoProductLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/icvp/StructureMap/PreQualDBtoProductLM | *Version*:0.1.0 |
| Draft as of 2026-03-19 | *Computable Name*:PreQualDBtoProductLM |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "PreQualDBtoProductLM",
  "url" : "http://smart.who.int/icvp/StructureMap/PreQualDBtoProductLM",
  "version" : "0.1.0",
  "name" : "PreQualDBtoProductLM",
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
  "structure" : [{
    "url" : "http://smart.who.int/icvp/StructureDefinition/PreQualDBwithIds",
    "mode" : "source",
    "alias" : "PreQualDB"
  },
  {
    "url" : "http://smart.who.int/icvp/StructureDefinition/Product",
    "mode" : "target",
    "alias" : "Product"
  }],
  "group" : [{
    "name" : "PreQualDBtoProductLM",
    "input" : [{
      "name" : "prequal",
      "type" : "PreQualDB",
      "mode" : "source"
    },
    {
      "name" : "product",
      "type" : "Product",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "set prod num",
      "source" : [{
        "context" : "prequal",
        "element" : "number",
        "variable" : "number"
      }],
      "target" : [{
        "context" : "product",
        "element" : "number",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "number"
        }]
      }]
    },
    {
      "name" : "set prod name",
      "source" : [{
        "context" : "prequal",
        "element" : "commercialName",
        "variable" : "name"
      }],
      "target" : [{
        "context" : "product",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "name"
        }]
      }]
    },
    {
      "name" : "set product id",
      "source" : [{
        "context" : "prequal",
        "element" : "index",
        "variable" : "index"
      }],
      "target" : [{
        "context" : "product",
        "element" : "identifier",
        "transform" : "id",
        "parameter" : [{
          "valueString" : "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
        },
        {
          "valueId" : "index"
        }]
      }]
    },
    {
      "name" : "set num dose",
      "source" : [{
        "context" : "prequal",
        "element" : "numDoses",
        "variable" : "numDoses"
      }],
      "rule" : [{
        "name" : "set number of doses",
        "source" : [{
          "context" : "product",
          "element" : "doseQuantity",
          "variable" : "dq"
        }],
        "target" : [{
          "context" : "dq",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "numDoses"
          }]
        }]
      }]
    },
    {
      "name" : "set num doses",
      "source" : [{
        "context" : "product",
        "element" : "unitOfUse",
        "variable" : "uou"
      }],
      "rule" : [{
        "name" : "set doses unit",
        "source" : [{
          "context" : "uou",
          "element" : "coding",
          "variable" : "coding"
        }],
        "target" : [{
          "context" : "coding",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "doses"
          }]
        }]
      }]
    },
    {
      "name" : "set manufacturer reference",
      "source" : [{
        "context" : "prequal",
        "element" : "manufacturerReference",
        "variable" : "manufacturerReference"
      }],
      "target" : [{
        "context" : "product",
        "element" : "manufacturer",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "manufacturerReference"
        }]
      }]
    },
    {
      "name" : "set man",
      "source" : [{
        "context" : "prequal",
        "element" : "manufacturer",
        "variable" : "manufacturer"
      }],
      "rule" : [{
        "name" : "set mnf",
        "source" : [{
          "context" : "product",
          "element" : "manufacturer",
          "variable" : "man"
        }],
        "target" : [{
          "context" : "man",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "manufacturer"
          }]
        }]
      }]
    },
    {
      "name" : "set vaccine type as product clasification",
      "source" : [{
        "context" : "prequal",
        "element" : "vaxTypeCode",
        "variable" : "vaxTypeCode"
      }],
      "target" : [{
        "context" : "product",
        "element" : "classification",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "vaxTypeCode"
        }]
      }]
    },
    {
      "name" : "set presentation",
      "source" : [{
        "context" : "prequal",
        "element" : "presentation",
        "variable" : "presentation"
      }],
      "target" : [{
        "context" : "product",
        "element" : "dosageForm",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "presentation"
        }]
      }]
    }]
  }]
}

```
