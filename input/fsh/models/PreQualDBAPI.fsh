
Logical: 	PreQualDBAPI
Title: 		"WHO Vaccine PreQual DB (API)"
Description:	"""WHO Vaccine PreQual DB (API).  
Logical model for the WHO PreQual DB as provided by the backend API at:
     https://extranet.who.int/prequal/vaccines/prequalified-vaccines
This model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export.

Key fields from the API (FinishedVaccineProducts):
  ProductDetails.Identification.Id - Vaccine Product ID (authoritative)
  ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447)
  ProductDetails.Type - Product type code (e.g. Finished Vaccine Product)
  ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification
  ProductDetails.AssessmentProcedure - Assessment procedure code
  ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address
  ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.)
  ProductDetails.PharmaceuticalForm - Pharmaceutical form details
  ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses
  ProductDetails.NRADetails - Responsible NRA with ID, name, address
  ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names
  ProductDetails.StorageDetails - Storage temperature and shelf life
  ProductDetails.Status - Prequalification status code
"""
* productId 1..1 Identifier "Vaccine Product ID (authoritative)"
* productName 1..1 string "Product reference name (e.g. FVP-P-447)"
* productType 1..1 code "Product type code from PreQualDatabaseMetadata (e.g. FinishedVaccineProduct)"
* dateOfPrequal 1..1 dateTime "Date of prequalification acceptance"
* assessmentProcedure 0..1 code "Assessment procedure code from PreQualDatabaseMetadata (e.g. PrequalificationStandard)"
* status 1..1 code "Product status code from PreQualDatabaseMetadata (e.g. Prequalified)"
* pharmaceuticalForm 0..1 code "Pharmaceutical form code from PreQualDatabaseMetadata"
* presentation 1..1 CodeableConcept "Presentation (e.g. Vial, Ampoule)"
* numDoses 0..1 decimal "Number of doses per primary container"
* vaccineFullName 0..1 string "Vaccine full name"
* vaccineAbbreviatedName 0..1 string "Vaccine abbreviated name"
* vaccineCommercialName 1..1 string "Vaccine commercial name"
* vaccineTypeId 0..1 Identifier "Vaccine type ID"
* routeOfAdministration 0..1 code "Route of administration code from PreQualDatabaseMetadata"
* applicantId 0..1 Identifier "Applicant/manufacturer organization ID (may be absent if not yet assigned)"
* applicantName 1..1 string "Applicant/manufacturer organization name (always present from API data)"
* applicantAddress 0..1 Address "Applicant organization address"
* nraId 0..1 Identifier "NRA organization ID (may be absent if not yet assigned)"
* nraName 1..1 string "Responsible NRA name (always present from API data)"
* nraCountry 0..1 string "NRA country"
* shelfLife 0..1 string "Shelf life (e.g. 24 months)"
* storageTemperature 0..1 string "Storage temperature (e.g. 2 - 8°C)"
* diluent 0..1 string "Diluent information"
* lastPublishingDate 0..1 dateTime "Last publishing date"
* publishingRemarks 0..1 string "Publishing remarks"
* preservative 0..1 string "Preservative name (e.g. Thiomersal)"
* preservativeConcentration 0..1 string "Preservative concentration (e.g. 0.01%)"



Logical: 	PreQualProduct
Parent:		PreQualDBAPI
Title:		"WHO PreQual Product"
Description:    """Logical model for WHO PreQual Product from the backend API
with additional data fields for referencing associated FHIR and logical model data objects.
"""
* manufacturerReference 1..1 Reference(IHE.mCSD.Organization) "Manufacturer FHIR Organization reference"
* responsibleNRAReference 1..1 Reference(IHE.mCSD.Organization) "Responsible NRA FHIR Organization reference"
* productReference 0..1 Reference "Product FHIR reference (when available from pcmt dependency)"
* manufacturerLM 0..1 Reference "Manufacturer logical model instance reference"
* nraLM 0..1 Reference "NRA logical model instance reference"
* vaccineLM 0..1 Reference "Vaccine logical model instance reference"
* bulkSupplierLM 0..1 Reference "Bulk supplier logical model instance reference"
* packagingLM 0..* Reference "Product packaging logical model instance references"
* documentLM 0..* Reference "Document detail logical model instance references"
* siteLM 0..* Reference "Site detail logical model instance references"
* ingredientLM 0..* Reference "Product ingredient logical model instance references"


Logical:	PreQualManufacturer
Title:		"WHO PreQual Manufacturer"
Description:	"""Logical model for the manufacturer/applicant organization
from the WHO PreQual API (ProductDetails.ApplicantOrganization).
"""
* manufacturerId 0..1 Identifier "Manufacturer organization ID"
* name 1..1 string "Organization name"
* addressLine1 0..1 string "Address line 1"
* city 0..1 string "City"
* state 0..1 string "State/Province"
* country 0..1 string "Country"
* postalCode 0..1 string "Postal code"
* isoCountryCode 0..1 string "ISO country code"
* region 0..1 string "WHO region"
* website 0..1 string "Website URL"
* organizationReference 1..1 Reference(IHE.mCSD.Organization) "FHIR Organization reference"


Logical:	PreQualNRA
Title:		"WHO PreQual NRA"
Description:	"""Logical model for the responsible National Regulatory Authority (NRA)
from the WHO PreQual API (ProductDetails.NRADetails).
"""
* nraId 0..1 Identifier "NRA organization ID"
* name 1..1 string "Organization name"
* addressLine1 0..1 string "Address line 1"
* country 0..1 string "Country"
* website 0..1 string "Website URL"
* organizationReference 1..1 Reference(IHE.mCSD.Organization) "FHIR Organization reference"


Logical:	PreQualVaccine
Title:		"WHO PreQual Vaccine"
Description:	"""Logical model for the vaccine type details
from the WHO PreQual API (ProductDetails.VaccineDetails).
Contains only vaccine-type-level fields that are stable across products.
Product-specific fields (CommercialName, RouteOfAdministration) remain on PreQualProduct.
"""
* vaccineId 0..1 Identifier "Vaccine type ID"
* fullName 0..1 string "Vaccine full name"
* abbreviatedName 0..1 string "Vaccine abbreviated name"


Logical:	PreQualBulkSupplier
Title:		"WHO PreQual Bulk Supplier"
Description:	"""Logical model for the bulk supplier organization
from the WHO PreQual API (ProductDetails.BulkSupplier).
"""
* bulkSupplierId 0..1 Identifier "Bulk supplier organization ID"
* name 0..1 string "Organization name"


Logical:	PreQualProductPackaging
Title:		"WHO PreQual Product Packaging"
Description:	"""Logical model for product packaging details
from the WHO PreQual API (ProductPackaging).
"""
* packagingId 1..1 Identifier "Packaging record ID"
* packagingType 0..1 code "Packaging type code from PreQualDatabaseMetadata (e.g. Secondary, Tertiary, ShippingContainer)"
* componentPacked 0..1 code "Component packed code from PreQualDatabaseMetadata (e.g. ActiveVaccine, Diluent)"
* coldChainVolume 0..1 string "Cold chain volume per dose"
* description 0..1 string "Packaging description"
* volume 0..1 string "Packaging volume/dimensions"
* totalDoses 0..1 string "Total doses in packaging"
* totalContainers 0..1 string "Total containers in packaging"
* height 0..1 string "Height"
* length 0..1 string "Length"
* width 0..1 string "Width"
* primaryContainers 0..1 string "Number of primary containers"


Logical:	PreQualDocumentDetail
Title:		"WHO PreQual Document Detail"
Description:	"""Logical model for document details
from the WHO PreQual API (DocumentDetails).
"""
* documentId 0..1 Identifier "Document ID"
* documentName 0..1 string "Document name"
* documentType 0..1 code "Document type code from PreQualDatabaseMetadata (e.g. ProductInsert, Photo, VSPAR)"
* versionId 0..1 string "Document version ID"
* fileExtension 0..1 string "File extension (e.g. pdf, jpg)"
* fileType 0..1 string "File type (e.g. PDF, JPEG)"


Logical:	PreQualSiteDetail
Title:		"WHO PreQual Site Detail"
Description:	"""Logical model for manufacturing site details
from the WHO PreQual API (SiteDetails).
"""
* siteOrganizationId 0..1 Identifier "Site organization ID"
* siteOrganizationName 0..1 string "Site organization name"
* addressLine1 0..1 string "Address line 1"
* city 0..1 string "City"
* state 0..1 string "State/Province"
* country 0..1 string "Country"
* postalCode 0..1 string "Postal code"
* siteStatus 0..1 code "Site status code from PreQualDatabaseMetadata (e.g. Accepted)"
* siteActivity 0..1 code "Site activity code from PreQualDatabaseMetadata (e.g. FVPManufacture)"


Logical:	PreQualProductIngredient
Title:		"WHO PreQual Product Ingredient"
Description:	"""Logical model for product ingredient details
from the WHO PreQual API (ProductIngredients).
"""
* ingredientId 0..1 Identifier "Ingredient ID"
* ingredientType 0..1 code "Ingredient type code from PreQualDatabaseMetadata (e.g. VxFVP)"
* unit 0..1 string "Measurement unit"
* product 0..1 string "Product reference ID"
* productComponentType 0..1 code "Product component type code from PreQualDatabaseMetadata (e.g. Diluent)"
* function 0..1 string "Ingredient function"

