# ECOLOGY CONTROL AND VALIDATION

## Mandatory Checks

Every production-relevant ecological claim must be checked for:

- geographic applicability
- temporal applicability
- habitat compatibility
- climate compatibility
- vegetation compatibility
- water compatibility
- species compatibility
- population plausibility
- seasonality
- human-land-use compatibility
- historical applicability
- canonical applicability
- evidence traceability
- uncertainty
- conflict state
- approval
- snapshot

## Hard Fail

BLOCK if:

- location is unresolved
- habitat is unsupported
- species presence is unsupported
- temporal scope is unknown when important
- historical ecology is assumed from modern ecology
- supernatural ecology is mixed with ordinary ecology
- human landscape has no geographic/ecological reason
- animal density has no ecological basis
- vegetation has no habitat/climate basis
- water has no hydrological basis
- critical evidence is missing
- approval is missing
- snapshot is missing

## Release Gate

RESEARCHING
→ EVIDENCE_COLLECTED
→ INTERPRETED
→ REVIEW_REQUIRED
→ APPROVED
→ SNAPSHOTTED
→ PRODUCTION

Failure:
→ BLOCKED
