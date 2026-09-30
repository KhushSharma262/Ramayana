# REGISTRY QA

Check for:

## Identity

- duplicate IDs
- duplicate entities
- missing IDs
- conflicting aliases

## References

- broken references
- missing targets
- circular dependencies where prohibited
- orphaned records

## Production

- scenes without locations
- shots without scenes
- assets without owners
- final renders without approval

## Canon

- events without source references
- canon decisions without evidence
- unresolved conflicts

## Continuity

- character state mismatch
- location state mismatch
- costume state mismatch
- prop state mismatch
- environment mismatch

## Legal

- missing rights
- missing license
- restricted asset usage
- unknown provenance

## AI

- generated asset without model record
- generated asset without provenance
- missing prompt/version record
- missing consistency approval

Every issue receives:

ISSUE_ID
ENTITY_ID
DESCRIPTION
SEVERITY
DISCOVERY_DATE
OWNER
STATUS
RESOLUTION
