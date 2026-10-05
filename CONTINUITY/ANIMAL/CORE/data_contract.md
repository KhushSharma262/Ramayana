# ANIMAL DATA CONTRACT

## MASTER RECORD

animal_id:
species_id:
population_id:
group_id:

classification:
detail_level:

identity_status:
lifecycle_status:

current_state_id:
previous_state_id:

location_id:
world_position_id:
scene_position_id:
shot_position_id:

age:
sex:

relationship_ids:
knowledge_state_id:
transformation_state_id:

authority_status:
source_ids:
classification:
confidence:
uncertainty:
conflicting_sources:

history_ids:
event_ids:
dependency_ids:

validation_status:
approval_status:
last_validated:

---

# RULE

This is the common Animal contract.

Domain-specific systems extend it.

They do not create competing Animal identity records.
