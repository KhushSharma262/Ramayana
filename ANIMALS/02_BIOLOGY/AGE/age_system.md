---
file_id: BIO-AGE_age_system
domain: AGE
canonical_owner: AGE
file_role: CANONICAL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# AGE SYSTEM

## Purpose

Central age-management logic for animal biological records.

## Status

ACTIVE

## Biological Scope

This file belongs to the ANIMALS → BIOLOGY system.

It defines animal biological truth and production constraints.

The baseline is modern real-world zoology unless another project-level decision explicitly changes the scope.

## Content

Every tracked animal should have:

animal_id
species_id
birth_date_or_estimate
chronological_age
biological_age_description
life_stage
age_confidence
age_source.

Age may be:

EXACT
ESTIMATED
RANGE
UNKNOWN.

Never convert an estimate into false precision.

Age affects:

- anatomy
- physiology
- health
- nutrition
- movement
- behavior
- reproduction
- sensory capability.

Age must remain continuous across the production timeline.

A visual generation cannot arbitrarily make the same animal younger or older.

## Biological Rules

1. Species-specific biology takes priority over generic animal assumptions.
2. Individual biological state takes priority over generic species averages.
3. Age and developmental stage must be respected.
4. Sex differences must only be used where biologically supported.
5. Health and injury must persist through continuity.
6. Natural variation must be preserved.
7. Exact numerical claims require evidence.
8. Unknown information must remain UNKNOWN.
9. AI generation cannot create new biological capabilities.
10. Cinematic convenience cannot become biological truth.

## Research Classification

Information may be classified as:

- DIRECT_SCIENTIFIC_FACT
- DERIVED_SCIENTIFIC_FACT
- SPECIES_GENERALIZATION
- INDIVIDUAL_STATE
- INFERENCE
- UNCERTAIN
- UNKNOWN
- DIRECTORIAL_CHOICE

## Anti-Hallucination Rule

Do not invent:

- anatomy
- body dimensions
- physiological limits
- sensory capabilities
- reproductive parameters
- disease
- injury
- diet
- behavior
- lifespan
- speed
- strength
- species identity
- breed identity.

Where evidence is unavailable, record UNKNOWN.

## Downstream Connection

This information may constrain:

- BEHAVIOR
- MOVEMENT
- ECOLOGY
- DOMESTIC / TRAINED
- VISUAL IDENTITY
- CONTINUITY
- AI PRODUCTION

Those systems must preserve the biological constraints established here.

## Provenance

Important claims should connect through:

SOURCE
→ EVIDENCE
→ CLAIM
→ INTERPRETATION
→ DECISION
→ BIOLOGICAL RECORD
→ PRODUCTION

## Final Authority

Animal-specific biological truth belongs to ANIMALS.

Global project conflicts remain subject to the project's central control and approval systems.


