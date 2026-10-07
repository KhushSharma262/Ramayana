# IDENTITY / REPLACEMENT FIREWALL

## Purpose

Prevent one animal from silently becoming another animal during research, continuity, scene construction, regeneration, or production.

## Identity Rule

Every persistent individual animal has one unique:

animal_id

No two individuals may share an animal_id.

An animal_id must never be reassigned to another animal.

## Identity Components

An important individual may additionally require:

- species_id
- sex
- life_stage
- physical_identifiers
- origin
- parentage where known
- domestication_state
- training_state
- role_state
- relationship_state
- equipment_state
- continuity_state

These attributes describe the individual but do not replace animal_id.

## Replacement Event

When an individual animal is replaced:

OLD_ANIMAL
→ REPLACEMENT_EVENT
→ NEW_ANIMAL
→ NEW_ANIMAL_ID
→ NEW_STATE_VECTOR
→ NEW_SNAPSHOT

Replacement is a new identity.

## Forbidden Automatic Inheritance

A replacement animal does NOT automatically inherit:

- identity
- memories
- temperament
- training history
- training level
- human trust
- human fear
- handler relationship
- owner relationship
- equipment identity
- injuries
- fatigue
- conditioning
- work history
- role history
- scene history
- continuity history

Any transferred attribute requires an explicit approved transfer record.

## Physical Similarity

The following do NOT establish identity:

- similar coat
- similar markings
- similar body size
- similar face
- similar equipment
- similar behavior
- similar generated appearance
- visual resemblance in AI output

VISUAL_SIMILARITY != IDENTITY

## Equipment Transfer

Equipment is independently identified.

If equipment moves from one animal to another:

OLD_ANIMAL
→ EQUIPMENT_TRANSFER_EVENT
→ NEW_ANIMAL
→ UPDATED_EQUIPMENT_SNAPSHOT

The equipment identity remains the same unless the equipment itself is replaced.

## Human Relationship Transfer

A human relationship does not automatically transfer.

Example:

OLD_ANIMAL + TRUSTED_HANDLER

does not imply:

NEW_ANIMAL + TRUSTED_HANDLER

The new relationship requires independent evidence, training history, or an approved continuity event.

## Training Transfer

Training experience is individual.

One animal's training history cannot automatically be assigned to another animal.

Where training transfer is relevant, record:

- transferred training context
- trainer
- method
- duration
- evidence
- new animal response
- approval

The new animal must still develop its own training state.

## Injury / Health Transfer

Physical conditions do not transfer between individuals.

A replacement animal must receive its own:

- health state
- injury state
- fatigue state
- conditioning state

Biology remains authoritative.

## Scene Replacement

If a production scene requires a replacement animal:

1. identify the original animal
2. record the replacement event
3. create the new animal_id
4. establish the new state vector
5. establish approved relationships
6. establish equipment assignment
7. create the new snapshot
8. update continuity
9. update production trace

Do not silently substitute the animal.

## Background Animals

Background population animals do not require individual records unless they become narratively or continuity-relevant.

Once a background animal becomes persistent or identifiable:

INDIVIDUAL_ID_REQUIRED

## Death

Death ends the individual's active biological continuity.

The animal_id remains permanently reserved for historical records.

It must never be reused.

## Reappearance

An animal cannot reappear after death unless the narrative establishes an approved canonical/supernatural mechanism.

A production regeneration is not such a mechanism.

## Clone / Duplicate Prevention

Two generated assets depicting the same animal do not automatically establish two animals.

Two generated assets depicting similar animals do not automatically establish the same animal.

Identity is determined by the canonical record and approved continuity.

## Continuity Rule

Every important scene must reference the animal's approved snapshot.

The next scene inherits from the previous approved snapshot unless an explicit approved event changes the state.

## Rollback

If identity assignment or replacement is later found incorrect:

1. mark the incorrect transition INVALIDATED
2. preserve the original record
3. identify the last valid snapshot
4. restore the valid identity state
5. create the corrected event
6. create a new snapshot
7. propagate the correction downstream

Do not delete historical evidence of the error.

## Fail-Closed Rule

If identity is ambiguous:

IDENTITY = UNRESOLVED

If the animal's identity is required for the scene:

PRODUCTION = BLOCKED

## Master Rule

ANIMAL_ID IS PERMANENT.

A replacement is a new animal.

A visual match is not an identity match.

A production asset never defines animal identity.
