# ANIMAL TRUTH INDEX

## SYSTEM PURPOSE

This directory is the identity and factual-control layer for real animals used in the RAMAYAN AI web series.

The purpose is not to make animals visually impressive.

The purpose is to establish what animal is actually being represented before downstream systems design:

- anatomy
- physiology
- behavior
- movement
- ecology
- appearance
- audio
- interaction
- animation
- AI generation

ANIMAL_TRUTH is therefore an upstream dependency.

## CORE PRINCIPLE

The animal system follows:

CANON
+
REAL-WORLD BIOLOGY
+
NATURAL BEHAVIOR
+
ENVIRONMENT
+
PHYSICS
+
INDIVIDUAL VARIATION
+
PROFESSIONAL DIRECTION
+
AI PRODUCTION

AI generation is a production mechanism.

AI generation is NOT evidence of animal identity.

## FACT CLASSIFICATION

Every factual statement entering this system must be classified.

Allowed classes:

direct_canon
derived_canon
traditional_interpretation
historical_reconstruction
zoological_fact
scientific_evidence
visual_reconstruction
directorial_choice
production_choice
unknown
uncertain

Never merge these categories.

Example:

"Source explicitly names X"
=
direct_canon

"X probably corresponds to species Y"
=
derived_canon / uncertain depending on evidence

"Species Y naturally behaves in manner Z"
=
zoological_fact

"Animal should appear with a certain cinematic presentation"
=
visual_reconstruction or directorial_choice

## IDENTITY PIPELINE

SOURCE TERM
→ ORIGINAL LANGUAGE
→ TRANSLATION
→ CONTEXT
→ EVIDENCE
→ POSSIBLE IDENTIFICATIONS
→ CONFLICT ANALYSIS
→ SELECTED IDENTIFICATION
→ CONFIDENCE
→ TAXONOMIC ENTITY
→ DOWNSTREAM ANIMAL SYSTEMS

## ABSOLUTE ANTI-HALLUCINATION RULE

Never create a fact merely because:

- it sounds plausible
- it is common in modern adaptations
- an AI model generated it
- an image looks convincing
- a translation uses a familiar English animal name
- a modern breed appears visually appropriate
- a scene would look better with the animal
- a production pipeline needs a value

If evidence is insufficient:

UNKNOWN

If evidence conflicts:

UNCERTAIN

If several interpretations remain viable:

RETAIN ALL MATERIAL ALTERNATIVES.

## SOURCE SEPARATION

Original source evidence must remain distinguishable from:

- interpretation
- scientific knowledge
- historical reconstruction
- production choice

No downstream prompt may silently convert a lower-confidence interpretation into canon.

## SPECIES VS INDIVIDUAL

Species identity answers:

"What biological animal is this?"

Individual identity answers:

"Which particular animal is this?"

Do not mix the two.

## BACKGROUND ANIMALS

Background populations should normally be represented at species/population level.

Do not create an individual record for every background animal.

Individual records are reserved for animals whose identity or continuity matters.

## SCOPE

This system covers real wild and domestic animals.

It does not define:

- divine animal beings
- supernatural animals
- mythological creatures
- extraordinary creatures
- symbolic-only entities

Those require their dedicated systems.

## DOWNSTREAM HANDOFF

ANIMAL_TRUTH provides identity constraints to:

02_BIOLOGY
03_BEHAVIOR
04_MOVEMENT
05_ECOLOGY
06_DOMESTIC_TRAINED
07_INTERACTION
08_VISUAL_IDENTITY
09_CONTINUITY
10_AI_PRODUCTION
and other connected systems.

It does not duplicate their detailed implementation.
