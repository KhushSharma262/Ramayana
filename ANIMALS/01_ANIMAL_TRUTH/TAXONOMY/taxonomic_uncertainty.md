# TAXONOMIC UNCERTAINTY

## PURPOSE

Records uncertainty in biological classification without hiding it from production.

## UNCERTAINTY TYPES

competing_taxonomies
species_complex
subspecies_ambiguity
historical_classification
incomplete_evidence
terminology_mismatch
unresolved_identification
synonym_uncertainty

## REQUIRED FIELDS

uncertainty_id
species_id
uncertainty_type
description
source
competing_positions
preferred_position
reason
confidence
status
downstream_impact

## STATUS

open
monitored
resolved
deferred

## RULE

Taxonomic uncertainty must not be silently removed merely because the AI production pipeline wants one answer.

## SPECIES COMPLEX

Where modern biology recognizes closely related entities that cannot be distinguished from available evidence, the project may need to retain a broader biological identity.

Do not invent species-level precision.

## HISTORICAL CLASSIFICATION

Historical terminology may differ from modern scientific classification.

Preserve both.

## DOWNSTREAM IMPACT

If uncertainty affects:

- appearance
- size
- anatomy
- behavior
- habitat
- movement

the downstream system must receive the uncertainty.

## RESOLUTION

A later decision may resolve uncertainty only through:

new evidence
better source
better taxonomic authority
additional canonical context
documented expert research

Not through AI preference.
