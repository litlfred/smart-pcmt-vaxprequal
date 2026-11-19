### Changes

This page records changes to the data and to the logical models in this
implementation guide.

#### 2026-10-20

- The guide now describes the full set of finished vaccine products published by the WHO PreQual database. Earlier builds described only a subset, because of a pagination fault in the importer.

- Products whose detail has been de-published are now included. The source database clears a product's fields when it leaves prequalified status, keeping its identifier, final status and last publishing date. These records are the authoritative account of a past prequalification.

- Status codes for cancelled, rejected and in-assessment states have been added. Consumers needing only current products should filter on status = #Prequalified.

- FinishedVaccineProducts now requires only productId, productName and status. productType, dateOfPrequal, presentation, vaccineCommercialName, applicantName, nraName, manufacturerReference and responsibleNRAReference are relaxed to 0..1, since the source database does not carry them on every record.

- Implementers should treat every element except productId, productName and status as optional, and should not assume an instance carries a product or regulator name.

- Known upstream data quality issues: some prequalified products have no responsible NRA or no date of prequalification acceptance; some incomplete applications are flagged as published; ProductIngredients records carry no identifier and PreQualNRA.addressLine1 is never populated, because the source query does not select them.