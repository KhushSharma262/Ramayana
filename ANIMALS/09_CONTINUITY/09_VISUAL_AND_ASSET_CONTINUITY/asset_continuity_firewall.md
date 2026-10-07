# ASSET CONTINUITY FIREWALL

Every important asset must reference:

asset_id
entity_id
snapshot_id
scene_id
prompt_id
visual_identity_snapshot_id
generation_version

Asset regeneration preserves the same canonical state.

If an asset conflicts with its snapshot:

ASSET = REJECTED

Never:

ASSET_CONFLICT
→ CHANGE_CANONICAL_STATE

The model follows the approved state.
The approved state does not follow the model.
