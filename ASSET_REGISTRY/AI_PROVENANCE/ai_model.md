<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Model

Fields: model_provider, model_name

Record the actual provider and model name used to generate the asset. Preserve the service's own naming where possible.

Do not substitute the currently available model for the historical model that created an existing image. If the source platform is unknown, use NOT_CAPTURED.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# AI Model and Provider

## Fields
model_provider, model_name, model_version, generation_service, model_evidence.

## Capture
Record the service actually used, the provider, the model's displayed name, and any separately reported version. Record whether generation occurred through a web interface, API, local runtime, or other mechanism when known.

## Rules
1. Do not assume the service brand is the model name.
2. Do not assume the currently selected model was used for an older output.
3. Do not infer the provider from visual appearance.
4. For local or fine-tuned models, record the checkpoint or model artifact identifier and hash when available.
5. For routed or third-party services, record the actual reported model if available and identify any uncertainty.
6. Never include API keys, session tokens, or credentials.
7. Unknown fields remain NOT_CAPTURED.

