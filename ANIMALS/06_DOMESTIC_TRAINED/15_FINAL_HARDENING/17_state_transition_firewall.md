# STATE TRANSITION FIREWALL

## Purpose

Prevent arbitrary changes between domestication, training, work, relationship, equipment, and continuity states.

## Master Transition Rule

Every state change must follow:

CURRENT STATE
→ EVENT
→ EVIDENCE / OBSERVATION
→ INTERPRETATION
→ APPROVED TRANSITION
→ NEW STATE
→ SNAPSHOT

A scene, prompt, generated asset, or visual preference cannot independently create a state transition.

## Domestication Transitions

TAMED does not automatically become DOMESTICATED.

CAPTIVE does not automatically become DOMESTICATED.

FERAL does not automatically become WILD.

Each transition requires evidence and contextual justification.

## Training Transitions

Training must have a documented progression.

Forbidden without explicit reconstruction approval:

UNTRAINED → EXPERT

UNTRAINED → WORK_READY

UNTRAINED → SPECIALIZED

A higher training state must not appear without a defensible training history.

## Role Transitions

Roles such as:

- WORKING
- RIDING
- MOUNTED
- MILITARY
- CEREMONIAL
- ROYAL
- COMPANION
- DRAFT
- PACK
- HERDING
- GUARD

are contextual states/tags.

Assigning a role does not change:

- species
- domestication
- training
- identity
- biology

## Human Relationship Transitions

A relationship cannot be created merely because a human appears beside an animal.

Required for important relationships:

- human_id
- relationship_type
- start_context
- evidence_or_event
- continuity_state

Trust must not be inferred solely from ownership or proximity.

## Equipment Transitions

Equipment requires its own state transition.

Allowed events include:

- EQUIPPED
- REMOVED
- REPLACED
- DAMAGED
- REPAIRED
- MODIFIED
- LOST
- TRANSFERRED
- RETIRED

Equipment does not automatically transfer when an animal changes role.

## Replacement Transition

Replacing an animal creates:

OLD_ANIMAL
→ REPLACEMENT_EVENT
→ NEW_ANIMAL_ID
→ NEW_STATE_VECTOR
→ NEW_SNAPSHOT

The replacement animal does not automatically inherit:

- identity
- memories
- temperament
- training history
- human trust
- equipment
- injuries
- fatigue
- continuity

## Historical Transitions

Historical status may not change from:

PLAUSIBLE → SUPPORTED

without new evidence.

Likewise:

UNKNOWN → SUPPORTED

requires supporting evidence.

Historical interpretation cannot silently become historical fact.

## Scene Transitions

A scene consumes an approved state snapshot.

A scene may create a state transition only when the scene contains an explicit approved event.

Examples:

- animal becomes fatigued
- equipment is removed
- handler relationship changes
- animal is injured
- animal is released
- animal is captured
- animal dies
- animal recovers

The event must be recorded and propagated to the next snapshot.

## Snapshot Rule

Every approved transition creates a new versioned state snapshot.

Previous snapshots remain immutable.

## Rollback

If a transition is later found invalid:

1. mark the transition INVALIDATED
2. preserve the historical record
3. identify the last valid snapshot
4. restore from that snapshot
5. create a corrected transition
6. create a new approved snapshot

Do not silently rewrite previous state.

## Fail-Closed Rule

If the transition cannot be justified:

TRANSITION = BLOCKED

Therefore:

PRODUCTION = BLOCKED

until the missing evidence, event, interpretation, approval, or snapshot is resolved.

## Master Rule

No animal state may change merely because the next scene requires it.
