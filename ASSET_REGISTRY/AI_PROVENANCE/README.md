# AI Provenance Registry

This folder records the verifiable origin of AI-generated assets.

## Rules
1. One ledger row represents one generated output/version, linked to an asset_id.
2. Use a stable provenance_id and retain generation IDs returned by the actual tool.
3. Never invent model versions, seeds, prompts, parameters, dates, or reference links.
4. Hash final output files with SHA-256 and retain the original output when available.
5. Record human edits and AI transformations separately.
6. Keep scripture citations in the asset reference ledger; reference_ids here identify inputs supplied to the generation process.
7. A visually convincing image is not automatically scripturally accurate. Evidence and design approval remain separate checks.

## Missing data
Use NOT_CAPTURED when evidence has not been found. Use NOT_PROVIDED_BY_PLATFORM only when the platform was checked and does not provide the field. Explain uncertainty in notes.

## Ledger
See `asset_generation_provenance.csv`.


<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# AI Provenance Registry

This folder records verifiable generation and transformation history.

## Files
- `asset_generation_provenance.csv`: one row per generated output/version.
- `ai_asset_provenance.md`: overall policy, evidence, and release gates.
- Other Markdown files: field-specific capture and verification requirements.
- `validate_ai_provenance.ps1`: reusable validation script.
- `provenance_validation_report.md`: latest validation results.

## Core rules
Never fabricate historical metadata. Use explicit missing-data statuses. Keep asset identity, prompt versions, source references, and output hashes traceable. Preserve previous outputs and revisions.

## Separate evidence from appearance
AI provenance establishes how an image was produced. Scriptural accuracy must be established through a separately verified source ledger and design review. Realistic rendering alone is not evidence of historical correctness.

