# MOVEMENT CONTROL AND VALIDATION

## Mandatory Validation

Every approved movement entity must be checked for:

- correct species identity
- taxonomy
- geographic applicability
- population applicability
- species-appropriate locomotion
- biological plausibility
- physical plausibility
- terrain compatibility
- context compatibility
- age/sex applicability where relevant
- condition applicability
- equipment applicability
- evidence traceability
- uncertainty
- conflict status
- approval
- version
- snapshot

## Hard Fail Conditions

BLOCK if:

- species identity is unresolved
- evidence is missing for a critical claim
- movement contradicts known anatomy
- impossible mechanics are present
- unsupported cinematic exaggeration is presented as natural movement
- supernatural mechanics are mixed into ordinary animal rules
- historical equipment is assumed without evidence
- context is incompatible
- source applicability is unknown where applicability matters
- approval is missing
- snapshot is missing

## Production Gate

RESEARCHING
→ EVIDENCE_COLLECTED
→ INTERPRETED
→ REVIEW_REQUIRED
→ APPROVED
→ SNAPSHOTTED
→ PRODUCTION

Failure at any critical stage:
→ BLOCKED
