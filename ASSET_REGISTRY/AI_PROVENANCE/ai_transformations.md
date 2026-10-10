<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Transformations

Field: transformations

Record each operation between the initial generated output and the current production asset: upscaling, inpainting, outpainting, image-to-image passes, compositing, denoising, restoration, cropping, color grading, or format conversion.

For each operation, record its order, tool/model, parameters if captured, input file, output file, date, and responsible person or process. Preserve original outputs; do not silently replace them.

Distinguish model transformations from manual edits. If history is incomplete, mark it PARTIALLY_CAPTURED.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Transformation and Derivative History

## Scope
Capture every known transformation between initial generation and the asset currently used in production: inpainting, outpainting, image-to-image, upscaling, denoising, restoration, compositing, retouching, color grading, crop, resize, conversion, and delivery export.

## Per-operation fields
transformation_id, provenance_id, sequence_number, operation_type, tool_or_model, tool_version, parameters_json, input_file, input_sha256, output_file, output_sha256, timestamp, operator, reason, approval_reference, notes.

## Rules
1. Order operations chronologically when timestamps are available; otherwise record the known sequence and uncertainty.
2. Preserve the original generated output where available.
3. Never overwrite the only copy of an input.
4. Distinguish AI operations from manual operations.
5. Hash input and output files when possible.
6. If an operation's history is unknown, do not claim no transformation occurred.
7. Verify output dimensions, format, and visual continuity after transformations.
8. Track transformations that alter identity, costume, symbolic features, source-supported colors, or culturally significant details.
9. Require review when an edit conflicts with the source ledger or a locked design.
10. Mark partial history explicitly rather than inventing missing steps.

