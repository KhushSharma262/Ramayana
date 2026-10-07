# INDIVIDUAL IDENTITY

## PURPOSE

Stores persistent distinguishing characteristics of tracked animals.

## REQUIRED FIELDS

individual_id
species_id
sex
age_class
distinctive_features
identity_basis
source_reference
confidence
identity_lock_status
continuity_notes

## DISTINCTIVE FEATURES

Possible categories:

body markings
coat/feather pattern
coloration
scars
ear shape
tail characteristics
body proportions
size
other stable biological identifiers

Only use features supported by evidence or explicitly approved production design.

## IDENTITY VS STATE

Stable:
markings
natural coloration
body proportions

Temporary:
mud
wetness
dust
blood
fatigue
temporary injury
temporary equipment

Do not permanently encode temporary states.

## IDENTITY CONFIDENCE

Each distinguishing feature should have a basis:

source_supported
zoological_standard
approved_reconstruction
production_choice
unknown

## AI GENERATION RULE

AI must not be allowed to drift:

- coat pattern
- number/location of major markings
- body proportions
- species traits
- major scars

when those features are locked.

## RECOGNITION

The individual should remain identifiable even when:

- camera angle changes
- lighting changes
- distance changes
- environment changes
- AI generation model changes
