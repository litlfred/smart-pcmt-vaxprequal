# Artifact Index - SMART Product Catalog v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* **Artifact Index**

## Artifact Index

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [WHO PreQual Bulk Supplier](StructureDefinition-PreQualBulkSupplier.md) | Logical model for the bulk supplier organization from the WHO PreQual API (ProductDetails.BulkSupplier). |
| [WHO PreQual Document Detail](StructureDefinition-PreQualDocumentDetail.md) | Logical model for document details from the WHO PreQual API (DocumentDetails). |
| [WHO PreQual Manufacturer](StructureDefinition-PreQualManufacturer.md) | Logical model for the manufacturer/applicant organization from the WHO PreQual API (ProductDetails.ApplicantOrganization). |
| [WHO PreQual NRA](StructureDefinition-PreQualNRA.md) | Logical model for the responsible National Regulatory Authority (NRA) from the WHO PreQual API (ProductDetails.NRADetails). |
| [WHO PreQual Product](StructureDefinition-PreQualProduct.md) | Logical model for WHO PreQual Product from the backend API with additional data fields for referencing associated FHIR and logical model data objects. |
| [WHO PreQual Product Ingredient](StructureDefinition-PreQualProductIngredient.md) | Logical model for product ingredient details from the WHO PreQual API (ProductIngredients). |
| [WHO PreQual Product Packaging](StructureDefinition-PreQualProductPackaging.md) | Logical model for product packaging details from the WHO PreQual API (ProductPackaging). |
| [WHO PreQual Site Detail](StructureDefinition-PreQualSiteDetail.md) | Logical model for manufacturing site details from the WHO PreQual API (SiteDetails). |
| [WHO PreQual Vaccine](StructureDefinition-PreQualVaccine.md) | Logical model for the vaccine type details from the WHO PreQual API (ProductDetails.VaccineDetails). Contains only vaccine-type-level fields that are stable across products. Product-specific fields (CommercialName, RouteOfAdministration) remain on PreQualProduct. |
| [WHO Vaccine PreQual DB](StructureDefinition-PreQualDB.md) | WHO Vaccine PreQual DB. Logical model for WHO PreQual DB as CSV file available at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines Columns of the CSV are as follows 1:Date of Prequalification 2:Vaccine Type 3:Commercial Name 4:Presentation 5:No. of doses 6:Manufacturer 7:Responsible NRA |
| [WHO Vaccine PreQual DB (API)](StructureDefinition-PreQualDBAPI.md) | WHO Vaccine PreQual DB (API). Logical model for the WHO PreQual DB as provided by the backend API at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines This model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export.Key fields from the API (FinishedVaccineProducts): ProductDetails.Identification.Id - Vaccine Product ID (authoritative) ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447) ProductDetails.Type - Product type code (e.g. Finished Vaccine Product) ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification ProductDetails.AssessmentProcedure - Assessment procedure code ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.) ProductDetails.PharmaceuticalForm - Pharmaceutical form details ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses ProductDetails.NRADetails - Responsible NRA with ID, name, address ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names ProductDetails.StorageDetails - Storage temperature and shelf life ProductDetails.Status - Prequalification status code |
| [WHO Vaccine PreQual DB with IDs](StructureDefinition-PreQualDBwithIds.md) | Logical model for WHO PreQual DB as CSV file available at: https://extranet.who.int/prequal/vaccines/prequalified-vaccines Columns of the CSV are as follows with additional data fields for appropriately referencing associated data objects |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [WHO PreQualificaiton Presentation ](ValueSet-PreQualPresentation.md) | WHO PreQualificaiton Presentation |
| [WHO PreQualificaiton Vaccine Product Ids](ValueSet-PreQualProductIds.md) | WHO PreQualificaiton Vaccine Product Ids |
| [WHO PreQualificaiton VaccineType ](ValueSet-PreQualVaccineType.md) | WHO PreQualificaiton VaccineType |
| [WHO PreQualification Database Metadata](ValueSet-PreQualDatabaseMetadata.md) | Coded metadata values from the WHO PreQualification database |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [WHO PreQualificaiton Vaccine Presentations](CodeSystem-PreQualPresentation.md) | WHO PreQualificaiton Vaccine Presentations |
| [WHO PreQualificaiton Vaccine Product Ids](CodeSystem-PreQualProductIds.md) | WHO PreQualificaiton Vaccine Product Ids |
| [WHO PreQualificaiton Vaccine VaccineTypes](CodeSystem-PreQualVaccineType.md) | WHO PreQualificaiton Vaccine VaccineTypes |
| [WHO PreQualification Database Metadata](CodeSystem-PreQualDatabaseMetadata.md) | Coded metadata values from the WHO PreQualification database |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| |
| :--- |
| [PreQualDBtoProductAuthorizationLM](StructureMap-PreQualDBtoProductAuthorizationLM.md) |
| [PreQualDBtoProductLM](StructureMap-PreQualDBtoProductLM.md) |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [PreQual CSV to Vaccine Product ID Concept Map](ConceptMap-PreQualCSVtoAPIConceptMap.md) | Maps old CSV export MD5-based identifiers to authoritative vaccine product IDs |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Holder0013X00003cPkgXQAS](Organization-Holder0013X00003cPkgXQAS.md) |  |
| [Holder0013X0000498p4bQAA](Organization-Holder0013X0000498p4bQAA.md) |  |
| [Holder0013X0000498p4fQAA](Organization-Holder0013X0000498p4fQAA.md) |  |
| [Holder0013X0000498p4mQAA](Organization-Holder0013X0000498p4mQAA.md) |  |
| [Holder0013X0000498p4wQAA](Organization-Holder0013X0000498p4wQAA.md) |  |
| [Holder0013X0000498p53QAA](Organization-Holder0013X0000498p53QAA.md) |  |
| [Holder0013X0000498p67QAA](Organization-Holder0013X0000498p67QAA.md) |  |
| [Holder0013X00004993qyQAA](Organization-Holder0013X00004993qyQAA.md) |  |
| [Manufacturer0013X00003cPkzfQAC](Organization-Manufacturer0013X00003cPkzfQAC.md) |  |
| [Manufacturer0013X0000498p2jQAA](Organization-Manufacturer0013X0000498p2jQAA.md) |  |
| [Manufacturer0013X0000498p2qQAA](Organization-Manufacturer0013X0000498p2qQAA.md) |  |
| [Manufacturer0013X0000498p2wQAA](Organization-Manufacturer0013X0000498p2wQAA.md) |  |
| [Manufacturer0013X0000498p3PQAQ](Organization-Manufacturer0013X0000498p3PQAQ.md) |  |
| [Manufacturer0013X0000498p3ZQAQ](Organization-Manufacturer0013X0000498p3ZQAQ.md) |  |
| [Manufacturer0013X0000498p3gQAA](Organization-Manufacturer0013X0000498p3gQAA.md) |  |
| [Manufacturer0013X0000498p4LQAQ](Organization-Manufacturer0013X0000498p4LQAQ.md) |  |
| [Manufacturer0013X0000498p4ZQAQ](Organization-Manufacturer0013X0000498p4ZQAQ.md) |  |
| [Manufacturer0013X00004993qnQAA](Organization-Manufacturer0013X00004993qnQAA.md) |  |
| [Manufacturer0013X000049bJ9SQAU](Organization-Manufacturer0013X000049bJ9SQAU.md) |  |
| [PreQualBulkSupplier0013X0000498p3IQAQ](Binary-PreQualBulkSupplier0013X0000498p3IQAQ.md) |  |
| [PreQualDBa3K3X000005atRtUAI](Binary-PreQualDBa3K3X000005atRtUAI.md) |  |
| [PreQualDBa3K3X000005atSwUAI](Binary-PreQualDBa3K3X000005atSwUAI.md) |  |
| [PreQualDBa3K3X000006MihsUAC](Binary-PreQualDBa3K3X000006MihsUAC.md) |  |
| [PreQualDBa3K3X000006MihtUAC](Binary-PreQualDBa3K3X000006MihtUAC.md) |  |
| [PreQualDBa3K3X000006MihuUAC](Binary-PreQualDBa3K3X000006MihuUAC.md) |  |
| [PreQualDBa3K3X000006MihvUAC](Binary-PreQualDBa3K3X000006MihvUAC.md) |  |
| [PreQualDBa3K3X000006MihwUAC](Binary-PreQualDBa3K3X000006MihwUAC.md) |  |
| [PreQualDBa3K3X000006MihxUAC](Binary-PreQualDBa3K3X000006MihxUAC.md) |  |
| [PreQualDBa3K3X000006MihyUAC](Binary-PreQualDBa3K3X000006MihyUAC.md) |  |
| [PreQualDBa3K3X000006Mii0UAC](Binary-PreQualDBa3K3X000006Mii0UAC.md) |  |
| [PreQualDBa3K3X000006Mii1UAC](Binary-PreQualDBa3K3X000006Mii1UAC.md) |  |
| [PreQualDBa3K3X000006Mii2UAC](Binary-PreQualDBa3K3X000006Mii2UAC.md) |  |
| [PreQualDBa3K3X000006Mii3UAC](Binary-PreQualDBa3K3X000006Mii3UAC.md) |  |
| [PreQualDBa3K3X000006Mii5UAC](Binary-PreQualDBa3K3X000006Mii5UAC.md) |  |
| [PreQualDBa3K3X000006Mii6UAC](Binary-PreQualDBa3K3X000006Mii6UAC.md) |  |
| [PreQualDBa3K3X000006Mii7UAC](Binary-PreQualDBa3K3X000006Mii7UAC.md) |  |
| [PreQualDBa3K3X000006Mii8UAC](Binary-PreQualDBa3K3X000006Mii8UAC.md) |  |
| [PreQualDBa3K3X000006Mii9UAC](Binary-PreQualDBa3K3X000006Mii9UAC.md) |  |
| [PreQualDBa3K3X000006MiiAUAS](Binary-PreQualDBa3K3X000006MiiAUAS.md) |  |
| [PreQualDBa3K3X000006MiiBUAS](Binary-PreQualDBa3K3X000006MiiBUAS.md) |  |
| [PreQualDBa3K3X000006MiiCUAS](Binary-PreQualDBa3K3X000006MiiCUAS.md) |  |
| [PreQualDBa3K3X000006MiiDUAS](Binary-PreQualDBa3K3X000006MiiDUAS.md) |  |
| [PreQualDBa3K3X000006MiiEUAS](Binary-PreQualDBa3K3X000006MiiEUAS.md) |  |
| [PreQualDBa3K3X000006MiiFUAS](Binary-PreQualDBa3K3X000006MiiFUAS.md) |  |
| [PreQualDBa3K3X000006MiiGUAS](Binary-PreQualDBa3K3X000006MiiGUAS.md) |  |
| [PreQualDBa3K3X000006MiiHUAS](Binary-PreQualDBa3K3X000006MiiHUAS.md) |  |
| [PreQualDBa3K3X000006MiiIUAS](Binary-PreQualDBa3K3X000006MiiIUAS.md) |  |
| [PreQualDBa3K3X000006MiiJUAS](Binary-PreQualDBa3K3X000006MiiJUAS.md) |  |
| [PreQualDBa3K3X000006MiiKUAS](Binary-PreQualDBa3K3X000006MiiKUAS.md) |  |
| [PreQualDBa3K3X000006MiiLUAS](Binary-PreQualDBa3K3X000006MiiLUAS.md) |  |
| [PreQualDBa3K3X000006MiiMUAS](Binary-PreQualDBa3K3X000006MiiMUAS.md) |  |
| [PreQualDBa3K3X000006MiiNUAS](Binary-PreQualDBa3K3X000006MiiNUAS.md) |  |
| [PreQualDBa3K3X000006MiiOUAS](Binary-PreQualDBa3K3X000006MiiOUAS.md) |  |
| [PreQualDocument069NN000005hpfqYAA](Binary-PreQualDocument069NN000005hpfqYAA.md) |  |
| [PreQualDocument069NN000005hsVMYAY](Binary-PreQualDocument069NN000005hsVMYAY.md) |  |
| [PreQualDocument069NN000005huAeYAI](Binary-PreQualDocument069NN000005huAeYAI.md) |  |
| [PreQualDocument069NN000005huyhYAA](Binary-PreQualDocument069NN000005huyhYAA.md) |  |
| [PreQualDocument069NN000005hvDPYAY](Binary-PreQualDocument069NN000005hvDPYAY.md) |  |
| [PreQualDocument069NN000005hwh7YAA](Binary-PreQualDocument069NN000005hwh7YAA.md) |  |
| [PreQualDocument069NN000005hwyuYAA](Binary-PreQualDocument069NN000005hwyuYAA.md) |  |
| [PreQualDocument069NN000005hx6rYAA](Binary-PreQualDocument069NN000005hx6rYAA.md) |  |
| [PreQualDocument069NN000005hxOcYAI](Binary-PreQualDocument069NN000005hxOcYAI.md) |  |
| [PreQualDocument069NN000005hykYYAQ](Binary-PreQualDocument069NN000005hykYYAQ.md) |  |
| [PreQualDocument069NN000005hyvmYAA](Binary-PreQualDocument069NN000005hyvmYAA.md) |  |
| [PreQualDocument069NN000005hyzMYAQ](Binary-PreQualDocument069NN000005hyzMYAQ.md) |  |
| [PreQualDocument069NN000005hzTfYAI](Binary-PreQualDocument069NN000005hzTfYAI.md) |  |
| [PreQualDocument069NN000005hziIYAQ](Binary-PreQualDocument069NN000005hziIYAQ.md) |  |
| [PreQualDocument069NN000005hzjwYAA](Binary-PreQualDocument069NN000005hzjwYAA.md) |  |
| [PreQualDocument069NN000005hzzuYAA](Binary-PreQualDocument069NN000005hzzuYAA.md) |  |
| [PreQualDocument069NN000005i0HgYAI](Binary-PreQualDocument069NN000005i0HgYAI.md) |  |
| [PreQualDocument069NN000005i0W8YAI](Binary-PreQualDocument069NN000005i0W8YAI.md) |  |
| [PreQualDocument069NN000005i0XuYAI](Binary-PreQualDocument069NN000005i0XuYAI.md) |  |
| [PreQualDocument069NN000005i0mQYAQ](Binary-PreQualDocument069NN000005i0mQYAQ.md) |  |
| [PreQualDocument069NN000005i0uTYAQ](Binary-PreQualDocument069NN000005i0uTYAQ.md) |  |
| [PreQualDocument069NN000005i1VTYAY](Binary-PreQualDocument069NN000005i1VTYAY.md) |  |
| [PreQualDocument069NN000005i1aFYAQ](Binary-PreQualDocument069NN000005i1aFYAQ.md) |  |
| [PreQualDocument069NN000005i1dXYAQ](Binary-PreQualDocument069NN000005i1dXYAQ.md) |  |
| [PreQualDocument069NN000005i1nFYAQ](Binary-PreQualDocument069NN000005i1nFYAQ.md) |  |
| [PreQualDocument069NN000005i24tYAA](Binary-PreQualDocument069NN000005i24tYAA.md) |  |
| [PreQualDocument069NN000005i287YAA](Binary-PreQualDocument069NN000005i287YAA.md) |  |
| [PreQualDocument069NN000005i2JVYAY](Binary-PreQualDocument069NN000005i2JVYAY.md) |  |
| [PreQualDocument069NN000005i2OIYAY](Binary-PreQualDocument069NN000005i2OIYAY.md) |  |
| [PreQualDocument069NN000005i2XxYAI](Binary-PreQualDocument069NN000005i2XxYAI.md) |  |
| [PreQualDocument069NN000005i2ZZYAY](Binary-PreQualDocument069NN000005i2ZZYAY.md) |  |
| [PreQualDocument069NN000005i2jEYAQ](Binary-PreQualDocument069NN000005i2jEYAQ.md) |  |
| [PreQualDocument069NN000005i2svYAA](Binary-PreQualDocument069NN000005i2svYAA.md) |  |
| [PreQualDocument069NN000005i3AhYAI](Binary-PreQualDocument069NN000005i3AhYAI.md) |  |
| [PreQualDocument069NN000005i3IgYAI](Binary-PreQualDocument069NN000005i3IgYAI.md) |  |
| [PreQualDocument069NN000005i3fGYAQ](Binary-PreQualDocument069NN000005i3fGYAQ.md) |  |
| [PreQualDocument069NN000005i48IYAQ](Binary-PreQualDocument069NN000005i48IYAQ.md) |  |
| [PreQualDocument069NN000005i4HzYAI](Binary-PreQualDocument069NN000005i4HzYAI.md) |  |
| [PreQualDocument069NN000005i4gCYAQ](Binary-PreQualDocument069NN000005i4gCYAQ.md) |  |
| [PreQualDocument069NN000005i4hmYAA](Binary-PreQualDocument069NN000005i4hmYAA.md) |  |
| [PreQualDocument069NN000005i4mdYAA](Binary-PreQualDocument069NN000005i4mdYAA.md) |  |
| [PreQualDocument069NN000005i4mgYAA](Binary-PreQualDocument069NN000005i4mgYAA.md) |  |
| [PreQualDocument069NN000005i4umYAA](Binary-PreQualDocument069NN000005i4umYAA.md) |  |
| [PreQualDocument069NN000005i51DYAQ](Binary-PreQualDocument069NN000005i51DYAQ.md) |  |
| [PreQualDocument069NN000005i55zYAA](Binary-PreQualDocument069NN000005i55zYAA.md) |  |
| [PreQualDocument069NN000005i57cYAA](Binary-PreQualDocument069NN000005i57cYAA.md) |  |
| [PreQualDocument069NN000005i5CfYAI](Binary-PreQualDocument069NN000005i5CfYAI.md) |  |
| [PreQualDocument069NN000005i5QyYAI](Binary-PreQualDocument069NN000005i5QyYAI.md) |  |
| [PreQualDocument069NN000005i5UHYAY](Binary-PreQualDocument069NN000005i5UHYAY.md) |  |
| [PreQualDocument069NN000005i5XUYAY](Binary-PreQualDocument069NN000005i5XUYAY.md) |  |
| [PreQualDocument069NN000005i5aeYAA](Binary-PreQualDocument069NN000005i5aeYAA.md) |  |
| [PreQualDocument069NN000005i5igYAA](Binary-PreQualDocument069NN000005i5igYAA.md) |  |
| [PreQualDocument069NN000005i60aYAA](Binary-PreQualDocument069NN000005i60aYAA.md) |  |
| [PreQualDocument069NN000005i65LYAQ](Binary-PreQualDocument069NN000005i65LYAQ.md) |  |
| [PreQualDocument069NN000005i6DJYAY](Binary-PreQualDocument069NN000005i6DJYAY.md) |  |
| [PreQualDocument069NN000005i7PWYAY](Binary-PreQualDocument069NN000005i7PWYAY.md) |  |
| [PreQualDocument069NN000005i873YAA](Binary-PreQualDocument069NN000005i873YAA.md) |  |
| [PreQualDocument069NN000005i8GtYAI](Binary-PreQualDocument069NN000005i8GtYAI.md) |  |
| [PreQualDocument069NN000005i8GuYAI](Binary-PreQualDocument069NN000005i8GuYAI.md) |  |
| [PreQualDocument069NN000005i9CoYAI](Binary-PreQualDocument069NN000005i9CoYAI.md) |  |
| [PreQualDocument069NN000005i9hYYAQ](Binary-PreQualDocument069NN000005i9hYYAQ.md) |  |
| [PreQualDocument069NN000005iA7QYAU](Binary-PreQualDocument069NN000005iA7QYAU.md) |  |
| [PreQualDocument069NN000005iAAVYA2](Binary-PreQualDocument069NN000005iAAVYA2.md) |  |
| [PreQualDocument069NN000005iAIXYA2](Binary-PreQualDocument069NN000005iAIXYA2.md) |  |
| [PreQualDocument069NN000005iAiPYAU](Binary-PreQualDocument069NN000005iAiPYAU.md) |  |
| [PreQualDocument069NN000005iC2hYAE](Binary-PreQualDocument069NN000005iC2hYAE.md) |  |
| [PreQualDocument069NN000005iCqdYAE](Binary-PreQualDocument069NN000005iCqdYAE.md) |  |
| [PreQualDocument069NN000005iDEtYAM](Binary-PreQualDocument069NN000005iDEtYAM.md) |  |
| [PreQualDocument069NN000005iEvgYAE](Binary-PreQualDocument069NN000005iEvgYAE.md) |  |
| [PreQualDocument069NN000005iFlFYAU](Binary-PreQualDocument069NN000005iFlFYAU.md) |  |
| [PreQualDocument069NN000005iFy9YAE](Binary-PreQualDocument069NN000005iFy9YAE.md) |  |
| [PreQualDocument069NN000005iGB5YAM](Binary-PreQualDocument069NN000005iGB5YAM.md) |  |
| [PreQualDocument069NN000005iGEMYA2](Binary-PreQualDocument069NN000005iGEMYA2.md) |  |
| [PreQualDocument069NN000005iGHVYA2](Binary-PreQualDocument069NN000005iGHVYA2.md) |  |
| [PreQualDocument069NN000005iGiyYAE](Binary-PreQualDocument069NN000005iGiyYAE.md) |  |
| [PreQualDocument069NN000005iH8nYAE](Binary-PreQualDocument069NN000005iH8nYAE.md) |  |
| [PreQualDocument069NN000005iHaBYAU](Binary-PreQualDocument069NN000005iHaBYAU.md) |  |
| [PreQualDocument069NN000005iHf1YAE](Binary-PreQualDocument069NN000005iHf1YAE.md) |  |
| [PreQualDocument069NN000005iIUfYAM](Binary-PreQualDocument069NN000005iIUfYAM.md) |  |
| [PreQualDocument069NN000005iJ7LYAU](Binary-PreQualDocument069NN000005iJ7LYAU.md) |  |
| [PreQualDocument069NN000005iJTxYAM](Binary-PreQualDocument069NN000005iJTxYAM.md) |  |
| [PreQualDocument069NN000005iJiVYAU](Binary-PreQualDocument069NN000005iJiVYAU.md) |  |
| [PreQualDocument069NN000005iJyYYAU](Binary-PreQualDocument069NN000005iJyYYAU.md) |  |
| [PreQualDocument069NN000005iK6fYAE](Binary-PreQualDocument069NN000005iK6fYAE.md) |  |
| [PreQualDocument069NN000005iK8HYAU](Binary-PreQualDocument069NN000005iK8HYAU.md) |  |
| [PreQualDocument069NN000005iKMmYAM](Binary-PreQualDocument069NN000005iKMmYAM.md) |  |
| [PreQualDocument069NN000005iKRaYAM](Binary-PreQualDocument069NN000005iKRaYAM.md) |  |
| [PreQualDocument069NN000005iKTCYA2](Binary-PreQualDocument069NN000005iKTCYA2.md) |  |
| [PreQualDocument069NN000005iKWQYA2](Binary-PreQualDocument069NN000005iKWQYA2.md) |  |
| [PreQualDocument069NN000005iKkwYAE](Binary-PreQualDocument069NN000005iKkwYAE.md) |  |
| [PreQualDocument069NN000005iKrOYAU](Binary-PreQualDocument069NN000005iKrOYAU.md) |  |
| [PreQualDocument069NN000005iKxrYAE](Binary-PreQualDocument069NN000005iKxrYAE.md) |  |
| [PreQualDocument069NN000005iL9AYAU](Binary-PreQualDocument069NN000005iL9AYAU.md) |  |
| [PreQualDocument069NN000005iLDxYAM](Binary-PreQualDocument069NN000005iLDxYAM.md) |  |
| [PreQualDocument069NN000005iLInYAM](Binary-PreQualDocument069NN000005iLInYAM.md) |  |
| [PreQualDocument069NN000005iLQxYAM](Binary-PreQualDocument069NN000005iLQxYAM.md) |  |
| [PreQualDocument069NN000005iLQyYAM](Binary-PreQualDocument069NN000005iLQyYAM.md) |  |
| [PreQualDocument069NN000005iLcCYAU](Binary-PreQualDocument069NN000005iLcCYAU.md) |  |
| [PreQualDocument069NN000005iLkDYAU](Binary-PreQualDocument069NN000005iLkDYAU.md) |  |
| [PreQualDocument069NN000005iLnTYAU](Binary-PreQualDocument069NN000005iLnTYAU.md) |  |
| [PreQualDocument069NN000005kEI2YAM](Binary-PreQualDocument069NN000005kEI2YAM.md) |  |
| [PreQualDocument069NN000005kEQ6YAM](Binary-PreQualDocument069NN000005kEQ6YAM.md) |  |
| [PreQualDocument069NN000005kEZlYAM](Binary-PreQualDocument069NN000005kEZlYAM.md) |  |
| [PreQualDocument069NN000005kErVYAU](Binary-PreQualDocument069NN000005kErVYAU.md) |  |
| [PreQualDocument069NN000005kFnaYAE](Binary-PreQualDocument069NN000005kFnaYAE.md) |  |
| [PreQualDocument069NN000005kGJsYAM](Binary-PreQualDocument069NN000005kGJsYAM.md) |  |
| [PreQualDocument069NN000005kHUSYA2](Binary-PreQualDocument069NN000005kHUSYA2.md) |  |
| [PreQualDocument069NN000005kJG6YAM](Binary-PreQualDocument069NN000005kJG6YAM.md) |  |
| [PreQualDocument069NN000005kJhVYAU](Binary-PreQualDocument069NN000005kJhVYAU.md) |  |
| [PreQualDocument069NN000005knsbYAA](Binary-PreQualDocument069NN000005knsbYAA.md) |  |
| [PreQualDocument069NN000005lDn4YAE](Binary-PreQualDocument069NN000005lDn4YAE.md) |  |
| [PreQualDocument069NN000005lDwoYAE](Binary-PreQualDocument069NN000005lDwoYAE.md) |  |
| [PreQualIngredienta3K3X000006MihuUACIng1](Binary-PreQualIngredienta3K3X000006MihuUACIng1.md) |  |
| [PreQualIngredienta3K3X000006MihvUACIng1](Binary-PreQualIngredienta3K3X000006MihvUACIng1.md) |  |
| [PreQualIngredienta3K3X000006MihwUACIng1](Binary-PreQualIngredienta3K3X000006MihwUACIng1.md) |  |
| [PreQualIngredienta3K3X000006MihxUACIng1](Binary-PreQualIngredienta3K3X000006MihxUACIng1.md) |  |
| [PreQualIngredienta3K3X000006MihxUACIng2](Binary-PreQualIngredienta3K3X000006MihxUACIng2.md) |  |
| [PreQualIngredienta3K3X000006MihyUACIng1](Binary-PreQualIngredienta3K3X000006MihyUACIng1.md) |  |
| [PreQualIngredienta3K3X000006MihyUACIng2](Binary-PreQualIngredienta3K3X000006MihyUACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii0UACIng1](Binary-PreQualIngredienta3K3X000006Mii0UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii0UACIng2](Binary-PreQualIngredienta3K3X000006Mii0UACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii0UACIng3](Binary-PreQualIngredienta3K3X000006Mii0UACIng3.md) |  |
| [PreQualIngredienta3K3X000006Mii0UACIng4](Binary-PreQualIngredienta3K3X000006Mii0UACIng4.md) |  |
| [PreQualIngredienta3K3X000006Mii1UACIng1](Binary-PreQualIngredienta3K3X000006Mii1UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii1UACIng2](Binary-PreQualIngredienta3K3X000006Mii1UACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii2UACIng1](Binary-PreQualIngredienta3K3X000006Mii2UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii2UACIng2](Binary-PreQualIngredienta3K3X000006Mii2UACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii3UACIng1](Binary-PreQualIngredienta3K3X000006Mii3UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii3UACIng2](Binary-PreQualIngredienta3K3X000006Mii3UACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii3UACIng3](Binary-PreQualIngredienta3K3X000006Mii3UACIng3.md) |  |
| [PreQualIngredienta3K3X000006Mii5UACIng1](Binary-PreQualIngredienta3K3X000006Mii5UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii6UACIng1](Binary-PreQualIngredienta3K3X000006Mii6UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii6UACIng2](Binary-PreQualIngredienta3K3X000006Mii6UACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii7UACIng1](Binary-PreQualIngredienta3K3X000006Mii7UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii8UACIng1](Binary-PreQualIngredienta3K3X000006Mii8UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii8UACIng2](Binary-PreQualIngredienta3K3X000006Mii8UACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii8UACIng3](Binary-PreQualIngredienta3K3X000006Mii8UACIng3.md) |  |
| [PreQualIngredienta3K3X000006Mii9UACIng1](Binary-PreQualIngredienta3K3X000006Mii9UACIng1.md) |  |
| [PreQualIngredienta3K3X000006Mii9UACIng2](Binary-PreQualIngredienta3K3X000006Mii9UACIng2.md) |  |
| [PreQualIngredienta3K3X000006Mii9UACIng3](Binary-PreQualIngredienta3K3X000006Mii9UACIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiAUASIng1](Binary-PreQualIngredienta3K3X000006MiiAUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiAUASIng2](Binary-PreQualIngredienta3K3X000006MiiAUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiAUASIng3](Binary-PreQualIngredienta3K3X000006MiiAUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiBUASIng1](Binary-PreQualIngredienta3K3X000006MiiBUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiBUASIng2](Binary-PreQualIngredienta3K3X000006MiiBUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiBUASIng3](Binary-PreQualIngredienta3K3X000006MiiBUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiBUASIng4](Binary-PreQualIngredienta3K3X000006MiiBUASIng4.md) |  |
| [PreQualIngredienta3K3X000006MiiBUASIng5](Binary-PreQualIngredienta3K3X000006MiiBUASIng5.md) |  |
| [PreQualIngredienta3K3X000006MiiCUASIng1](Binary-PreQualIngredienta3K3X000006MiiCUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiCUASIng2](Binary-PreQualIngredienta3K3X000006MiiCUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiDUASIng1](Binary-PreQualIngredienta3K3X000006MiiDUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiDUASIng2](Binary-PreQualIngredienta3K3X000006MiiDUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiEUASIng1](Binary-PreQualIngredienta3K3X000006MiiEUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiEUASIng2](Binary-PreQualIngredienta3K3X000006MiiEUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiEUASIng3](Binary-PreQualIngredienta3K3X000006MiiEUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiFUASIng1](Binary-PreQualIngredienta3K3X000006MiiFUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiFUASIng2](Binary-PreQualIngredienta3K3X000006MiiFUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiGUASIng1](Binary-PreQualIngredienta3K3X000006MiiGUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiGUASIng2](Binary-PreQualIngredienta3K3X000006MiiGUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiGUASIng3](Binary-PreQualIngredienta3K3X000006MiiGUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiHUASIng1](Binary-PreQualIngredienta3K3X000006MiiHUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiHUASIng2](Binary-PreQualIngredienta3K3X000006MiiHUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiHUASIng3](Binary-PreQualIngredienta3K3X000006MiiHUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiHUASIng4](Binary-PreQualIngredienta3K3X000006MiiHUASIng4.md) |  |
| [PreQualIngredienta3K3X000006MiiIUASIng1](Binary-PreQualIngredienta3K3X000006MiiIUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiIUASIng2](Binary-PreQualIngredienta3K3X000006MiiIUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiIUASIng3](Binary-PreQualIngredienta3K3X000006MiiIUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiIUASIng4](Binary-PreQualIngredienta3K3X000006MiiIUASIng4.md) |  |
| [PreQualIngredienta3K3X000006MiiJUASIng1](Binary-PreQualIngredienta3K3X000006MiiJUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiJUASIng2](Binary-PreQualIngredienta3K3X000006MiiJUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiJUASIng3](Binary-PreQualIngredienta3K3X000006MiiJUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiJUASIng4](Binary-PreQualIngredienta3K3X000006MiiJUASIng4.md) |  |
| [PreQualIngredienta3K3X000006MiiKUASIng1](Binary-PreQualIngredienta3K3X000006MiiKUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiKUASIng2](Binary-PreQualIngredienta3K3X000006MiiKUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiKUASIng3](Binary-PreQualIngredienta3K3X000006MiiKUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiKUASIng4](Binary-PreQualIngredienta3K3X000006MiiKUASIng4.md) |  |
| [PreQualIngredienta3K3X000006MiiLUASIng1](Binary-PreQualIngredienta3K3X000006MiiLUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiMUASIng1](Binary-PreQualIngredienta3K3X000006MiiMUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiMUASIng2](Binary-PreQualIngredienta3K3X000006MiiMUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiNUASIng1](Binary-PreQualIngredienta3K3X000006MiiNUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiNUASIng2](Binary-PreQualIngredienta3K3X000006MiiNUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiNUASIng3](Binary-PreQualIngredienta3K3X000006MiiNUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiNUASIng4](Binary-PreQualIngredienta3K3X000006MiiNUASIng4.md) |  |
| [PreQualIngredienta3K3X000006MiiOUASIng1](Binary-PreQualIngredienta3K3X000006MiiOUASIng1.md) |  |
| [PreQualIngredienta3K3X000006MiiOUASIng2](Binary-PreQualIngredienta3K3X000006MiiOUASIng2.md) |  |
| [PreQualIngredienta3K3X000006MiiOUASIng3](Binary-PreQualIngredienta3K3X000006MiiOUASIng3.md) |  |
| [PreQualIngredienta3K3X000006MiiOUASIng4](Binary-PreQualIngredienta3K3X000006MiiOUASIng4.md) |  |
| [PreQualManufacturer0013X00003cPkzfQAC](Binary-PreQualManufacturer0013X00003cPkzfQAC.md) |  |
| [PreQualManufacturer0013X0000498p2jQAA](Binary-PreQualManufacturer0013X0000498p2jQAA.md) |  |
| [PreQualManufacturer0013X0000498p2qQAA](Binary-PreQualManufacturer0013X0000498p2qQAA.md) |  |
| [PreQualManufacturer0013X0000498p2wQAA](Binary-PreQualManufacturer0013X0000498p2wQAA.md) |  |
| [PreQualManufacturer0013X0000498p3PQAQ](Binary-PreQualManufacturer0013X0000498p3PQAQ.md) |  |
| [PreQualManufacturer0013X0000498p3ZQAQ](Binary-PreQualManufacturer0013X0000498p3ZQAQ.md) |  |
| [PreQualManufacturer0013X0000498p3gQAA](Binary-PreQualManufacturer0013X0000498p3gQAA.md) |  |
| [PreQualManufacturer0013X0000498p4LQAQ](Binary-PreQualManufacturer0013X0000498p4LQAQ.md) |  |
| [PreQualManufacturer0013X0000498p4ZQAQ](Binary-PreQualManufacturer0013X0000498p4ZQAQ.md) |  |
| [PreQualManufacturer0013X00004993qnQAA](Binary-PreQualManufacturer0013X00004993qnQAA.md) |  |
| [PreQualManufacturer0013X000049bJ9SQAU](Binary-PreQualManufacturer0013X000049bJ9SQAU.md) |  |
| [PreQualNRA0013X00003cPkgXQAS](Binary-PreQualNRA0013X00003cPkgXQAS.md) |  |
| [PreQualNRA0013X0000498p4bQAA](Binary-PreQualNRA0013X0000498p4bQAA.md) |  |
| [PreQualNRA0013X0000498p4fQAA](Binary-PreQualNRA0013X0000498p4fQAA.md) |  |
| [PreQualNRA0013X0000498p4mQAA](Binary-PreQualNRA0013X0000498p4mQAA.md) |  |
| [PreQualNRA0013X0000498p4wQAA](Binary-PreQualNRA0013X0000498p4wQAA.md) |  |
| [PreQualNRA0013X0000498p53QAA](Binary-PreQualNRA0013X0000498p53QAA.md) |  |
| [PreQualNRA0013X0000498p67QAA](Binary-PreQualNRA0013X0000498p67QAA.md) |  |
| [PreQualNRA0013X00004993qyQAA](Binary-PreQualNRA0013X00004993qyQAA.md) |  |
| [PreQualPackaginga3H3X000001VaaBUAS](Binary-PreQualPackaginga3H3X000001VaaBUAS.md) | Carton of 1 tube [Dimensions: 5.3 x 8.7 x 2.5 cm] |
| [PreQualPackaginga3H3X000001VaaCUAS](Binary-PreQualPackaginga3H3X000001VaaCUAS.md) | Carton of 10 tubes [Dimensions: 12.8 x 8.7 x 2.5 cm] |
| [PreQualPackaginga3H3X000001VaaDUAS](Binary-PreQualPackaginga3H3X000001VaaDUAS.md) | Carton of 50 tubes [Dimensions: 14.6 x 8.5 x 6.9 cm] |
| [PreQualPackaginga3H3X000001VaaEUAS](Binary-PreQualPackaginga3H3X000001VaaEUAS.md) | Box of 220 cartons (220 doses) [Dimensions: 34.2 x 25.1 x 43.1 cm] |
| [PreQualPackaginga3H3X000001VaaFUAS](Binary-PreQualPackaginga3H3X000001VaaFUAS.md) | Box of 68 cartons (680 doses) [Dimensions: 34.2 x 25.1 x 43.1 cm] |
| [PreQualPackaginga3H3X000001VaaGUAS](Binary-PreQualPackaginga3H3X000001VaaGUAS.md) | Box of 30 cartons (1500 doses) [Dimensions: 34.2 x 25.1 x 43.1 cm] |
| [PreQualPackaginga3H3X000001VaaHUAS](Binary-PreQualPackaginga3H3X000001VaaHUAS.md) | 50 |
| [PreQualPackaginga3H3X000001VaaIUAS](Binary-PreQualPackaginga3H3X000001VaaIUAS.md) | 10 |
| [PreQualPackaginga3H3X000001VaaJUAS](Binary-PreQualPackaginga3H3X000001VaaJUAS.md) | 10 |
| [PreQualPackaginga3H3X000001VaaKUAS](Binary-PreQualPackaginga3H3X000001VaaKUAS.md) | 20 |
| [PreQualPackaginga3H3X000001VaaLUAS](Binary-PreQualPackaginga3H3X000001VaaLUAS.md) | Active: Carton of 100 ampoules (2 000 doses)[Dimensions: 13.6 x 13.3 x 8 cm] |
| [PreQualPackaginga3H3X000001VaaMUAS](Binary-PreQualPackaginga3H3X000001VaaMUAS.md) | Diluent:Carton of 100 ampoules (2 000 doses)[Dimensions: 13.6 x 13.3 x 6.6 cm] |
| [PreQualPackaginga3H3X000001VaaNUAS](Binary-PreQualPackaginga3H3X000001VaaNUAS.md) | Active: Box containing 4 000 amps. (80 000 doses)[Dimensions: 61 x 76 x 43 cm] |
| [PreQualPackaginga3H3X000001VaaOUAS](Binary-PreQualPackaginga3H3X000001VaaOUAS.md) | Diluent: Box containing 5000 amps (100 000 doses)[Dimensions: 75 x 41 x 37 cm] |
| [PreQualPackaginga3H3X000001VaaPUAS](Binary-PreQualPackaginga3H3X000001VaaPUAS.md) | Carton of 10 vials (10 doses) [Dimensions: 8.5 x 3.8 x 4.5 cm] |
| [PreQualPackaginga3H3X000001VaaQUAS](Binary-PreQualPackaginga3H3X000001VaaQUAS.md) | Box of 220 cartons of 10 vials (2 200 doses) [Dimensions: 57.5 x 53.5 x 49.0 cm] |
| [PreQualPackaginga3H3X000001VaaVUAS](Binary-PreQualPackaginga3H3X000001VaaVUAS.md) | Carton of 100 vials (active) [Dimensions 17.8 x 14.7 x 3.7 cm] |
| [PreQualPackaginga3H3X000001VaaWUAS](Binary-PreQualPackaginga3H3X000001VaaWUAS.md) | Carton of 100 ampoules (diluent) [Dimensions 19 x 18 x 7.5 cm] |
| [PreQualPackaginga3H3X000001VaaXUAS](Binary-PreQualPackaginga3H3X000001VaaXUAS.md) | Box of 24 cartons of 100 vials (active) (2400 vials/ 2400 doses)[Dimensions 34 x 25 x 43 cm] |
| [PreQualPackaginga3H3X000001VaaYUAS](Binary-PreQualPackaginga3H3X000001VaaYUAS.md) | Box of 8 cartons of 100 ampoules/800 doses (diluent) [Dimensions 32 x 20 x 39 cm] |
| [PreQualPackaginga3H3X000001VaaZUAS](Binary-PreQualPackaginga3H3X000001VaaZUAS.md) | Carton of 10 vials (100 doses)[Dimensions: 12.5 x 5.5 x 5.7 cm] |
| [PreQualPackaginga3H3X000001VaaaUAC](Binary-PreQualPackaginga3H3X000001VaaaUAC.md) | Box containing 192 cartons of 10 vials (19200 doses / 1920 vials)[Dimensions: 5.8 x 5.8 x 5.3 cm] |
| [PreQualPackaginga3H3X000001VaabUAC](Binary-PreQualPackaginga3H3X000001VaabUAC.md) | Carton of 10 vials (200 doses)[Dimensions: 12.5 x 5.5 x 5.7 cm] |
| [PreQualPackaginga3H3X000001VaacUAC](Binary-PreQualPackaginga3H3X000001VaacUAC.md) | Box containing 192 cartons of 10 vials (38 400 doses / 1 920 vials)[Dimensions: 5.8 x 5.8 x 5.3 cm] |
| [PreQualPackaginga3H3X000001VaadUAC](Binary-PreQualPackaginga3H3X000001VaadUAC.md) | Carton of 10 vials (100 doses) [Dimensions: 12.5 x 5.5 x 5.7 cm] |
| [PreQualPackaginga3H3X000001VaaeUAC](Binary-PreQualPackaginga3H3X000001VaaeUAC.md) | Box containing 192 cartons of 10 vials (19 200 doses / 1 920 vials) [Dimensions: 58 x 58 x 53 cm] |
| [PreQualPackaginga3H3X000001VaajUAC](Binary-PreQualPackaginga3H3X000001VaajUAC.md) | Carton of 1 single dose vial [Dimensions 3.0 x 2.0 x 5.4 cm] |
| [PreQualPackaginga3H3X000001VaakUAC](Binary-PreQualPackaginga3H3X000001VaakUAC.md) | Carton of 50 single dose vials (50 doses)[Dimensions: 16.3 x 8.5 x 4.4 cm] |
| [PreQualPackaginga3H3X000001VaalUAC](Binary-PreQualPackaginga3H3X000001VaalUAC.md) | Box containing 400 single dose cartons (400 doses)[Dimensions: 47 x 38 x 38 cm]. |
| [PreQualPackaginga3H3X000001VaamUAC](Binary-PreQualPackaginga3H3X000001VaamUAC.md) | Box containing 1600 single dose cartons (1600 doses)[Dimensions: 84 x 64 x 71 cm] |
| [PreQualPackaginga3H3X000001VaanUAC](Binary-PreQualPackaginga3H3X000001VaanUAC.md) | Box containing 1500 vials (1500 doses)[Dimensions: 60 x 50 x 45 cm] |
| [PreQualPackaginga3H3X000001VaaoUAC](Binary-PreQualPackaginga3H3X000001VaaoUAC.md) | Carton containing 3 vials (60 doses)[Dimensions: 5.4 x 5.3 x 2.2 cm] |
| [PreQualPackaginga3H3X000001VaapUAC](Binary-PreQualPackaginga3H3X000001VaapUAC.md) | Box of 20 wrapped cartons containing 10 boxes of 3 vials each (600 vials/12000 doses)[Dimensions: 46 x 29.5 x 14 cm] |
| [PreQualPackaginga3H3X000001VaaqUAC](Binary-PreQualPackaginga3H3X000001VaaqUAC.md) | Carton of 10 vials (100 paediatric doses) [Dimensions: 11.5 x 4.7 x 5.3 cm]. |
| [PreQualPackaginga3H3X000001VaarUAC](Binary-PreQualPackaginga3H3X000001VaarUAC.md) | Carton of 10 vials (100 adult doses) [Dimensions: 13.5x5.4x6.7 cm] |
| [PreQualPackaginga3H3X000001VaasUAC](Binary-PreQualPackaginga3H3X000001VaasUAC.md) | box of 120 cartons of 10 vials (12000 doses) [dimensions: 57.5 x 53.5 x 49.0 cm] |
| [PreQualPackaginga3H3X000001VaatUAC](Binary-PreQualPackaginga3H3X000001VaatUAC.md) | Carton of 10 vials (200 doses) [Dimensions: 12.5 x 5.5 x 5.7 cm] |
| [PreQualPackaginga3H3X000001VaauUAC](Binary-PreQualPackaginga3H3X000001VaauUAC.md) | Box containing 192 cartons of 10 vials (38 400 doses / 1920 vials) [Dimensions: 58 x 58 x 53 cm] |
| [PreQualPackaginga3H3X000001VaavUAC](Binary-PreQualPackaginga3H3X000001VaavUAC.md) | Carton of 10 vials (100 doses) [Dimensions: 12.5 x 5.5 x 5.7 cm] |
| [PreQualPackaginga3H3X000001VaawUAC](Binary-PreQualPackaginga3H3X000001VaawUAC.md) | Box containing 192 cartons of 10 vials (19 200 doses / 1 920 vials) [Dimensions: 58 x 58 x 53 cm] |
| [PreQualPackaginga3H3X000001VaaxUAC](Binary-PreQualPackaginga3H3X000001VaaxUAC.md) | Carton of 10 vials (200 doses) [Dimensions: 12.5 x 5.5 x 5.7 cm] |
| [PreQualPackaginga3H3X000001VaayUAC](Binary-PreQualPackaginga3H3X000001VaayUAC.md) | Box containing 192 cartons of 10 vials (38 400 doses / 1920 vials) [Dimensions: 58 x 58 x 53 cm] |
| [PreQualPackaginga3H3X000001VaazUAC](Binary-PreQualPackaginga3H3X000001VaazUAC.md) | Carton of 5 vials (25 dose)[Dimensions: 77 x 35 x 48.5 cm] |
| [PreQualPackaginga3H3X000001Vab0UAC](Binary-PreQualPackaginga3H3X000001Vab0UAC.md) | Box containing 80 cartons of 5 vials (400 vials/2000 doses)[Dimensions: 393 x 147 x 207 cm] |
| [PreQualPackaginga3H3X000001Vab1UAC](Binary-PreQualPackaginga3H3X000001Vab1UAC.md) | Active: Carton of 20 ampoules (200 doses)[Dimensions: 14.5 x 9.8 x 2.8 cm] |
| [PreQualPackaginga3H3X000001Vab2UAC](Binary-PreQualPackaginga3H3X000001Vab2UAC.md) | Diluent:Carton of 20 ampoules (200 doses)[Dimensions: 14.5 x 5.7 x 2.6 cm] |
| [PreQualPackaginga3H3X000001Vab3UAC](Binary-PreQualPackaginga3H3X000001Vab3UAC.md) | Active: Box containing 175 cartons of 20 ampoules (35000 doses/ 3500 ampoules)[Dimensions: 58 x 58 x 53 cm] |
| [PreQualPackaginga3H3X000001Vab4UAC](Binary-PreQualPackaginga3H3X000001Vab4UAC.md) | Diluent: Box containing 175 cartons of 20 ampoules (35000 doses/3500 ampoules)[Dimensions: 46x x 31 x 33 cm] |
| [PreQualPackaginga3H3X000001Vab5UAC](Binary-PreQualPackaginga3H3X000001Vab5UAC.md) | Active: Carton of 20 ampoules (400 doses)[Dimensions: 14.5 x 9.8 x 2.8 cm] |
| [PreQualPackaginga3H3X000001Vab6UAC](Binary-PreQualPackaginga3H3X000001Vab6UAC.md) | Diluent:Carton of 20 ampoules (400 doses)[Dimensions: 14.5 x 5.7 x 2.6 cm] |
| [PreQualPackaginga3H3X000001Vab7UAC](Binary-PreQualPackaginga3H3X000001Vab7UAC.md) | Active: Box containing 175 cartons of 20 ampoules ( 70 000 doses/ 3500 ampoules )[Dimensions: 58 x 58 x 53 cm] |
| [PreQualPackaginga3H3X000001Vab8UAC](Binary-PreQualPackaginga3H3X000001Vab8UAC.md) | Diluent: Box containing 175 cartons of 20 ampoules (70 000 doses/ 3500 ampoules)[Dimensions: 46 x 31 x 33 cm] |
| [PreQualPackaginga3H3X000001Vab9UAC](Binary-PreQualPackaginga3H3X000001Vab9UAC.md) | Carton of 50 vials (active)(50 doses) [Dimensions 18.5x9.5x6.0 cm] |
| [PreQualPackaginga3H3X000001VabAUAS](Binary-PreQualPackaginga3H3X000001VabAUAS.md) | Carton of 50 ampoules (diluent) [Dimesions 14.5x6.0x7.2 cm] |
| [PreQualPackaginga3H3X000001VabBUAS](Binary-PreQualPackaginga3H3X000001VabBUAS.md) | Box of 24 cartons of 50 vials (1200 vials / 1200 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabCUAS](Binary-PreQualPackaginga3H3X000001VabCUAS.md) | Carton of 25 vials (500 doses) [Dimensions 13.3x13.3x6.0 cm] |
| [PreQualPackaginga3H3X000001VabDUAS](Binary-PreQualPackaginga3H3X000001VabDUAS.md) | Box of 24 cartons of 25 vials (600 vials/12000 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabEUAS](Binary-PreQualPackaginga3H3X000001VabEUAS.md) | Carton of 50 vials (active)(100 doses) [Dimensions 18.5x9.5x6.0 cm] |
| [PreQualPackaginga3H3X000001VabFUAS](Binary-PreQualPackaginga3H3X000001VabFUAS.md) | Carton of 50 ampoules (diluent) [Dimensions 14.5x6.0x7.2 cm] |
| [PreQualPackaginga3H3X000001VabGUAS](Binary-PreQualPackaginga3H3X000001VabGUAS.md) | Box of 24 cartons of 50 vials (1200 vials/2400 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabHUAS](Binary-PreQualPackaginga3H3X000001VabHUAS.md) | Carton of 50 vials (active)(50 doses) [Dimensions 18.5x9.5x6.0] |
| [PreQualPackaginga3H3X000001VabIUAS](Binary-PreQualPackaginga3H3X000001VabIUAS.md) | Carton of 50 ampoules (diluent) [Dimensions 14.5x6.0x7.2 cm] |
| [PreQualPackaginga3H3X000001VabJUAS](Binary-PreQualPackaginga3H3X000001VabJUAS.md) | Box of 24 cartons of 50 vials (1200 vials/1200 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabKUAS](Binary-PreQualPackaginga3H3X000001VabKUAS.md) | Carton of 50 vials (active)(100 doses) [Dimensions 18.5x9.5x6.0 cm] |
| [PreQualPackaginga3H3X000001VabLUAS](Binary-PreQualPackaginga3H3X000001VabLUAS.md) | Carton of 50 ampoules (diluent) [dimensions 14.5x6.0x7.2 cm] |
| [PreQualPackaginga3H3X000001VabMUAS](Binary-PreQualPackaginga3H3X000001VabMUAS.md) | Box of 24 cartons of 50 vials (1200 vials/2400 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabNUAS](Binary-PreQualPackaginga3H3X000001VabNUAS.md) | Carton of 50 vials (active)(500 doses) [Dimensions 18.5x9.5x6.0 cm] |
| [PreQualPackaginga3H3X000001VabOUAS](Binary-PreQualPackaginga3H3X000001VabOUAS.md) | Carton of 50 ampoules (diluent) [Dimensions 10.5x8.7x17.2 cm] |
| [PreQualPackaginga3H3X000001VabPUAS](Binary-PreQualPackaginga3H3X000001VabPUAS.md) | Box of 24 cartons of 50 vials (1200 vials / 12000 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabQUAS](Binary-PreQualPackaginga3H3X000001VabQUAS.md) | Carton of 50 vials (active)(250 doses) [Dimensions 18.5x9.5x6.0 cm] |
| [PreQualPackaginga3H3X000001VabRUAS](Binary-PreQualPackaginga3H3X000001VabRUAS.md) | Carton of 50 ampoules (diluent) [Dimensions 10.5x8.7x15.0 cm] |
| [PreQualPackaginga3H3X000001VabSUAS](Binary-PreQualPackaginga3H3X000001VabSUAS.md) | Box of 24 cartons of 50 vials (1200 vials/6000 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabTUAS](Binary-PreQualPackaginga3H3X000001VabTUAS.md) | Carton of 10 vials (active) [Dimensions 8.3 x 4.35 x 3.85 cm] |
| [PreQualPackaginga3H3X000001VabUUAS](Binary-PreQualPackaginga3H3X000001VabUUAS.md) |  |
| [PreQualPackaginga3H3X000001VabVUAS](Binary-PreQualPackaginga3H3X000001VabVUAS.md) | Carton of 50 vials (active)(50 doses) [Dimensions 18.5x9.5x6.0] |
| [PreQualPackaginga3H3X000001VabWUAS](Binary-PreQualPackaginga3H3X000001VabWUAS.md) | Carton of 50 ampoules (diluent) [Dimensions 14.5x6.0x7.2 cm] |
| [PreQualPackaginga3H3X000001VabXUAS](Binary-PreQualPackaginga3H3X000001VabXUAS.md) | Box of 24 cartons of 50 vials (1200 vials/1200 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabYUAS](Binary-PreQualPackaginga3H3X000001VabYUAS.md) | carton of 50 ampoules (50 doses) [Dimensions 14.5x6.0x7.0] |
| [PreQualPackaginga3H3X000001VabZUAS](Binary-PreQualPackaginga3H3X000001VabZUAS.md) | Box of 36 cartons of 50 ampoules (1800 ampoules/1800 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000001VabaUAC](Binary-PreQualPackaginga3H3X000001VabaUAC.md) | carton of 50 vials (500 doses) [Dimensions 18.5x9.5x6.0 cm] |
| [PreQualPackaginga3H3X000001VabbUAC](Binary-PreQualPackaginga3H3X000001VabbUAC.md) | 24 cartons of 50 vials (1200 vials/12000 doses) [Dimensions 60x48x41 cm] |
| [PreQualPackaginga3H3X000002OBWeUAO](Binary-PreQualPackaginga3H3X000002OBWeUAO.md) | Carton of 50 vials (50 doses). Dimensions 18.5 x 9.5 x 4.0 cm |
| [PreQualPackaginga3H3X000002OBWfUAO](Binary-PreQualPackaginga3H3X000002OBWfUAO.md) |  |
| [PreQualPackaginga3H3X000002OBWgUAO](Binary-PreQualPackaginga3H3X000002OBWgUAO.md) | Box of 300 vials (300 doses). Dimensions: 31 x 19 x 9.3 cm |
| [PreQualPackaginga3HNN0000007wYj2AI](Binary-PreQualPackaginga3HNN0000007wYj2AI.md) | Carton of 50 vials (100 doses). Dimensions: 18.5 x 9.5 x 4.0 cm |
| [PreQualPackaginga3HNN0000007wYk2AI](Binary-PreQualPackaginga3HNN0000007wYk2AI.md) | Box containing 300 vials (600 doses). Dimensions: 31 x 19 x 9.3 cm |
| [PreQualPackaginga3HNN0000007wYl2AI](Binary-PreQualPackaginga3HNN0000007wYl2AI.md) |  |
| [PreQualSite0013X00003cPkzfQAC](Binary-PreQualSite0013X00003cPkzfQAC.md) |  |
| [PreQualSite0013X0000498p2jQAA](Binary-PreQualSite0013X0000498p2jQAA.md) |  |
| [PreQualSite0013X0000498p2qQAA](Binary-PreQualSite0013X0000498p2qQAA.md) |  |
| [PreQualSite0013X0000498p2wQAA](Binary-PreQualSite0013X0000498p2wQAA.md) |  |
| [PreQualSite0013X0000498p3IQAQ](Binary-PreQualSite0013X0000498p3IQAQ.md) |  |
| [PreQualSite0013X0000498p3PQAQ](Binary-PreQualSite0013X0000498p3PQAQ.md) |  |
| [PreQualSite0013X0000498p3ZQAQ](Binary-PreQualSite0013X0000498p3ZQAQ.md) |  |
| [PreQualSite0013X0000498p3gQAA](Binary-PreQualSite0013X0000498p3gQAA.md) |  |
| [PreQualSite0013X0000498p4LQAQ](Binary-PreQualSite0013X0000498p4LQAQ.md) |  |
| [PreQualSite0013X0000498p4ZQAQ](Binary-PreQualSite0013X0000498p4ZQAQ.md) |  |
| [PreQualSite0013X00004993qnQAA](Binary-PreQualSite0013X00004993qnQAA.md) |  |
| [PreQualSite0013X000049bJ9SQAU](Binary-PreQualSite0013X000049bJ9SQAU.md) |  |
| [PreQualVaccinea3S3X000003cSogUAE](Binary-PreQualVaccinea3S3X000003cSogUAE.md) |  |
| [PreQualVaccinea3S3X000003cSoiUAE](Binary-PreQualVaccinea3S3X000003cSoiUAE.md) |  |
| [PreQualVaccinea3S3X000003cSojUAE](Binary-PreQualVaccinea3S3X000003cSojUAE.md) |  |
| [PreQualVaccinea3S3X000003cSokUAE](Binary-PreQualVaccinea3S3X000003cSokUAE.md) |  |
| [PreQualVaccinea3S3X000003cSomUAE](Binary-PreQualVaccinea3S3X000003cSomUAE.md) |  |
| [PreQualVaccinea3S3X000003cSpIUAU](Binary-PreQualVaccinea3S3X000003cSpIUAU.md) |  |
| [PreQualVaccinea3S3X000003cSpJUAU](Binary-PreQualVaccinea3S3X000003cSpJUAU.md) |  |
| [PreQualVaccinea3S3X000003cSpXUAU](Binary-PreQualVaccinea3S3X000003cSpXUAU.md) |  |
| [PreQualVaccinea3S3X000003cSpYUAU](Binary-PreQualVaccinea3S3X000003cSpYUAU.md) |  |
| [PreQualVaccinea3S3X000003cSpZUAU](Binary-PreQualVaccinea3S3X000003cSpZUAU.md) |  |
| [PreQualVaccinea3S3X000003cSpaUAE](Binary-PreQualVaccinea3S3X000003cSpaUAE.md) |  |
| [PreQualVaccinea3S3X000003cSpbUAE](Binary-PreQualVaccinea3S3X000003cSpbUAE.md) |  |
| [PreQualVaccinea3S3X000003cSpiUAE](Binary-PreQualVaccinea3S3X000003cSpiUAE.md) |  |
| [PreQualVaccinea3S3X000003cSpjUAE](Binary-PreQualVaccinea3S3X000003cSpjUAE.md) |  |
| [PreQualVaccinea3S3X000003cSpnUAE](Binary-PreQualVaccinea3S3X000003cSpnUAE.md) |  |
| [PreQualVaccinea3S3X000003cSpqUAE](Binary-PreQualVaccinea3S3X000003cSpqUAE.md) |  |
| [PreQualVaccinea3S3X000003cSpuUAE](Binary-PreQualVaccinea3S3X000003cSpuUAE.md) |  |

