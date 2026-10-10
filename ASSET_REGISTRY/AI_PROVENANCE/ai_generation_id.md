<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Generation ID

Field: generation_id

Record the generation job, task, request, or run identifier returned by the actual image-generation system.
Keep the original ID unchanged. Do not create a synthetic ID and imply that it came from the generation platform.

If the platform provides no generation ID, record NOT_PROVIDED_BY_PLATFORM only after checking the available run record. If no run record was checked, use NOT_CAPTURED.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Generation ID

## Definition
generation_id is the original identifier returned by the generation platform for a request, job, task, or output.

## Rules
- Preserve the original ID and platform context.
- Do not substitute provenance_id or asset_id for generation_id.
- One job may create multiple outputs; capture output identifiers separately if available.
- Do not manufacture a platform job ID.
- Use NOT_CAPTURED if history has not been recovered.
- Use NOT_PROVIDED_BY_PLATFORM only when the relevant platform/log has been checked and does not expose such an ID.
- Store a job URL or log location when available, excluding credentials and access tokens.
- If two records share a job ID, determine whether they are multiple outputs of one job or a duplicate record before changing anything.

## Evidence
Prefer platform logs, API responses, or a contemporaneous production record. A manually assigned internal identifier must be labeled as internal, not platform-generated.

