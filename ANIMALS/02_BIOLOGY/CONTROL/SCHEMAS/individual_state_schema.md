---
file_id: BIO-CONTROL_SCHEMAS_individual_state_schema
domain: CONTROL
canonical_owner: CONTROL
file_role: CONTROL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# INDIVIDUAL BIOLOGICAL STATE SCHEMA

animal_id:
species_id:
sex:
age:
life_stage:

body_condition:
health_state:
injury_state:
pain_state:

hydration_state:
hunger_state:
energy_state:
fatigue_state:

thermal_state:
reproductive_state:
sensory_state:

baseline_state_source:
current_state_source:

last_transition_id:
continuity_status:
approval_status:

## RULE

Individual state has higher specificity than species averages.

Example:

Species:
healthy adult horse.

Individual:
HORSE-017.

Current state:
injured hind limb.

The individual remains injured until a valid transition occurs.

## REQUIRED TRANSITION

previous_state:
event:
new_state:
time:
scene:
source_or_event_record:
approved:


