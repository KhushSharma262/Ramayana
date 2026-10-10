<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Model Version

Field: model_version

Record the exact model version or release identifier reported by the generation service.
Do not infer the version from the image appearance, creation date, or current product name.

Keep the model name and model version in separate fields. If only a broad model family is known, preserve that wording and mark the exact version as NOT_CAPTURED.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Model Version

## Fields
model_name, model_version, model_version_evidence, model_version_status.

## Rules
- Preserve the exact platform-provided model/version label.
- Keep provider, model name, and version separate.
- Do not infer a version from image style, apparent quality, or generation date.
- Do not replace historical model information with the current model name.
- If only a model family is known, retain it and mark exact version NOT_CAPTURED.
- If platform logs disagree, preserve the conflict and require review.
- Record whether the version was reported by the platform or inferred from another source.
- Never state that a model version guarantees deterministic reproduction unless the platform explicitly documents that behavior.

