<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Reference IDs

Field: reference_ids

List the identifiers of images, sketches, photographs, text extracts, or approved assets supplied as references during generation.

For each reference, capture its reference ID, file path or URI, content hash when possible, purpose, rights/permission status where relevant, and whether it is scripture evidence, historical reference, continuity reference, or style-only reference.

Do not confuse a reference used by the image model with a source that independently supports a scriptural claim.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Reference Input Registry Rules

## Required reference attributes
reference_id, source_path_or_uri, content_hash, reference_category, purpose, rights_status, source_creator_or_tradition, source_locator, verification_status, notes.

## Categories
SCRIPTURE_EVIDENCE, COMMENTARY, HISTORICAL_EVIDENCE, MATERIAL_CULTURE, APPROVED_CONTINUITY, CHARACTER_REFERENCE, LOCATION_REFERENCE, STYLE_ONLY, OTHER.

## Rules
- Record only references actually supplied to or used in the generation workflow.
- A source researched after generation is an evidence source, not a generation input.
- Preserve file hashes and source locators when available.
- Record the purpose of each reference and whether it is allowed for production use.
- Do not use a style reference as proof of costume, anatomy, ritual, or architecture.
- Distinguish original sources from derivative summaries and AI-generated references.
- Record conflicts between references and route them to review.
- Never invent a reference ID or imply a reference was used when that is not known.
- Verify that the referenced file or URL resolves before marking it available.

