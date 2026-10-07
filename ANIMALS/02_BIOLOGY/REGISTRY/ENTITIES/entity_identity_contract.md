# ENTITY IDENTITY CONTRACT

Every animal entity must have a stable internal ID.

Required:

entity_id:
entity_type:
canonical_name:
scientific_name:
taxonomic_rank:
status:

Allowed entity_type:

SPECIES
SUBSPECIES
POPULATION
INDIVIDUAL
GROUP

Allowed status:

ACTIVE
UNCERTAIN
MERGED
SPLIT
EXCLUDED
SUPERSEDED

## Identity rule

A common name is not a stable entity identity.

Example:

"monkey"

cannot automatically become:

rhesus macaque
bonnet macaque
langur

without an explicit taxonomy decision.

## Entity merge

Two records may merge only through an explicit decision.

## Entity split

One record may split only through an explicit decision.

Existing downstream references must be revalidated after either operation.
