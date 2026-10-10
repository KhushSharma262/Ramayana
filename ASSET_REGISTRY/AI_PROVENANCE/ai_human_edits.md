<!-- AI_PROVENANCE_STANDARD_V1 -->

# Human Edits

Field: human_edits

Record changes made by a human after generation, including retouching, compositing, paint-over, cropping, color correction, facial adjustments, costume changes, and cleanup.

For each edit, capture:
- editor or responsible role, if known
- date
- operation performed
- software or method, if known
- input and output file identifiers
- whether the edit altered a scripturally important feature

Use NONE_CONFIRMED only when the production history confirms that no human edits occurred. Otherwise use NOT_CAPTURED or PARTIALLY_CAPTURED.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Human Edit Ledger

## Purpose
Capture all manual changes made after a model output, including retouching, paint-over, facial or anatomical corrections, costume changes, cleanup, masking, compositing, cropping, color grading, and removal or addition of visual elements.

## Record per operation
- edit_id and provenance_id
- input and output file identifiers
- editor or role, if known
- timestamp and timezone, if known
- software and version, if known
- operation description
- reason and approved change request, if any
- affected regions or features
- whether a scripturally significant feature changed
- evidence or review reference
- status and notes

## Rules
1. Do not use NONE_CONFIRMED unless the complete relevant history has been checked.
2. Use NOT_CAPTURED when edit history is unknown.
3. Do not infer that an image was untouched simply because no edit record exists.
4. Separate manual edits from AI inpainting, upscaling, or image-to-image transformations.
5. Preserve the pre-edit image and hash where available.
6. Record rejected edits when needed to explain continuity decisions.
7. If a change affects a text-explicit feature, require source review before approval.

