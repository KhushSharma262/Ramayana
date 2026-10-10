<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Seed

Field: seed

Record the exact seed only when the generation platform exposes it and it was captured. Preserve its original type and value.

A seed may not guarantee identical output across model versions, settings, or services. Record the model and parameters alongside it.

Do not invent a seed or use a random number to fill a missing value. If the system does not expose a seed, use NOT_PROVIDED_BY_PLATFORM only after verification; otherwise use NOT_CAPTURED.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Seed Capture and Reproducibility

## Definition
The seed is the value reported by a generation system when that system exposes a seed parameter.

## Rules
- Preserve the exact value and type returned by the system.
- Do not create a random number to fill a missing historical seed.
- Use NOT_CAPTURED if logs have not been recovered.
- Use NOT_PROVIDED_BY_PLATFORM only after checking the relevant service or log.
- A seed alone is insufficient: model version, parameters, prompt, references, and platform behavior also matter.
- Do not promise pixel-identical reproduction unless the platform supports it and all relevant conditions are controlled.
- If a seed was changed for a later attempt, create a separate generation record.
- Record whether the seed was user-specified, platform-returned, or unavailable.

