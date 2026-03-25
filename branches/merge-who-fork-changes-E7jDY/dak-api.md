# DAK API Documentation Hub - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* **DAK API Documentation Hub**

## DAK API Documentation Hub

# DAK API Documentation Hub

This page provides access to Data Access Kit (DAK) API documentation and schemas.

## Table of Contents

1. [DAK API Documentation Hub](#dak-api-documentation-hub)

### API Enumeration Endpoints

These endpoints provide lists of all available schemas and vocabularies of each type:

#### ValueSets.schema.json

Enumeration of all available ValueSet schemas

##### Available Endpoints:

* [ValueSet-PreQualPresentation.schema.json](schemas/ValueSet-PreQualPresentation.schema.json) - JSON Schema for WHO PreQualificaiton Presentation Schema
* [ValueSet-PreQualVaccineType.schema.json](schemas/ValueSet-PreQualVaccineType.schema.json) - JSON Schema for WHO PreQualificaiton VaccineType Schema
* [ValueSet-PreQualProductIds.schema.json](schemas/ValueSet-PreQualProductIds.schema.json) - JSON Schema for WHO PreQualificaiton Vaccine Product Ids Schema

#### LogicalModels.schema.json

Enumeration of all available Logical Model schemas

##### Available Endpoints:

* [StructureDefinition-PreQualDB.schema.json](schemas/StructureDefinition-PreQualDB.schema.json) - JSON Schema for WHO Vaccine PreQual DB
* [StructureDefinition-PreQualDBwithIds.schema.json](schemas/StructureDefinition-PreQualDBwithIds.schema.json) - JSON Schema for WHO Vaccine PreQual DB with IDs

### ValueSet Schemas (3 available)

JSON Schema definitions for FHIR ValueSets, providing structured enumeration of allowed code values:

#### WHO PreQualificaiton Presentation Schema

JSON Schema for WHO PreQualificaiton Presentation ValueSet codes. Generated from FHIR expansions using IRI format.

[🩺 FHIR](ValueSet-PreQualPresentation.md)
[📄 JSON Schema](schemas/ValueSet-PreQualPresentation.schema.json)
[🏷️ Displays](schemas/ValueSet-PreQualPresentation.displays.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualPresentation.openapi.json)

#### WHO PreQualificaiton VaccineType Schema

JSON Schema for WHO PreQualificaiton VaccineType ValueSet codes. Generated from FHIR expansions using IRI format.

[🩺 FHIR](ValueSet-PreQualVaccineType.md)
[📄 JSON Schema](schemas/ValueSet-PreQualVaccineType.schema.json)
[🏷️ Displays](schemas/ValueSet-PreQualVaccineType.displays.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualVaccineType.openapi.json)

#### WHO PreQualificaiton Vaccine Product Ids Schema

JSON Schema for WHO PreQualificaiton Vaccine Product Ids ValueSet codes. Generated from FHIR expansions using IRI format.

[🩺 FHIR](ValueSet-PreQualProductIds.md)
[📄 JSON Schema](schemas/ValueSet-PreQualProductIds.schema.json)
[🏷️ Displays](schemas/ValueSet-PreQualProductIds.displays.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualProductIds.openapi.json)

### Logical Model Schemas (2 available)

JSON Schema definitions for FHIR Logical Models, defining structured data elements and their relationships:

#### WHO Vaccine PreQual DB

WHO Vaccine PreQual DB. Logical model for WHO PreQual DB as CSV file available at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines Columns of the CSV are as follows 1:Date of Prequalification 2:Vaccine Type 3:Commercial Name 4:Presentation 5:No. of doses 6:Manufacturer 7:Responsible NRA 

[🩺 FHIR](StructureDefinition-PreQualDB.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualDB.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDB.openapi.json)

#### WHO Vaccine PreQual DB with IDs

Logical model for WHO PreQual DB as CSV file available at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines Columns of the CSV are as follows with additional data fields for appropriately referencing associated data objects

[🩺 FHIR](StructureDefinition-PreQualDBwithIds.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualDBwithIds.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDBwithIds.openapi.json)

### OpenAPI Documentation

Complete API specification documentation for all available endpoints:

#### ValueSet-PreQualPresentation Endpoints

API endpoints for WHO PreQualificaiton Presentation Schema

[📄 JSON Schema](schemas/ValueSet-PreQualPresentation.schema.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualPresentation.openapi.json)

#### ValueSet-PreQualVaccineType Endpoints

API endpoints for WHO PreQualificaiton VaccineType Schema

[📄 JSON Schema](schemas/ValueSet-PreQualVaccineType.schema.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualVaccineType.openapi.json)

#### ValueSet-PreQualProductIds Endpoints

API endpoints for WHO PreQualificaiton Vaccine Product Ids Schema

[📄 JSON Schema](schemas/ValueSet-PreQualProductIds.schema.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualProductIds.openapi.json)

#### StructureDefinition-PreQualDB Endpoints

API endpoints for WHO Vaccine PreQual DB

[📄 JSON Schema](schemas/StructureDefinition-PreQualDB.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDB.openapi.json)

#### StructureDefinition-PreQualDBwithIds Endpoints

API endpoints for WHO Vaccine PreQual DB with IDs

[📄 JSON Schema](schemas/StructureDefinition-PreQualDBwithIds.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDBwithIds.openapi.json)

#### ValueSets Enumeration Endpoint

Complete list of all available ValueSet schemas

[📄 JSON Schema](ValueSets.schema.json)
[🔗 OpenAPI](ValueSets-enumeration.openapi.json)

#### LogicalModels Enumeration Endpoint

Complete list of all available Logical Model schemas

[📄 JSON Schema](LogicalModels.schema.json)
[🔗 OpenAPI](LogicalModels-enumeration.openapi.json)

#### ValueSet-PreQualProductIds API

OpenAPI specification for ValueSet-PreQualProductIds

[📖 Documentation](ValueSet-PreQualProductIds.md)
[🔗 OpenAPI Spec](schemas/ValueSet-PreQualProductIds.openapi.json)

#### StructureDefinition-PreQualDB API

OpenAPI specification for StructureDefinition-PreQualDB

[📖 Documentation](StructureDefinition-PreQualDB.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualDB.openapi.json)

#### ValueSet-PreQualPresentation API

OpenAPI specification for ValueSet-PreQualPresentation

[📖 Documentation](ValueSet-PreQualPresentation.md)
[🔗 OpenAPI Spec](schemas/ValueSet-PreQualPresentation.openapi.json)

#### StructureDefinition-PreQualDBwithIds API

OpenAPI specification for StructureDefinition-PreQualDBwithIds

[📖 Documentation](StructureDefinition-PreQualDBwithIds.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualDBwithIds.openapi.json)

#### ValueSet-PreQualVaccineType API

OpenAPI specification for ValueSet-PreQualVaccineType

[📖 Documentation](ValueSet-PreQualVaccineType.md)
[🔗 OpenAPI Spec](schemas/ValueSet-PreQualVaccineType.openapi.json)

### Using the DAK API

#### Schema Validation

Each JSON Schema can be used to validate data structures in your applications.

* Type definitions and constraints
* Property descriptions and examples
* Required field specifications
* Enumeration values with links to definitions

#### JSON-LD Semantic Integration

The JSON-LD vocabularies provide semantic web integration for ValueSet enumerations.

#### Integration with FHIR

All schemas are derived from the FHIR definitions in this implementation guide.

#### API Endpoints

The enumeration endpoints provide machine-readable lists of all available schemas.

-------

