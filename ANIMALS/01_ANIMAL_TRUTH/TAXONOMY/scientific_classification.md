# SCIENTIFIC CLASSIFICATION

## PURPOSE

Stores the scientific hierarchy for each approved or provisionally selected species.

## REQUIRED LEVELS

kingdom
phylum
class
order
family
genus
species

## OPTIONAL LEVELS

subspecies
variety
other recognized rank

## REQUIRED METADATA

species_id
classification_source
classification_version
classification_date
authority
confidence
notes

## RULE

Do not guess a taxonomic level.

If a source does not support species-level certainty, preserve the appropriate uncertainty.

## SCIENTIFIC NAME

Scientific names should be stored separately from:

- common names
- regional names
- historical names
- translated names

## TAXONOMIC NORMALIZATION

When multiple sources use different scientific names:

1. identify each name
2. determine whether they represent synonyms
3. determine current accepted usage
4. preserve historical terminology
5. document the decision

## ANTI-HALLUCINATION

A scientific-looking Latin name is not evidence.

Every scientific classification must have a source or be explicitly marked UNKNOWN.
