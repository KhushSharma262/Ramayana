<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Prompt ID

Field: prompt_id

Record the permanent identifier of the exact prompt version used for an output. Link to the stored prompt text and version, not merely to a general character brief.

Prompt text should retain important positive requirements, negative constraints, framing, lighting, material descriptions, and any reference-image instructions. If the prompt was revised, create a new prompt version and preserve the previous one.

Never claim an output used a prompt unless the prompt-output connection is documented.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Prompt Identity and Versioning

## Fields
prompt_id, prompt_version, prompt_text_or_file, prompt_hash, negative_prompt, prompt_status.

## Rules
1. Store the exact prompt version associated with each output.
2. Hash the prompt text where practical and retain the text itself in a controlled file.
3. Record negative prompts and reference instructions separately if the service does.
4. Do not attach a revised prompt to an older output unless evidence confirms it was used.
5. A reconstructed prompt must be labeled RECONSTRUCTED, with the author and reconstruction date.
6. Keep prompt versions immutable; revisions create new versions.
7. Avoid storing credentials, private personal data, or unlicensed source text.
8. For character prompts, identify stable identity requirements, permitted variations, and prohibited changes.
9. For realism-critical details, link prompt requirements to evidence IDs rather than relying on adjectives such as "authentic" or "realistic."
10. Prompt compliance must be checked against the output; prompt wording alone does not prove the model followed it.

