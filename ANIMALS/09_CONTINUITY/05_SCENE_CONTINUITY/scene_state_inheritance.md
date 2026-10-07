# SCENE STATE INHERITANCE

Every scene begins from the latest valid approved continuity snapshot
for its timeline and context.

Required:

scene_id
input_snapshot_id
timeline_id
chronological_position
scene_context
entity_list
expected_inherited_states

A scene cannot silently reset:

- age
- injury
- fatigue
- training
- domestication
- relationship
- equipment
- markings
- grooming
- visual identity
- ecological context
- interaction state
- death status
- identity

Any intentional change requires an approved event.
