# MATERIAL RECORD STANDARD

Every individual material entry should use this structure.

## 1. Identity

- Material ID
- Canonical/display name
- Common names
- Sanskrit/Indic names where securely identified
- Category
- Subcategory
- Natural / processed / manufactured / composite
- Biological / mineral / metallic / ceramic / textile / organic / mixed
- Definition

## 2. Origin

- Raw source
- Geological / botanical / zoological origin
- Typical geographical occurrence
- Harvesting/mining/extraction basis
- Processing required to become the identified material

## 3. Composition

Record only composition appropriate to the certainty level.

Possible fields:

- principal constituents
- secondary constituents
- alloying elements
- binder
- temper
- inclusions
- pigments
- coatings
- impurities
- natural variability

Never invent a precise composition where the source only supports a broad family.

## 4. Baseline physical identity

Only concise identity-level facts belong here.

Examples:

- naturally hard
- fibrous
- porous
- metallic
- brittle
- flexible
- granular
- organic
- crystalline
- layered

Detailed numerical properties belong in `03_PHYSICS`.

## 5. Manufacturing / preparation identity

Examples:

- sawn
- carved
- forged
- cast
- hammered
- woven
- spun
- twisted
- tanned
- fired
- glazed
- polished
- dyed
- coated

The record describes the process only enough to establish what the material is.

## 6. Appearance identity

Record intrinsic material characteristics, not a shader recipe.

Examples:

- natural colour range
- characteristic grain
- typical translucency
- characteristic inclusions
- normal surface character

## 7. Historical relevance

Only a concise material identity conclusion belongs here.

Full evidence belongs in `07_HISTORICAL_CANONICAL`.

## 8. Known variants

Different species, alloys, grades, preparation methods, or finishes must remain distinct where they can change physical identity.

## 9. Exclusions

State common false equivalents.

Example:

"Bronze is not synonymous with all copper-coloured metal."

## 10. Cross-system links

Link to:

- PHYSICS
- SURFACE_STRUCTURE
- BEHAVIOR
- STATES
- HISTORICAL_CANONICAL
- AI_PRODUCTION
- CONTINUITY_QA
- PRODUCTION_HANDOFF

Do not copy their contents.

## Evidence status

Every important identification must have:

- evidence_status
- source_class
- confidence
- uncertainty
- research_needed

Do not convert uncertainty into a false fact.
