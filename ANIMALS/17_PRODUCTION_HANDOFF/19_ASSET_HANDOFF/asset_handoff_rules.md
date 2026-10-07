# ASSET HANDOFF

Every generated or sourced production asset must retain:

asset_id
asset_version
source_handoff_id
scene_id
shot_id
generation_or_source_method
reference_set_id
prompt_id where applicable
model/tool identity
generation parameters where applicable
validation result
approval state
replacement lineage
supersession state

An asset without lineage cannot become final.

Replacement assets inherit the approved requirements but receive their own asset identity and version.
