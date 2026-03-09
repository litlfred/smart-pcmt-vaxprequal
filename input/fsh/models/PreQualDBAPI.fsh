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



Logical: 	PreQualDBAPIWithRefs
Parent:		PreQualDBAPI
Title:		"WHO Vaccine PreQual DB (API) with References"
Description:    """Logical model for WHO PreQual DB from the backend API
with additional data fields for referencing associated FHIR data objects
"""
* manufacturerReference 1..1 Reference(IHE.mCSD.Organization) "Manufacturer reference"
* responsibleNRAReference 1..1 Reference(IHE.mCSD.Organization) "Responsible NRA reference"
* productReference 1..1 Reference($Product) "Product reference"

