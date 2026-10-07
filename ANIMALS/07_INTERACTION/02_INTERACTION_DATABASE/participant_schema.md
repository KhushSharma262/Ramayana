# PARTICIPANT SCHEMA

Participant classes:

INDIVIDUAL_ANIMAL
ANIMAL_GROUP
ANIMAL_POPULATION
HUMAN
HUMAN_GROUP
OBJECT
ENVIRONMENTAL_ENTITY

## Participant Rules

Persistent individual animals use canonical animal_id.

A background population may use population_id.

A group may use group_id.

A participant's category must not be silently converted into another identity class.

Individualization requires an explicit identity decision.

A population interaction cannot be retrospectively converted into a specific individual interaction without evidence.
