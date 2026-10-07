# MOVEMENT DATABASE INDEX

## Database Groups

The database is divided into six biological movement domains:

1. mammals_movement.md
2. birds_movement.md
3. reptiles_movement.md
4. amphibians_movement.md
5. fish_movement.md
6. invertebrates_movement.md

## Species Resolution

Broad terms must not silently resolve to species.

Examples:

"monkey"
"deer"
"bird"
"snake"
"fish"
"frog"

remain unresolved until species identity is established.

## Species-Specific Schema

Each entity must use the locomotion mechanics appropriate to its biology.

No universal horse-like gait template may be imposed on all animals.

## Entity Identity

Recommended immutable identifiers:

SP-MAM-HORSE
SP-MAM-ASIAN-ELEPHANT
SP-BRD-INDIAN-PEAFOWL
SP-REP-INDIAN-COBRA
SP-FSH-ROHU
SP-INV-HONEY-BEE

## Required Entity State

Each researched entity must eventually contain:

ENTITY_ID
COMMON_NAME
SCIENTIFIC_NAME
TAXONOMY
GEOGRAPHIC_APPLICABILITY
POPULATION_APPLICABILITY
MOVEMENT_PROFILE
CONTEXTS
CONSTRAINTS
EVIDENCE
INTERPRETATION
CONFIDENCE
UNCERTAINTY
APPROVAL_STATE
VERSION
SNAPSHOT
