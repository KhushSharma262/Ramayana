# ANIMAL DEFINITION

## PURPOSE

Defines the master identity object used whenever an animal enters the project.

## MINIMUM IDENTITY

Every animal entity should be traceable through:

animal_id
animal_category
source_term
source_language
source_reference
identification_status
species_id
taxonomy_status
confidence
canon_status

## ANIMAL CATEGORY

Allowed values:

wild
domestic
trained
working
mounted
ceremonial
background
unknown

Category does not establish canon status.

## IDENTIFICATION STATUS

confirmed
probable
possible
disputed
unresolved
unknown

## CANON STATUS

direct_canon
derived_canon
traditional_interpretation
historical_reconstruction
non_canon_supporting_fact
uncertain
unknown

## IDENTITY RULE

The source identity must be established before visual design.

A generated image must never become the authority for identifying the animal.

## SEPARATION OF LAYERS

ANIMAL_TRUTH determines:

- identity
- terminology
- species
- taxonomy
- identification confidence

It does not determine:

- detailed anatomy
- behavior choreography
- movement assets
- rendering style
- lighting
- camera language
- final audio mix

## CONFLICT RULE

If textual terminology, translation and modern zoology disagree, retain all three layers:

1. source statement
2. interpretation
3. modern biological mapping

Then document the decision.

## UNKNOWN RULE

Never fill an empty field with an invented value.

Use:

UNKNOWN

when no reliable information exists.

Use:

UNCERTAIN

when information exists but does not permit a firm conclusion.

## CHANGE CONTROL

Changing species identity after downstream work has begun requires impact review.

Potentially affected systems include:

biology
behavior
movement
ecology
visual_identity
continuity
AI_generation
audio
interaction

No silent identity change is permitted.
