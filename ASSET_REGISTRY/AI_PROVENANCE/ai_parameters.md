<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Generation Parameters

Field: parameters_json

Store the generation settings actually used, preferably as valid JSON. Depending on the system, these may include aspect ratio, output dimensions, image count, guidance settings, quality mode, style settings, and other supported controls.

Only record parameters that the generation system actually exposed and that can be verified. Do not assume that different systems use the same parameter names or meanings.

If settings are unavailable, use NOT_CAPTURED. Retain the original generation request or log as a linked file when possible.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Generation Parameters

## Purpose
Record the settings that materially influence output so that future attempts can be meaningfully compared.

## Possible fields
parameters_json, aspect_ratio, width, height, image_count, quality_mode, guidance_settings, sampler, steps, seed, reference_strength, style_controls, negative_prompt, platform_defaults, parameter_evidence.

## Rules
- Only record settings actually exposed or captured.
- Preserve the original parameter names and values.
- Store valid JSON in parameters_json when the platform provides structured settings.
- Do not assume that similarly named settings behave identically across systems.
- Distinguish explicit values from platform defaults and unknown values.
- Do not invent defaults from memory.
- Do not store secrets in parameter logs.
- Record whether a setting is unsupported, unavailable, or merely not captured.
- When parameters are edited for a new generation, create a new provenance record.
- Validate JSON syntax before marking a captured JSON object as valid.
- Reproducibility is limited by model updates, hidden service changes, and nondeterministic generation.

