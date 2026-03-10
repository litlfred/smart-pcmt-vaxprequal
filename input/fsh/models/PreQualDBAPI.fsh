Alias: $Product = http://smart.who.int/pcmt/StructureDefinition/Product
Alias: $ProductAuthorization = http://smart.who.int/pcmt/StructureDefinition/ProductAuthorization

Logical: 	PreQualDBAPI
Title: 		"WHO Vaccine PreQual DB (API)"
Description:	"""WHO Vaccine PreQual DB (API).  
Logical model for the WHO PreQual DB as provided by the backend API at:
     https://extranet.who.int/prequal/vaccines/prequalified-vaccines
This model provides authoritative vaccine product IDs and a richer data structure compared to the CSV export.

Key fields from the API (FinishedVaccineProducts):
  ProductDetails.Identification.Id - Vaccine Product ID (authoritative)
  ProductDetails.Identification.Name - Product reference name (e.g. FVP-P-447)
  ProductDetails.DateOfPreQualifiedAcceptance - Date of prequalification
  ProductDetails.AssessmentProcedure - Assessment procedure used
  ProductDetails.ApplicantOrganization - Manufacturer/applicant with ID, name, address
  ProductDetails.Presentation - Presentation form (Vial, Ampoule, etc.)
  ProductDetails.PharmaceuticalForm - Pharmaceutical form details
  ProductDetails.DosageDetails.NoOfDosagesPerPrimaryContainer - Number of doses
  ProductDetails.NRADetails - Responsible NRA with ID, name, address
  ProductDetails.VaccineDetails - Vaccine type with full, abbreviated, and commercial names
  ProductDetails.StorageDetails - Storage temperature and shelf life
  ProductDetails.Status - Prequalification status
"""
* productId 1..1 Identifier "Vaccine Product ID (authoritative)"
* productName 1..1 string "Product reference name (e.g. FVP-P-447)"
* dateOfPrequal 1..1 dateTime "Date of prequalification acceptance"
* assessmentProcedure 0..1 string "Assessment procedure (e.g. Prequalification - Standard)"
* status 1..1 string "Product status (e.g. Prequalified)"
* pharmaceuticalForm 0..1 string "Pharmaceutical form (e.g. Liquid: Ready to use)"
* presentation 1..1 CodeableConcept "Presentation (e.g. Vial, Ampoule)"
* numDoses 0..1 decimal "Number of doses per primary container"
* vaccineFullName 0..1 string "Vaccine full name"
* vaccineAbbreviatedName 0..1 string "Vaccine abbreviated name"
* vaccineCommercialName 1..1 string "Vaccine commercial name"
* vaccineTypeId 0..1 Identifier "Vaccine type ID"
* routeOfAdministration 0..1 string "Route of administration"
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



Logical: 	PreQualProduct
Parent:		PreQualDBAPI
Title:		"WHO PreQual Product"
Description:    """Logical model for WHO PreQual Product from the backend API
with additional data fields for referencing associated FHIR and logical model data objects.
"""
* manufacturerReference 1..1 Reference(IHE.mCSD.Organization) "Manufacturer FHIR Organization reference"
* responsibleNRAReference 1..1 Reference(IHE.mCSD.Organization) "Responsible NRA FHIR Organization reference"
* productReference 1..1 Reference($Product) "Product FHIR reference"
* manufacturerLM 0..1 Reference "Manufacturer logical model instance reference"
* nraLM 0..1 Reference "NRA logical model instance reference"
* vaccineLM 0..1 Reference "Vaccine logical model instance reference"


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

