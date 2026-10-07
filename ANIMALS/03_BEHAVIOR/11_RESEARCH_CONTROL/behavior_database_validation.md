# BEHAVIOR DATABASE VALIDATION CONTROL

## Purpose

This control defines the checks required before behavior data can
be considered production-ready.

---

# VALIDATION GATES

## GATE 01 — FILE INTEGRITY

PASS only if:

- all six biological-group databases exist;
- index exists;
- no database file is empty;
- no duplicate active database exists.

FAIL if:

- old monolithic database exists in active database;
- duplicate species databases exist;
- database files are empty.

---

## GATE 02 — ENTITY ID

Every entity must contain:

entity_id:
scientific_name:
common_name:

FAIL if:

- entity_id is missing;
- entity_id is duplicated;
- entity_id is reused;
- entity ID does not match its database group.

---

## GATE 03 — TAXONOMIC RESOLUTION

FAIL production approval if:

- scientific identity is unresolved;
- common name is ambiguous;
- species is inferred only from visual appearance;
- species is inferred from generic cultural convention.

Broad categories may exist only as:

UNRESOLVED
or
BACKGROUND_RULE.

---

## GATE 04 — EVIDENCE

Production-relevant claims require:

SOURCE
EVIDENCE
INTERPRETATION
CLAIM
CONFIDENCE
DECISION
APPROVAL
VERSION
SNAPSHOT

Missing evidence = BLOCKED.

---

## GATE 05 — GEOGRAPHY

Evidence must state applicability.

Allowed examples:

India
South Asia
Asia
Global
Captive
Wild
Managed
Historical
Unknown

Never silently convert Global evidence into India-specific evidence.

---

## GATE 06 — POPULATION CONTEXT

A behavior observed in:

captivity
laboratory
zoo
rehabilitation
managed herd
trained animal

must not automatically be treated as universal wild behavior.

---

## GATE 07 — DOMESTICATION

These are separate states:

wild
habituated
captured
captive
domesticated
trained
working
ridden
pack
draft
herding
guarding
ceremonial
companion

No automatic inheritance between them.

---

## GATE 08 — LIFE STAGE

Where behavior is age-dependent, record:

juvenile
subadult
adult
elder

Do not use adult behavior as the default for every age.

---

## GATE 09 — SEX / REPRODUCTIVE STATE

Where relevant, distinguish:

male
female
juvenile
pregnant
lactating
breeding
non-breeding
territorial/reproductive condition

Do not introduce sex differences unless evidence supports them.

---

## GATE 10 — ENVIRONMENT

Behavior must not be detached from:

habitat
weather
season
time of day
resource availability
predator pressure
human presence

Only variables relevant to the species need to be populated.

---

## GATE 11 — INDIVIDUAL VARIATION

Species-level behavior is not identical behavior.

Allow variation from:

age
experience
health
temperament
habituation
training
social rank
resource conditions

Variation must not be used to justify arbitrary behavior.

---

## GATE 12 — ANTHROPOMORPHISM

Reject descriptions that assign human psychological concepts
without biological/behavioral evidence.

Avoid:

jealous because
sad because
guilty because
proud because
loyal because

unless the underlying behavioral interpretation is scientifically
supported and precisely defined.

---

## GATE 13 — MOVEMENT BOUNDARY

Behavior answers:

"What is the animal trying/responding to?"

Movement answers:

"How does its body physically execute that behavior?"

Do not replace behavioral evidence with animation instructions.

---

## GATE 14 — BACKGROUND ANIMAL BOUNDARY

Background animals should use population/species-level rules.

Named or continuity-critical animals may use individual-level
behavioral profiles.

Never reverse this relationship.

---

## GATE 15 — CONFLICT

If credible sources disagree:

do not silently choose one.

Record:

source A
source B
population
geography
conditions
reason for disagreement
resolution status

Possible states:

OPEN
PARTIALLY_RESOLVED
RESOLVED
BLOCKED

---

## GATE 16 — UNCERTAINTY

Allowed:

CONFIRMED
STRONGLY_SUPPORTED
SUPPORTED
LIMITED
UNCERTAIN
CONFLICTED
UNKNOWN
BLOCKED

UNKNOWN and BLOCKED cannot become production truth by omission.

---

## GATE 17 — VERSION

Any change to:

evidence
interpretation
claim
confidence
decision

requires a new version.

---

## GATE 18 — SNAPSHOT

Approved behavior must reference an evidence snapshot.

Production should consume a snapshot, not an uncontrolled live draft.

---

# CROSS-SPECIES CONTAMINATION

A species section must never contain another species' entity ID.

A claim copied from another species must be re-evaluated against
the new species' evidence.

Taxonomic similarity is not sufficient evidence.

---

# ORPHAN CONTROL

Every entity must:

1. exist in exactly one group database;
2. have an authoritative taxonomy identity;
3. appear in the coverage registry;
4. have a production state.

Anything else is ORPHANED and BLOCKED.

---

# DUPLICATION CONTROL

The same behavioral claim appearing in multiple species sections
must be independently justified.

Do not duplicate a claim merely for convenience.

Shared behavior can be defined as a GROUP_RULE only when evidence
supports treating it as a group-level rule.

---

# STATUS MODEL

DRAFT
↓
RESEARCHING
↓
EVIDENCE_COLLECTED
↓
INTERPRETED
↓
REVIEW_REQUIRED
↓
APPROVED
↓
SNAPSHOTTED
↓
PRODUCTION

Failure at any gate returns the entity to:

BLOCKED

---

# FINAL PRINCIPLE

The database must fail closed.

If the system does not know:

- what animal it is,
- what population is being described,
- where the evidence applies,
- what the evidence actually shows,
- how the evidence was interpreted,
- how confident the interpretation is,
- whether it was approved,

then it must NOT invent the missing answer.
