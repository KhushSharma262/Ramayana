# MODEL INPUT / OUTPUT CONTRACT

Every model invocation must have:

input_state_id
prompt_id
model_id
model_version
reference_set_id
generation_configuration_id
output_asset_id

The model is permitted to transform approved inputs into an asset.

The model is NOT permitted to create new canonical state.

Any output characteristic that conflicts with approved input state
is classified as generation error.

MODEL OUTPUT -> VALIDATION
NOT
MODEL OUTPUT -> TRUTH.
