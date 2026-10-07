# DOWNSTREAM ACKNOWLEDGEMENT

## PURPOSE

Confirms that downstream systems have received and understood animal identity
constraints and uncertainty.

## REQUIRED

entity_id
source_system
target_system
identity_version
uncertainty_ids
restrictions
acknowledgement_status
acknowledged_by
acknowledgement_date
approval_status

## TARGET SYSTEMS

CANON
RESEARCH
BIOLOGY
BEHAVIOR
MOVEMENT
ECOLOGY
DOMESTIC_TRAINED
INTERACTION
VISUAL_IDENTITY
CONTINUITY
AI_PRODUCTION
AUDIO
CINEMATIC_INTEGRATION

## STATUS

not_sent
sent
acknowledged
rejected
superseded

## RULE

Downstream systems must not consume a changed identity version without
being aware of the change.

## REJECTION

If a downstream system cannot safely use the information:

acknowledgement_status = rejected

and the conflict must be resolved before release.

## VERSION

Every important handoff should reference the identity/decision version
that was consumed.
