# CANONICAL ANIMAL STATE VECTOR

## Purpose

Every important domestic, trained, working, mounted, companion, ceremonial, royal, military, or otherwise human-associated animal must resolve through one canonical state vector.

No downstream system may maintain a competing complete identity/state description.

## Identity

- animal_id
- species_id
- taxonomy_status
- individual_or_population
- identity_status
- origin_status

## Domestication

Allowed states:

- WILD
- WILD_HABITUATED
- CAPTIVE
- TAMED
- DOMESTICATED
- BORN_DOMESTIC
- FERAL
- SEMI_DOMESTIC

Domestication is NOT training.

## Training

Allowed states:

- UNTRAINED
- TAMING
- HABITUATION
- BASIC_TRAINING
- INTERMEDIATE
- ADVANCED
- SPECIALIZED
- EXPERT
- WORK_READY
- RETIRED

Training requires documented progression.

## Roles

Roles are contextual tags and may coexist:

- COMPANION
- WORKING
- DRAFT
- PACK
- HERDING
- GUARD
- RIDING
- MOUNTED
- MILITARY
- CEREMONIAL
- ROYAL
- AGRICULTURAL
- TRANSPORT
- BREEDING

Roles are NOT species, breeds, domestication states, or training states.

## Human Relationships

Relationships are independent:

- UNKNOWN_HUMAN
- FAMILIAR_HUMAN
- REGULAR_HANDLER
- OWNER
- TRAINER
- RIDER
- HERDER
- KEEPER
- TRUSTED_HANDLER
- FEARED_HANDLER

Physical proximity does not establish a relationship.

## Biological State

Where relevant:

- life_stage
- sex
- reproductive_state
- health_state_reference
- injury_state_reference
- fatigue_state_reference
- conditioning_state

Biology remains authoritative for physiological truth.

## Equipment

Equipment is independently tracked:

- equipment_id
- equipment_state
- compatibility_state
- assignment_state
- condition_state

Role does not automatically imply equipment.

## Historical State

For historical or canonical reconstruction:

- temporal_layer
- geographical_layer
- evidence_state
- source_set
- historical_approval

## Continuity

Every persistent individual requires:

- previous_snapshot
- current_snapshot
- continuity_status
- last_approved_scene
- next_eligible_scene
- unresolved_changes

## Production

Production requires:

- approved_state_snapshot
- scene_eligibility
- prompt_state
- asset_trace
- final_shot_trace

## Forbidden Conflations

DOMESTICATED != TRAINED

TRAINED != WORKING

WORKING != MOUNTED

ROYAL != CEREMONIAL

OWNER != TRAINER

EQUIPPED != TRAINED

CAPTIVE != DOMESTICATED

TAMED != DOMESTICATED

PLAUSIBLE != SUPPORTED

AI_GENERATED != EVIDENCE

VISUAL_SIMILARITY != IDENTITY

ROLE != BIOLOGY

## Master Rule

One animal may have many roles and relationships, but only one canonical state vector exists at a given approved continuity snapshot.
