<!--badges-->
[![License: CC BY-IGO 3.0](https://licensebuttons.net/l/by-nc/3.0/igo/80x15.png)](https://creativecommons.org/licenses/by/3.0/igo)
![CI Build](https://img.shields.io/github/actions/workflow/status/WorldHealthOrganization/smart-ig-empty/ghbuild.yml)

![QA errors](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2FWorldHealthOrganization.github.io%2Fsmart-ig-empty%2Fqa.json&query=%24.errs&logoColor=red&label=QA%20errors&color=yellow)
![QA warnings](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2FWorldHealthOrganization.github.io%2Fsmart-ig-empty%2Fqa.json&query=%24.warnings&logoColor=orange&label=QA%20warnings&color=yellow)
![QA hints](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2FWorldHealthOrganization.github.io%2Fsmart-ig-empty%2Fqa.json&query=%24.hints&logoColor=yellow&label=QA%20hints&color=yellow)
<!--/badges-->

# WHO SMART GUIDELINES
 
This is an empty framework, to be used to create SMART Implementation Guides.

Please see these [instructions](https://smart.who.int/ig-starter-kit/ig_setup.html#github-setup)

CI Build [here](https://worldhealthorganization.github.io/smart-prequal-vaccines/)

## Changes and feedback

Feedback and issues about this empty framework can be submitted via the [issues](issues) page, and will be incorporated into subsequent releases.

## Generating Instances Locally

To generate FSH logical model instances from the sample data (no API credentials needed):

```bash
python3 scripts/import_salesforce.py --json-file data/prequal.json
```

This reads 35 products from `data/prequal.json` and writes generated FSH files into `input/fsh/`:
- `input/fsh/examples/prequal_database_products.fsh` — FinishedVaccineProducts, Product, and ProductAuthorization instances
- `input/fsh/examples/prequal_database_manufacturers.fsh` — Manufacturer FHIR Organization instances
- `input/fsh/examples/prequal_database_holders.fsh` — NRA/Holder FHIR Organization instances
- `input/fsh/examples/prequal_database_manufacturer_lm.fsh` — PreQualManufacturer LM instances (full address, website)
- `input/fsh/examples/prequal_database_nra_lm.fsh` — PreQualNRA LM instances (country, website)
- `input/fsh/examples/prequal_database_vaccine_lm.fsh` — PreQualVaccine LM instances (vaccine type details)
- `input/fsh/codesystems/` — CodeSystems for presentations, vaccine types, and product identifiers
- `input/fsh/valuesets/` — ValueSet for product identifiers

To run tests:

```bash
python3 -m unittest tests/test_import_salesforce.py -v
```

## Syncing from the ePQS SOA API

The live data comes from the ePQS SOA REST service for finished vaccine
products, for example:

```
https://soaprd.who.int/soa-infra/resources/EPQS/QueryFinishedVaccineProducts!1.0/RestService_FVP?Query=FinishedVaccineProduct&TimeStamp=2000-01-01T00:00:00.000Z
```

`Query` and `TimeStamp` are both bound directly into the service's SOQL. A
request that omits `TimeStamp` fails the whole call with `StatusCode:
FAULTED` and `Bind Parameter's value is empty`, so the importer always
sends one, defaulting to `2000-01-01T00:00:00.000Z` for a full load.

These services are published on the WHO intranet only, so every command
below has to run from the WHO network or over VPN. Each environment
(`soasi`, `soauat`, `soaprd`) has its **own password** for the shared
`EPQSSoa` service account; using another environment's password returns
HTTP 401. Test against UAT before pointing anything at production.

Credentials are read from the environment and never committed:

```bash
export PREQUAL_API_ENDPOINT='https://soauat.who.int/soa-infra/resources/EPQS/QueryFinishedVaccineProducts!1.0/RestService_FVP?Query=FinishedVaccineProduct'
export PREQUAL_API_USERNAME='EPQSSoa'
export PREQUAL_API_PASSWORD='<password for that environment>'
```

On Windows PowerShell, set them with `$env:PREQUAL_API_ENDPOINT = '...'`
and run `python` rather than `python3`.

Full load, refreshing both the snapshot and the generated FSH:

```bash
python3 scripts/import_salesforce.py --save-raw data/prequal.json
```

Incremental load of everything published since a given date — `TimeStamp`
filters on the Salesforce last-publishing-update field. It **must** be
merged into the stored snapshot:

```bash
python3 scripts/import_salesforce.py \
    --timestamp 2025-01-01T00:00:00.000Z \
    --merge-with data/prequal.json \
    --save-raw data/prequal.json
```

An incremental fetch returns only the products whose publishing date moved,
and every generator rewrites its output file in full. Generating straight
from a delta would therefore delete every product the delta does not
mention — a one-product delta produces a one-product IG. `--merge-with`
replays the delta over the stored snapshot first, so the result is identical
to a full load; the script refuses to run `--timestamp` without it.

Merging cannot detect a product removed from the source database
altogether, so run a full load periodically.

To keep only currently prequalified products, pass `--status` (repeatable).
Omitted, every status is kept, including `Withdrawn: Was Prequalified`:

```bash
python3 scripts/import_salesforce.py --status Prequalified
```

### Pagination, and the 35-record ceiling

The SOA services take `Query`, `TimeStamp`, `OffSet` and `Limit`, and they
are **case sensitive**. A lowercase `offset=`/`limit=` is accepted by the
HTTP layer and then ignored by the service, which keeps returning the first
page. Because the importer de-duplicates by product Id, that used to show up
as a stable ceiling of 35 unique products while the API reported 271
available — the committed snapshot in `data/prequal.json` still carries the
fingerprint of it (`"Limit": 2000, "TotalRecords": 271` alongside 35
records).

Two separate things cause that ceiling:

1. **Parameter casing.** `scripts/import_salesforce.py` now builds request
   URLs with the exact `OffSet`/`Limit` spellings and replaces any copy
   already present in the configured endpoint, instead of appending a
   second one that the service ignores.
2. **A server-side row cap.** Each response carries at most a few dozen
   parent rows regardless of the requested `Limit`, because the underlying
   SOQL pulls four child collections per product. The requested `Limit` is
   echoed back unchanged, so it cannot be trusted. Paging now advances by
   the number of records actually returned.

The importer also fails loudly rather than returning a short result set. It
raises if a page contains no new records (the service is ignoring `OffSet`),
and if the final count is below the `TotalRecords` the API reported. Use
`--allow-partial` to downgrade the latter to a warning.

If the deployed FVP service turns out not to implement `OffSet` at all —
note it is still version `!1.0`, while the services that gained pagination
were bumped to `!1.4`/`!2.x` — walk the `TimeStamp` filter forward instead:

```bash
python3 scripts/import_salesforce.py --pagination-strategy timestamp
```

### Confirming the API's behaviour

To establish what the service actually honours before configuring a sync,
run the probe from the WHO network:

```bash
python3 scripts/probe_prequal_api.py
```

It varies `Limit`, compares the record Ids returned at different `OffSet`
values, repeats a request with lowercase parameters, and prints the page
size and strategy the observations support.

### Running a sync

The sync is run by hand, from the WHO network or over VPN:

```bash
git checkout -b sync/prequal-$(date +%Y-%m-%d)
python3 scripts/import_salesforce.py --save-raw data/prequal.json
python3 -m unittest discover -s tests
git add data/prequal.json input/fsh
git commit -m "Sync PreQual vaccine products from ePQS SOA API"
git push -u origin HEAD
```

Then open a pull request so the data change is reviewed before it reaches
the IG. Check the product count in the diff: a large drop usually means an
upstream publishing change rather than a data fix.

There is deliberately no scheduled GitHub Actions workflow. The SOA
services are not reachable from GitHub-hosted runners, and running them on
a self-hosted runner registered to a public repository would let pull
requests from forks execute code on a machine inside the WHO network. A
scheduled sync belongs on an internal host that pushes outward to GitHub.

## Sample Generated Instances

For each product in the WHO PreQual database, the import script generates:
1. A `FinishedVaccineProducts` logical model instance (with references to Manufacturer, NRA, and Vaccine LM instances)

Additionally, for each unique referenced object, the script generates:
- `PreQualManufacturer` LM instances (11 unique manufacturers with full address and contact info)
- `PreQualNRA` LM instances (8 unique NRAs with country and website)
- `PreQualVaccine` LM instances (17 unique vaccine types with full and abbreviated names)

Products with missing essential data (e.g. withdrawn products) are automatically skipped.

Here is a sample for the CYVAC malaria vaccine showing the product and its referenced LM instances:

```fsh
Instance: FinishedProducta3K3X000005atRtUAI
InstanceOf: FinishedVaccineProducts
* dateOfPrequal = 2023-12-19
* status = "Prequalified"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000005atRtUAI"
* productName = "FVP-P-447"
* vaccineFullName = "Recombinant malaria vaccine"
* vaccineAbbreviatedName = "Malaria"
* vaccineCommercialName = "CYVAC"
* applicantName = "Serum Institute of India"
* nraName = "Central Drugs Standard Control Organization (CDSCO)"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA)
* manufacturerLM = Reference(PreQualManufacturer0013X00003cPkzfQAC)
* nraLM = Reference(PreQualNRA0013X0000498p4fQAA)
* vaccineLM = Reference(PreQualVaccinea3S3X000003cSpnUAE)

Instance: PreQualManufacturer0013X00003cPkzfQAC
InstanceOf: PreQualManufacturer
* manufacturerId.system = "https://extranet.who.int/prequal/api"
* manufacturerId.value = "0013X00003cPkzfQAC"
* name = "Serum Institute of India"
* addressLine1 = "SERUM BIO-PHARMA PARK SEZ UNIT-1, 212/2 Off Soli Poonawala Road, Hadaspar"
* city = "Pune"
* state = "Maharashtra"
* country = "India"
* postalCode = "411 028"
* isoCountryCode = "IND"
* region = "SEARO"
* website = "http://www.seruminstitute.com/"
* organizationReference = Reference(Manufacturer0013X00003cPkzfQAC)

Instance: PreQualNRA0013X0000498p4fQAA
InstanceOf: PreQualNRA
* nraId.system = "https://extranet.who.int/prequal/api"
* nraId.value = "0013X0000498p4fQAA"
* name = "Central Drugs Standard Control Organization (CDSCO)"
* country = "India"
* website = "www.cdsco.nic.in"
* organizationReference = Reference(Holder0013X0000498p4fQAA)

Instance: PreQualVaccinea3S3X000003cSpnUAE
InstanceOf: PreQualVaccine
* vaccineId.system = "https://extranet.who.int/prequal/api"
* vaccineId.value = "a3S3X000003cSpnUAE"
* fullName = "Recombinant malaria vaccine"
* abbreviatedName = "Malaria"
```
