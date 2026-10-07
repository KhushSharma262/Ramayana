# SCENE STATE FIREWALL

## Purpose

Prevent scenes, prompts, storyboards, generated images, generated videos, or production edits from silently changing canonical animal state.

## Core Rule

A scene CONSUMES an approved animal state snapshot.

A scene does NOT independently define biological, behavioral, ecological, domestic, training, historical, or identity truth.

## Required Scene Reference

Every important individual animal appearing in a scene must reference:

- animal_id
- approved_snapshot_id
- scene_id
- temporal_context
- geographical_context
- relevant state
- continuity_reference

## Allowed State-Changing Events

A scene may produce a state transition only when an explicit approved event occurs.

Examples include:

- animal enters
- animal exits
- animal is equipped
- equipment removed
- equipment damaged
- equipment replaced
- handler changes
- training event
- work event
- fatigue event
- injury event
- release
- capture
- reproduction
- recovery
- death
- replacement
- other explicitly approved event

## Forbidden Silent Changes

A scene cannot silently:

- change species
- change animal_id
- change identity
- change domestication state
- change training state
- change role
- create a human relationship
- create trust
- create fear
- transfer equipment
- erase fatigue
- erase injury
- change biological age
- change sex
- change reproductive state
- change historical status
- change habitat requirement
- change ecological population status

## Prompt Firewall

A prompt is an implementation instruction.

A prompt is NOT evidence.

A prompt cannot override:

- Biology
- Behavior
- Movement
- Ecology
- Domestic / Trained
- historical evidence
- canonical identity

If a prompt conflicts with an approved state:

PROMPT = INVALID

The upstream conflict must be resolved before generation.

## AI Asset Firewall

Generated images and videos cannot create canonical truth.

The following are invalid as state evidence:

- AI image
- AI video
- AI animation
- generated concept art
- generated reference image
- generated prompt
- model suggestion
- visual hallucination

An AI asset may only represent an already-approved state.

## Scene Event Recording

When a state-changing event occurs, record:

- event_id
- scene_id
- animal_id
- previous_snapshot_id
- event_type
- event_time
- event_context
- evidence/reference
- interpretation
- approval
- resulting_snapshot_id

## Snapshot Propagation

The next approved scene must inherit from the latest valid snapshot.

SCENE N
→ EVENT
→ NEW SNAPSHOT
→ SCENE N+1

A later scene cannot silently revert to an earlier state.

## Example

If an animal becomes fatigued in Scene 12:

SCENE 12
→ FATIGUE_EVENT
→ SNAPSHOT 12B

Scene 13 must begin from SNAPSHOT 12B unless:

RECOVERY_EVENT
→ SNAPSHOT 13A

has been explicitly established.

## Scene Replacement

If the animal is replaced between scenes:

SCENE N
→ REPLACEMENT_EVENT
→ NEW_ANIMAL_ID
→ NEW_STATE_VECTOR
→ NEW_SNAPSHOT
→ SCENE N+1

The production team cannot simply substitute another animal asset while retaining the old identity.

## Background Animals

Background populations may use population-level rules when individual identity is not narratively relevant.

If a background animal becomes:

- persistent
- identifiable
- plot-relevant
- repeatedly referenced
- continuity-relevant

then it must receive an individual identity record.

## Visibility Rule

An animal being absent from the frame does not automatically mean that its canonical state has ceased to exist.

OFF-SCREEN != NONEXISTENT

Likewise:

ON-SCREEN != NEW_ENTITY

## Continuity

Every important scene must connect to the previous approved state.

Continuity cannot be reset merely because:

- the camera changes
- the location changes
- the shot changes
- the episode changes
- the animal is regenerated
- the production team changes
- the prompt is rewritten

## Scene Override

Any intentional scene-specific override requires:

- override_id
- reason
- affected claim
- authority owner
- evidence
- approval
- duration/scope
- rollback condition

An override must never silently become the new canonical truth.

## Fail-Closed Rule

If the scene requires an unresolved state:

SCENE = BLOCKED

If the prompt contradicts the approved state:

PROMPT = BLOCKED

If the generated asset contradicts the approved state:

ASSET = REJECTED

If continuity cannot be established:

CONTINUITY = BLOCKED

## Master Rule

THE SCENE REVEALS THE APPROVED ANIMAL STATE.

THE SCENE DOES NOT INVENT THE ANIMAL STATE.
