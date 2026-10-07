# SOURCE REGISTRY CONNECTION

## PURPOSE

Defines how ANIMAL_TRUTH connects to the project's global source registries.

## OWNERSHIP

ANIMAL_TRUTH does NOT become a second global source database.

The global CANON / RESEARCH systems own source identity.

ANIMAL_TRUTH stores references to those sources.

## REQUIRED

source_id
source_registry
source_type
authority_level
source_reference
version_or_edition
publication_date_if_known
access_date_if_applicable

## SOURCE REGISTRY VALIDATION

Every source_id used here must resolve to a valid project source record.

If it cannot be resolved:

source_status = UNVERIFIED

The evidence must not automatically become approved.

## SOURCE TYPES

primary_canonical
traditional_commentary
scholarly_secondary
historical
archaeological
scientific
zoological
ecological
iconographic
production_reference
unverified_lead

## IMPORTANT

Source type describes the source.

It does not automatically determine the truth of every claim derived from it.

## DUPLICATION CONTROL

Do not create a second source record simply because the source is used
for animals.

Reference the global source.
