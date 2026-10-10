# MATERIAL DATA COMPLETENESS AUDIT

This file is the gate for deciding whether 02_MATERIAL_DATABASE is sufficiently complete for production.

## A. Identity completeness

Every production-relevant material must have, where applicable:

- permanent material ID
- primary name
- alternate names
- Sanskrit/Indic terminology when securely identified
- material class
- subclass
- natural/processed/manufactured/composite status
- origin/source
- composition
- constituent materials
- processing state
- distinguishing identity criteria
- known variants
- confidence
- uncertainty

## B. Evidence completeness

Every non-trivial historical/cultural/canonical assertion must be traceable to an evidence record.

The database must distinguish:

- direct_canon
- derived_canon
- traditional_interpretation
- historical_reconstruction
- scientific_fact
- engineering_reference
- visual_reconstruction
- directorial_choice
- production_choice
- unknown
- uncertain

## C. Historical completeness

For a material proposed for the production world, determine separately:

1. Did the material exist?
2. Was it technologically producible?
3. Was it available in the relevant geographical context?
4. Was it available in the relevant historical/chronological context?
5. Was it used by the relevant culture or social context?
6. Is its use explicitly canonical?
7. Is the exact identity certain or only approximate?

A YES to an earlier question does not imply YES to later questions.

## D. Scientific completeness

The database identity must not silently contain:

- invented density
- invented composition
- invented alloy recipe
- invented species identification
- invented mineral identification
- invented manufacturing process
- modern industrial assumptions presented as ancient facts

Those values must be sourced or explicitly marked uncertain/estimated.

## E. Negative-space audit

Before locking the folder, explicitly check for:

- missing material families
- missing historical technologies
- materials hidden inside generic categories
- materials incorrectly treated as objects
- processes incorrectly treated as materials
- composites incorrectly treated as homogeneous materials
- modern materials accidentally projected backward
- duplicate identities under different names
- unresolved synonyms
- unresolved translation problems
- canonical terms with uncertain modern identity
- region-specific materials omitted because they are uncommon today

## F. Production-use audit

The material database must support every material encountered by:

- architecture
- environment
- props
- costumes
- weapons
- vehicles
- jewelry
- ritual objects
- tools
- household objects
- food preparation
- agriculture
- forestry
- crafts
- construction
- warfare
- animals
- characters
- VFX residues
- fire/combustion residues
- water interactions

## G. Completion rule

02_MATERIAL_DATABASE is not considered complete merely because all category files exist.

It is complete only when every production-relevant material identity has a record or an explicit `UNKNOWN / REQUIRES_RESEARCH` entry and every unresolved identity is visible rather than silently guessed.

## H. No-loophole principle

If a future scene requires a material not represented here, add the material identity record first and update this audit. Do not silently force it into an incompatible category.
