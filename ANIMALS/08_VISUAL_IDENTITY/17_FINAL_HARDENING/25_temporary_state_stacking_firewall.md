# TEMPORARY STATE STACKING FIREWALL

Temporary visual conditions must have causes.

Examples:

DUST ← terrain/activity
MUD ← wet terrain/contact
SWEAT ← exertion/heat/stress
WETNESS ← water/rain
BLOOD ← validated injury/event
DISORDERED_HAIR ← activity/environment
COSTUME_DAMAGE ← validated event

Every temporary state requires:

state_id
cause
source/context
start
duration or expiry
affected traits
compatibility check

Multiple temporary states must be evaluated collectively.

No contradictory stack is allowed.

Example:

DRY + SOAKING_WET
CLEAN + HEAVILY_MUDDY
UNINJURED + FRESH_BLOOD_FROM_INJURY
PRISTINE_COSTUME + DOCUMENTED_DESTROYED_COSTUME

without an explicit transition = BLOCKED.
