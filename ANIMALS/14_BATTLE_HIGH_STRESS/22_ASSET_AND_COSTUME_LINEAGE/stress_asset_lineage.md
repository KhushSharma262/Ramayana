# STRESS ASSET LINEAGE

Every generated asset must trace:

source_ids
evidence_ids
claim_ids
decision_id
domain_snapshot_ids
continuity_snapshot_id
scene_id
shot_id
stress_record_id
prompt_id
model_id
reference_set_id
generation_id
asset_id
validation_id
approval_id

Derived assets inherit the lineage of their parent asset.

No asset may become final without a complete forward lineage.

Reverse audit must be able to trace a final shot back to its approved stress state and evidence.
