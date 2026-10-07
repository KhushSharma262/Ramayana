# PRODUCTION TRACEABILITY FIREWALL

## Required Chain

Every important production animal must trace:

SOURCE
→ CLAIM
→ APPROVED DECISION
→ ANIMAL_ID
→ SNAPSHOT_ID
→ SCENE_ID
→ PROMPT_ID
→ ASSET_ID
→ SHOT_ID

## Prompt

A prompt must reference an approved state.

A prompt cannot introduce unsupported:

- species
- breed
- training
- role
- equipment
- historical practice
- human relationship
- identity

## Asset

Every important generated asset must be linked to:

- scene
- animal_id where applicable
- snapshot
- prompt
- generation record

## Final Shot

The final shot must be auditable back to the approved state.

## Asset Rejection

Reject assets that introduce unsupported:

- identity changes
- equipment changes
- role changes
- biological changes
- historical changes
- continuity changes

## AI Generation Rule

Generation produces representation.

Generation does not produce truth.

## Fail Closed

Missing traceability:

ASSET = BLOCKED

Missing approved state:

SHOT = BLOCKED
