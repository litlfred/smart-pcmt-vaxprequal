# Handover Notes: Syncing WHO Upstream (WorldHealthOrganization/smart-pcmt-vaxprequal)

## Context

The `litlfred/smart-pcmt-vaxprequal` fork has diverged from `WorldHealthOrganization/smart-pcmt-vaxprequal`. This session synced WHO upstream changes INTO litlfred. The next session needs to push litlfred's Salesforce API work UP to the WHO repo.

## What Was Done (This Session)

- Branch: `claude/sync-litlfred-who-PIIn2` on `litlfred/smart-pcmt-vaxprequal`
- Merged 17 WHO upstream commits (after merge point `a3eae88`) into litlfred
- Conflict resolution strategy: **Salesforce API over CSV** — litlfred's API-generated FSH data was preserved, WHO's infrastructure/config changes were adopted
- Commit: `2db7ce2` — ready for PR into litlfred/main

## URGENT: Existing PR #3 Has Merge Conflicts

**PR:** https://github.com/WorldHealthOrganization/smart-pcmt-vaxprequal/pull/3
**Title:** "Merge" (litlfred/main → WHO/main)
**State:** Open, NOT mergeable
**Created:** 2026-03-19

### Conflicting Files
1. `README.md` — WHO has minimal README, litlfred has extensive API generation docs
2. `input/fsh/examples/prequal_database_holders.fsh` — WHO has CSV-generated (with `#definition`), litlfred has API-generated (with `#example`)
3. `input/fsh/examples/prequal_database_manufacturers.fsh` — same as above
4. `input/fsh/examples/prequal_database_products.fsh` — WHO has CSV-generated PreQualDBwithIds, litlfred has API-generated FinishedVaccineProducts

### Resolution Strategy
For ALL conflicting files, **take litlfred's version** (Salesforce API is the master):
- The FSH examples should use the API-generated instances (FinishedVaccineProducts model, Salesforce IDs)
- BUT update `Usage: #example` → `Usage: #definition` in litlfred's versions to match WHO's intent
- For README.md, take litlfred's version (has generation docs) but keep WHO's CI Build link (already done in this session)

### How to Resolve
Option A: Close PR #3, create a fresh PR from a branch where conflicts are pre-resolved
Option B: Use GitHub web editor or CLI to resolve conflicts directly on the PR

The litlfred fork (after merging this session's `claude/sync-litlfred-who-PIIn2` branch) already has all WHO's config changes incorporated. So a fresh PR from the merged litlfred/main should have fewer conflicts.

**Recommended workflow:**
1. Merge `claude/sync-litlfred-who-PIIn2` into litlfred/main first
2. Close PR #3
3. Open a new PR from litlfred/main → WHO/main — this should be clean or near-clean

## What Needs Doing (Next Session — WHO Repo)

The WHO repo (`WorldHealthOrganization/smart-pcmt-vaxprequal`) is **missing all of litlfred's Salesforce API work**. The goal is to get litlfred's changes into the WHO repo.

### Commits on litlfred NOT on WHO

After the merge point (`a3eae88` on WHO, `7b54d48` on litlfred), litlfred has ~20 commits adding:

1. **Salesforce API import system** — `scripts/import_salesforce.py` + `tests/test_import_salesforce.py`
2. **Sample API data** — `data/prequal.json` (35 products in JSON API format)
3. **Rich logical models** — `input/fsh/models/PreQualDBAPI.fsh` with sub-models:
   - `FinishedVaccineProducts` (main product LM)
   - `PreQualManufacturer`, `PreQualNRA`, `PreQualVaccine`
   - `PreQualBulkSupplier`, `PreQualProductPackaging`, `PreQualProductIngredient`
   - `PreQualDocumentDetail`, `PreQualSiteDetail`
4. **Generated FSH instances** — `input/fsh/examples/` (8,200+ lines):
   - `prequal_database_products.fsh` — 35 FinishedVaccineProducts + Product + ProductAuthorization
   - `prequal_database_manufacturer_lm.fsh` — 11 PreQualManufacturer instances
   - `prequal_database_nra_lm.fsh` — 8 PreQualNRA instances
   - `prequal_database_vaccine_lm.fsh` — 17 PreQualVaccine instances
   - `prequal_database_document_lm.fsh` — document detail instances
   - `prequal_database_packaging_lm.fsh` — packaging instances
   - `prequal_database_ingredient_lm.fsh` — ingredient instances
   - `prequal_database_site_lm.fsh` — manufacturing site instances
   - `prequal_database_bulk_supplier_lm.fsh` — bulk supplier instances
5. **CodeSystems/ValueSets** — metadata CodeSystem, concept maps (CSV→API ID mapping)
6. **README updates** — generation instructions, sample output docs

### Key Design Decision: API over CSV

The litlfred fork moved from CSV-based generation (`presushi.sh` + `data/prequalified_vaccines.csv`) to **Salesforce API-based generation** (`scripts/import_salesforce.py` + `data/prequal.json`). The API approach provides:
- Richer data (addresses, websites, ingredients, packaging, documents, sites)
- Proper Salesforce IDs instead of MD5 hashes
- Separate logical model instances for each referenced entity
- Cross-references between LM instances

The old CSV pipeline (`presushi.sh`) still exists and works, but the API pipeline is the intended master.

### Repo Configuration (Already Synced)

These WHO config changes were already applied to litlfred in this session:
- `sushi-config.yaml`: name=`PCMTVAXPreQual`, version=`0.2.0`, fhirVersion=`4.0.1`, added `smart.who.int.pcmt` dep
- `presushi.sh`: `Usage: #example` → `Usage: #definition` for all instances
- `release.yml`: permissions block, checkout v3
- `repo_actions.yml` → `repo_actions.ymlOFF` (disabled)
- New files: `_gencontinuous.bat/.sh`, `publication-request.json`, `input/pagecontent/dak-api.md`

### Suggested Approach for WHO Sync

1. Create a PR from litlfred/main → WorldHealthOrganization/smart-pcmt-vaxprequal/main
2. The PR should include all the API work (scripts, models, generated FSH, tests, data)
3. There should be minimal conflicts since WHO's config changes are already in litlfred
4. The `input/fsh/examples/*.fsh` files will show as modified (API-generated vs CSV-generated) — take litlfred's versions

### File Inventory for WHO PR

**New files to add:**
- `scripts/import_salesforce.py`
- `tests/test_import_salesforce.py`
- `data/prequal.json`
- `input/fsh/models/PreQualDBAPI.fsh`
- `input/fsh/examples/prequal_database_manufacturer_lm.fsh`
- `input/fsh/examples/prequal_database_nra_lm.fsh`
- `input/fsh/examples/prequal_database_vaccine_lm.fsh`
- `input/fsh/examples/prequal_database_document_lm.fsh`
- `input/fsh/examples/prequal_database_packaging_lm.fsh`
- `input/fsh/examples/prequal_database_ingredient_lm.fsh`
- `input/fsh/examples/prequal_database_site_lm.fsh`
- `input/fsh/examples/prequal_database_bulk_supplier_lm.fsh`
- `input/fsh/codesystems/prequal_database_metadata.fsh`
- `input/fsh/valuesets/prequal_database_metadata.fsh`
- `input/fsh/concept_maps/prequal_csv_to_api.fsh`

**Modified files:**
- `input/fsh/examples/prequal_database_products.fsh` (rewritten for API model)
- `input/fsh/examples/prequal_database_manufacturers.fsh` (API-generated)
- `input/fsh/examples/prequal_database_holders.fsh` (API-generated)
- `README.md` (added generation docs)

### WHO Repo State (as of this session)

Latest commit on WHO/main: `e9172f9` "Remove commented badges from README"
- WHO/main has 21 total commits
- 3 branches: `main`, `gh-pages`, `release-candidate`
- GitHub API accessible at: `https://api.github.com/repos/WorldHealthOrganization/smart-pcmt-vaxprequal/`
