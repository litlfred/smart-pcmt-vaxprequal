# DAK API Documentation Hub - SMART Product Catalog v0.1.0

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
* [ValueSet-PreQualDatabaseMetadata.schema.json](schemas/ValueSet-PreQualDatabaseMetadata.schema.json) - JSON Schema for WHO PreQualification Database Metadata Schema

#### LogicalModels.schema.json

Enumeration of all available Logical Model schemas

##### Available Endpoints:

* [StructureDefinition-PreQualSiteDetail.schema.json](schemas/StructureDefinition-PreQualSiteDetail.schema.json) - JSON Schema for WHO PreQual Site Detail
* [StructureDefinition-PreQualDB.schema.json](schemas/StructureDefinition-PreQualDB.schema.json) - JSON Schema for WHO Vaccine PreQual DB
* [StructureDefinition-PreQualProductIngredient.schema.json](schemas/StructureDefinition-PreQualProductIngredient.schema.json) - JSON Schema for WHO PreQual Product Ingredient
* [StructureDefinition-PreQualBulkSupplier.schema.json](schemas/StructureDefinition-PreQualBulkSupplier.schema.json) - JSON Schema for WHO PreQual Bulk Supplier
* [StructureDefinition-PreQualNRA.schema.json](schemas/StructureDefinition-PreQualNRA.schema.json) - JSON Schema for WHO PreQual NRA
* [StructureDefinition-PreQualProductPackaging.schema.json](schemas/StructureDefinition-PreQualProductPackaging.schema.json) - JSON Schema for WHO PreQual Product Packaging
* [StructureDefinition-FinishedVaccineProducts.schema.json](schemas/StructureDefinition-FinishedVaccineProducts.schema.json) - JSON Schema for WHO Vaccine PreQual DB - Finished Vaccine Products
* [StructureDefinition-PreQualDocumentDetail.schema.json](schemas/StructureDefinition-PreQualDocumentDetail.schema.json) - JSON Schema for WHO PreQual Document Detail
* [StructureDefinition-PreQualManufacturer.schema.json](schemas/StructureDefinition-PreQualManufacturer.schema.json) - JSON Schema for WHO PreQual Manufacturer
* [StructureDefinition-PreQualVaccine.schema.json](schemas/StructureDefinition-PreQualVaccine.schema.json) - JSON Schema for WHO PreQual Vaccine
* [StructureDefinition-PreQualDBwithIds.schema.json](schemas/StructureDefinition-PreQualDBwithIds.schema.json) - JSON Schema for WHO Vaccine PreQual DB with IDs

### ValueSet Schemas (4 available)

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

#### WHO PreQualification Database Metadata Schema

JSON Schema for WHO PreQualification Database Metadata ValueSet codes. Generated from FHIR expansions using IRI format.

[🩺 FHIR](ValueSet-PreQualDatabaseMetadata.md)
[📄 JSON Schema](schemas/ValueSet-PreQualDatabaseMetadata.schema.json)
[🏷️ Displays](schemas/ValueSet-PreQualDatabaseMetadata.displays.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualDatabaseMetadata.openapi.json)

### Logical Model Schemas (11 available)

JSON Schema definitions for FHIR Logical Models, defining structured data elements and their relationships:

#### WHO PreQual Site Detail

Logical model for manufacturing site details from the WHO PreQual API (SiteDetails).

[🩺 FHIR](StructureDefinition-PreQualSiteDetail.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualSiteDetail.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualSiteDetail.openapi.json)

#### WHO Vaccine PreQual DB

WHO Vaccine PreQual DB. Logical model for WHO PreQual DB as CSV file available at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines Columns of the CSV are as follows 1:Date of Prequalification 2:Vaccine Type 3:Commercial Name 4:Presentation 5:No. of doses 6:Manufacturer 7:Responsible NRA 

[🩺 FHIR](StructureDefinition-PreQualDB.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualDB.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDB.openapi.json)

#### WHO PreQual Product Ingredient

Logical model for product ingredient details from the WHO PreQual API (ProductIngredients).

[🩺 FHIR](StructureDefinition-PreQualProductIngredient.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualProductIngredient.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualProductIngredient.openapi.json)

#### WHO PreQual Bulk Supplier

Logical model for the bulk supplier organization from the WHO PreQual API (ProductDetails.BulkSupplier).

[🩺 FHIR](StructureDefinition-PreQualBulkSupplier.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualBulkSupplier.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualBulkSupplier.openapi.json)

#### WHO PreQual NRA

Logical model for the responsible National Regulatory Authority (NRA) from the WHO PreQual API (ProductDetails.NRADetails).

[🩺 FHIR](StructureDefinition-PreQualNRA.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualNRA.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualNRA.openapi.json)

#### WHO PreQual Product Packaging

Logical model for product packaging details from the WHO PreQual API (ProductPackaging).

[🩺 FHIR](StructureDefinition-PreQualProductPackaging.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualProductPackaging.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualProductPackaging.openapi.json)

#### WHO Vaccine PreQual DB - Finished Vaccine Products

WHO Vaccine PreQual DB - Finished Vaccine Products. Logical model for the WHO PreQual DB as provided by the backend API at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines This model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export. Sub-objects with Identification.Id are modeled as separate logical models and linked via references. Key fields from the API (FinishedVaccineProducts): ProductDetails.Identification.Id - Vaccine Product ID (authoritative) ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447) ProductDetails.Type - Product type code (e.g. Finished Vaccine Product) ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification ProductDetails.AssessmentProcedure - Assessment procedure code ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.) ProductDetails.PharmaceuticalForm - Pharmaceutical form details ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses ProductDetails.NRADetails - Responsible NRA with ID, name, address ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names ProductDetails.StorageDetails - Storage temperature and shelf life ProductDetails.Status - Prequalification status code

[🩺 FHIR](StructureDefinition-FinishedVaccineProducts.md)
[📄 JSON Schema](schemas/StructureDefinition-FinishedVaccineProducts.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-FinishedVaccineProducts.openapi.json)

#### WHO PreQual Document Detail

Logical model for document details from the WHO PreQual API (DocumentDetails).

[🩺 FHIR](StructureDefinition-PreQualDocumentDetail.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualDocumentDetail.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDocumentDetail.openapi.json)

#### WHO PreQual Manufacturer

Logical model for the manufacturer/applicant organization from the WHO PreQual API (ProductDetails.ApplicantOrganization).

[🩺 FHIR](StructureDefinition-PreQualManufacturer.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualManufacturer.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualManufacturer.openapi.json)

#### WHO PreQual Vaccine

Logical model for the vaccine type details from the WHO PreQual API (ProductDetails.VaccineDetails). Contains only vaccine-type-level fields that are stable across products. Product-specific fields (CommercialName, RouteOfAdministration) remain on FinishedVaccineProducts.

[🩺 FHIR](StructureDefinition-PreQualVaccine.md)
[📄 JSON Schema](schemas/StructureDefinition-PreQualVaccine.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualVaccine.openapi.json)

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

#### ValueSet-PreQualDatabaseMetadata Endpoints

API endpoints for WHO PreQualification Database Metadata Schema

[📄 JSON Schema](schemas/ValueSet-PreQualDatabaseMetadata.schema.json)
[🔗 OpenAPI](schemas/ValueSet-PreQualDatabaseMetadata.openapi.json)

#### StructureDefinition-PreQualSiteDetail Endpoints

API endpoints for WHO PreQual Site Detail

[📄 JSON Schema](schemas/StructureDefinition-PreQualSiteDetail.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualSiteDetail.openapi.json)

#### StructureDefinition-PreQualDB Endpoints

API endpoints for WHO Vaccine PreQual DB

[📄 JSON Schema](schemas/StructureDefinition-PreQualDB.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDB.openapi.json)

#### StructureDefinition-PreQualProductIngredient Endpoints

API endpoints for WHO PreQual Product Ingredient

[📄 JSON Schema](schemas/StructureDefinition-PreQualProductIngredient.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualProductIngredient.openapi.json)

#### StructureDefinition-PreQualBulkSupplier Endpoints

API endpoints for WHO PreQual Bulk Supplier

[📄 JSON Schema](schemas/StructureDefinition-PreQualBulkSupplier.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualBulkSupplier.openapi.json)

#### StructureDefinition-PreQualNRA Endpoints

API endpoints for WHO PreQual NRA

[📄 JSON Schema](schemas/StructureDefinition-PreQualNRA.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualNRA.openapi.json)

#### StructureDefinition-PreQualProductPackaging Endpoints

API endpoints for WHO PreQual Product Packaging

[📄 JSON Schema](schemas/StructureDefinition-PreQualProductPackaging.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualProductPackaging.openapi.json)

#### StructureDefinition-FinishedVaccineProducts Endpoints

API endpoints for WHO Vaccine PreQual DB - Finished Vaccine Products

[📄 JSON Schema](schemas/StructureDefinition-FinishedVaccineProducts.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-FinishedVaccineProducts.openapi.json)

#### StructureDefinition-PreQualDocumentDetail Endpoints

API endpoints for WHO PreQual Document Detail

[📄 JSON Schema](schemas/StructureDefinition-PreQualDocumentDetail.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualDocumentDetail.openapi.json)

#### StructureDefinition-PreQualManufacturer Endpoints

API endpoints for WHO PreQual Manufacturer

[📄 JSON Schema](schemas/StructureDefinition-PreQualManufacturer.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualManufacturer.openapi.json)

#### StructureDefinition-PreQualVaccine Endpoints

API endpoints for WHO PreQual Vaccine

[📄 JSON Schema](schemas/StructureDefinition-PreQualVaccine.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PreQualVaccine.openapi.json)

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

#### StructureDefinition-PreQualProductPackaging API

OpenAPI specification for StructureDefinition-PreQualProductPackaging

[📖 Documentation](StructureDefinition-PreQualProductPackaging.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualProductPackaging.openapi.json)

#### StructureDefinition-FinishedVaccineProducts API

OpenAPI specification for StructureDefinition-FinishedVaccineProducts

[📖 Documentation](StructureDefinition-FinishedVaccineProducts.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-FinishedVaccineProducts.openapi.json)

#### ValueSet-PreQualProductIds API

OpenAPI specification for ValueSet-PreQualProductIds

[📖 Documentation](ValueSet-PreQualProductIds.md)
[🔗 OpenAPI Spec](schemas/ValueSet-PreQualProductIds.openapi.json)

#### StructureDefinition-PreQualVaccine API

OpenAPI specification for StructureDefinition-PreQualVaccine

[📖 Documentation](StructureDefinition-PreQualVaccine.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualVaccine.openapi.json)

#### StructureDefinition-PreQualDB API

OpenAPI specification for StructureDefinition-PreQualDB

[📖 Documentation](StructureDefinition-PreQualDB.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualDB.openapi.json)

#### StructureDefinition-PreQualManufacturer API

OpenAPI specification for StructureDefinition-PreQualManufacturer

[📖 Documentation](StructureDefinition-PreQualManufacturer.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualManufacturer.openapi.json)

#### StructureDefinition-PreQualProductIngredient API

OpenAPI specification for StructureDefinition-PreQualProductIngredient

[📖 Documentation](StructureDefinition-PreQualProductIngredient.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualProductIngredient.openapi.json)

#### StructureDefinition-PreQualDocumentDetail API

OpenAPI specification for StructureDefinition-PreQualDocumentDetail

[📖 Documentation](StructureDefinition-PreQualDocumentDetail.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualDocumentDetail.openapi.json)

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

#### StructureDefinition-PreQualNRA API

OpenAPI specification for StructureDefinition-PreQualNRA

[📖 Documentation](StructureDefinition-PreQualNRA.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualNRA.openapi.json)

#### StructureDefinition-PreQualSiteDetail API

OpenAPI specification for StructureDefinition-PreQualSiteDetail

[📖 Documentation](StructureDefinition-PreQualSiteDetail.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualSiteDetail.openapi.json)

#### ValueSet-PreQualDatabaseMetadata API

OpenAPI specification for ValueSet-PreQualDatabaseMetadata

[📖 Documentation](ValueSet-PreQualDatabaseMetadata.md)
[🔗 OpenAPI Spec](schemas/ValueSet-PreQualDatabaseMetadata.openapi.json)

#### StructureDefinition-PreQualBulkSupplier API

OpenAPI specification for StructureDefinition-PreQualBulkSupplier

[📖 Documentation](StructureDefinition-PreQualBulkSupplier.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PreQualBulkSupplier.openapi.json)

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

