<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Asset Provenance

## Purpose
Maintain the traceable origin and transformation history of every AI-generated production asset.

## Required controls
- Link each record to a permanent asset_id.
- Link the exact output file and its SHA-256 hash when available.
- Record the actual prompt, model, model version, generation date, seed, and parameters only when captured from the generation process.
- Link reference images by reference ID and file hash where available.
- Record human edits and transformations as separate, chronological operations.
- Preserve source-scripture references separately from image-generation references.
- Never represent an unverified value as a fact.

## Status vocabulary
CAPTURED_VERIFIED: supported by generation logs, metadata, or direct production records.
PARTIALLY_CAPTURED: some fields are verified; others are missing.
NOT_CAPTURED: information is not currently available.
NOT_APPLICABLE: the field genuinely does not apply, with a reason in notes.
UNVERIFIED: a value exists but has not been checked.

## Realism controls
AI provenance proves how an image was made; it does not prove that the image is historically or scripturally accurate. Track textual evidence, historical reconstruction, and creative inference in the asset reference ledger and design review.

## Required practice
Do not invent seeds, prompts, model versions, dates, reference IDs, or edits to complete a record. Recover them from original tool logs where possible; otherwise mark them NOT_CAPTURED.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# AI Asset Provenance Standard

## 1. Purpose and scope
This registry records the verifiable creation history of AI-generated production assets. It supports reproducibility, continuity, audit, authorship review, technical troubleshooting, and traceability. It does not itself establish historical, cultural, or scriptural correctness.

## 2. Unit of record
One row represents one specific generated output or generation attempt. Multiple images produced by one request should have distinct provenance records when they are separately retained or used. An asset may have multiple provenance records across revisions.

## 3. Identity and linkage
Every record must have a unique provenance_id and a canonical asset_id. Keep the asset ID stable across revisions. A new output is a new provenance record, not a replacement for the old history. Link the prompt version, generation job, input references, source output, and final production file when known.

## 4. Evidence hierarchy
A. Direct platform job log or API response.
B. Original prompt and saved generation settings.
C. Original output metadata and file hash.
D. Dated production record from a responsible operator.
E. Recollection or inference, clearly labeled as such.

Do not upgrade recollection or inference to verified fact. Keep evidence location and verification method in notes or the relevant linked record.

## 5. Required field policy
Required for a new production record: provenance_id, asset_id, output file or explicit NOT_CAPTURED status, verification_status, and notes. Model, version, prompt, date, seed, and parameters must be recorded if available. Missing historical values remain explicitly unknown.

## 6. Integrity
Calculate SHA-256 for every available original and final file. Never reuse a hash across different file contents. If a file changes, calculate a new hash and retain the previous version record. A hash establishes file identity, not authenticity or scriptural correctness.

## 7. Prompt retention
Store the exact prompt used, not a cleaned-up reconstruction. Preserve negative prompts and relevant reference instructions. Record prompt revisions as separate versions. If the exact prompt is missing, a newly written prompt must be labeled RECONSTRUCTED and must not be represented as the original.

## 8. Model and settings
Record provider, model name, exact version, parameters, dimensions, aspect ratio, and seed when the platform exposes them. Preserve original parameter names and values. Do not assume seeds guarantee identical output across model versions or services.

## 9. Reference inputs
Every reference should have a stable reference ID, source location, hash when possible, purpose, rights status where relevant, and category: scripture evidence, historical evidence, approved continuity reference, visual style reference, or other. Style references are not proof of a scriptural claim.

## 10. Human edits and transformations
Record manual edits separately from model transformations. Each operation should identify input, output, order, date, operator or process, tool, and parameters when known. Do not silently overwrite original outputs.

## 11. Scripture and realism controls
Link the asset to a separate reference-ledger entry with text, edition, and verse locator. Classify every significant design feature as:
- TEXT_EXPLICIT: directly stated in the selected source.
- TEXTUAL_INFERENCE: reasonable interpretation of textual evidence.
- HISTORICAL_RECONSTRUCTION: supported by a cited historical or material-culture source.
- TRADITIONAL_INTERPRETATION: supported by a named tradition or commentary.
- CREATIVE_DECISION: chosen for production, not claimed as textual fact.
- UNVERIFIED: evidence is not yet adequate.

Do not treat a visually realistic image as proof of historical accuracy. Record conflicts between sources and resolve them through an explicit review decision.

## 12. Verification statuses
NOT_REVIEWED, PARTIALLY_VERIFIED, VERIFIED_FROM_PRIMARY_LOG, VERIFIED_FROM_FILE, VERIFIED_FROM_MULTIPLE_EVIDENCE, UNVERIFIED, CONFLICT_FOUND, REJECTED.

## 13. Change control
Never erase historical provenance to make a record appear complete. Correct errors by recording the correction, evidence, reviewer, and date. Preserve prior prompt and output identifiers. Mark superseded records rather than deleting them.

## 14. Privacy and rights
Do not store credentials, API keys, private account information, or unnecessary personal data in prompts or notes. Record licensing and consent concerns for external reference images and likenesses where applicable.

## 15. Release gate
An asset cannot be described as fully reproducible until its actual prompt, model/version where available, settings where available, input references, and output file are sufficiently traceable. It cannot be called scripture-verified until the relevant textual evidence and interpretation have been reviewed separately.

