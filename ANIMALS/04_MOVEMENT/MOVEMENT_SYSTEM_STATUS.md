# MOVEMENT SYSTEM STATUS

SYSTEM: ANIMALS / 04_MOVEMENT

## Architecture

STATUS: FROZEN
VERSION: 1.0
ARCHITECTURE_VALIDATION: REQUIRED

## Production

PRODUCTION_DATA: BLOCKED
RESEARCH: NOT_STARTED
APPROVAL: REQUIRED
SNAPSHOT: REQUIRED

## Authority

BIOLOGY
→ BEHAVIOR
→ MOVEMENT
→ DIRECTING
→ AI_PRODUCTION

## Controlled Boundaries

BIOLOGY:
Anatomy and physiological constraints.

BEHAVIOR:
Intent, state, motivation and behavioral movement patterns.

MOVEMENT:
Physical execution and biomechanics.

ECOLOGY:
Environment itself.

DOMESTIC_TRAINED:
Training, work, commands and equipment context.

AI_PRODUCTION:
Implementation only.

## Exception Domains

CINEMATICALLY_EMPHASIZED:
Allowed only when physically plausible and explicitly approved.

SUPERNATURAL:
Separate canonical system.

HISTORICAL_RECONSTRUCTION:
Historically evidenced equipment/use with Movement handling physical consequences.

## Species Rule

Species-specific movement schemas are mandatory.

Broad unresolved animal labels cannot silently become species-specific claims.

## Legacy Rule

Legacy material is quarantined rather than deleted.

No quarantined material is production authority.

## Release Gate

RESEARCH
→ EVIDENCE_COLLECTED
→ INTERPRETED
→ REVIEW_REQUIRED
→ APPROVED
→ SNAPSHOTTED
→ PRODUCTION

Any critical failure:
→ BLOCKED
