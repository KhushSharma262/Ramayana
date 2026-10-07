# HANDOFF STATE VECTOR

VALID HANDOFF STATES:

DRAFT
→ COLLECTING
→ DEPENDENCIES_CHECKED
→ SNAPSHOTS_VERIFIED
→ SCENE_VERIFIED
→ SHOT_VERIFIED
→ PRODUCTION_READY
→ IN_PRODUCTION
→ VALIDATION_REQUIRED
→ APPROVED
→ REJECTED
→ SUPERSEDED
→ BLOCKED

Rules:

DRAFT, COLLECTING, and verification states cannot enter production.

PRODUCTION_READY requires every mandatory dependency to pass.

REJECTED cannot be promoted directly to APPROVED.

SUPERSEDED remains auditable.

BLOCKED requires an explicit reason.

No state transition may occur without a traceable event or approved cause.
