### WHO Prequalified Vaccine Product Data

This implementation guide defines logical models for the WHO Prequalified Vaccines database. Instance data is generated from the [WHO PreQual API](https://extranet.who.int/prequal/vaccines/prequalified-vaccines) and is available for download rather than being published inline as IG artifacts.

#### Logical Models

The following logical models define the data structures for the WHO PreQual database:

| Logical Model | Description |
|---|---|
| [FinishedVaccineProducts](StructureDefinition-FinishedVaccineProducts.html) | Prequalified vaccine product details including product ID, manufacturer, NRA, dosage, and storage |
| [PreQualManufacturer](StructureDefinition-PreQualManufacturer.html) | Manufacturer/applicant organization details |
| [PreQualNRA](StructureDefinition-PreQualNRA.html) | National Regulatory Authority (NRA) details |
| [PreQualVaccine](StructureDefinition-PreQualVaccine.html) | Vaccine type details (full name, abbreviated name) |
| [PreQualBulkSupplier](StructureDefinition-PreQualBulkSupplier.html) | Bulk supplier organization details |
| [PreQualProductPackaging](StructureDefinition-PreQualProductPackaging.html) | Product packaging configurations (secondary, tertiary, shipping) |
| [PreQualDocumentDetail](StructureDefinition-PreQualDocumentDetail.html) | Document metadata (product inserts, photos, VSPARs) |
| [PreQualSiteDetail](StructureDefinition-PreQualSiteDetail.html) | Manufacturing site details |
| [PreQualProductIngredient](StructureDefinition-PreQualProductIngredient.html) | Product ingredient details |

#### Data Source

Instance data for these logical models is generated from the WHO PreQual API using the import script included in this repository. The source data includes:

- **~33 prequalified vaccine products** with full product details
- **~11 manufacturer organizations** (also available as FHIR Organization resources)
- **~8 product holder organizations** (also available as FHIR Organization resources)
- **~112 document metadata records** (product inserts, photos, regulatory documents)
- Packaging, ingredient, site, NRA, vaccine type, and bulk supplier records

#### Generating Instance Data

To regenerate instance data from the WHO PreQual API:

```bash
python scripts/import_salesforce.py
```

This produces FSH instance files in `input/fsh/examples/` that can be compiled by SUSHI. The generated instances conform to the logical models above.

#### Downloads

The full source dataset from the WHO PreQual API is available at:

- [prequal.json](https://github.com/litlfred/smart-pcmt-vaxprequal/blob/main/data/prequal.json) - Complete API export in JSON format
