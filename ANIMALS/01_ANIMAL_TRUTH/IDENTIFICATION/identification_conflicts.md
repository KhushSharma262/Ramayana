# IDENTIFICATION CONFLICTS

## PURPOSE

Records disagreements that can affect species identity.

## CONFLICT TYPES

translation_conflict
terminology_conflict
source_conflict
taxonomic_conflict
historical_conflict
geographic_conflict
traditional_conflict
biological_conflict
contextual_conflict

## REQUIRED FIELDS

conflict_id
animal_id
conflict_type
position_a
position_b
source_a
source_b
support_a
support_b
impact
resolution
resolution_reason
resolution_status
confidence

## RESOLUTION STATUS

unresolved
partially_resolved
resolved
deferred

## RESOLUTION PRINCIPLE

Resolve using evidence hierarchy.

Do not resolve because:

- one answer is prettier
- one animal is easier to generate
- one animal is more familiar
- a previous adaptation used it
- an AI model prefers it

## UNRESOLVED CONFLICT

If no defensible resolution exists:

resolution_status = unresolved

The downstream system must receive the uncertainty.

## IMPACT

Every major conflict should state what it affects:

species
biology
behavior
movement
visual identity
ecology
continuity
production

## CHANGE RULE

A later source may reopen a resolved conflict.

Historical decisions must remain traceable.
