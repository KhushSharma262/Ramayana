---
file_id: BIO-CONTROL_VALIDATORS_state_transition_control
domain: CONTROL
canonical_owner: CONTROL
file_role: CONTROL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# BIOLOGICAL STATE TRANSITION CONTROL

Biological state is continuous.

## VALID TRANSITION

previous state
→ biological/event cause
→ transition
→ new state.

## EXAMPLE

RESTED
→ prolonged running
→ fatigue increases
→ FATIGUED
→ rest
→ RECOVERING
→ RESTED.

## INVALID

RESTED
→ unexplained
→ FATIGUED
→ next shot RESTED.

## REQUIRED

Every material state change needs:

transition_id:
animal_id:
previous_state:
trigger:
new_state:
time:
scene:
shot:
evidence_or_event:
approved:

## STATE TYPES

AGE
SEX
HEALTH
INJURY
PAIN
HYDRATION
HUNGER
ENERGY
FATIGUE
THERMAL
REPRODUCTIVE
SENSORY
BODY_CONDITION.

## RULE

A state cannot disappear merely because the next shot is visually inconvenient.


