# EVIDENCE AND CLAIM PROVENANCE

## PURPOSE

Prevent evidence, interpretation, inference, and production decisions from becoming indistinguishable.

## REQUIRED CHAIN

SOURCE
→ SOURCE_EXCERPT
→ EVIDENCE_RECORD
→ CLAIM
→ INTERPRETATION
→ DECISION
→ APPROVAL
→ SNAPSHOT

No stage may be silently skipped.

## EVIDENCE TYPES

- DIRECT_OBSERVATION
- PRIMARY_DOCUMENT
- PRIMARY_SCIENTIFIC_SOURCE
- GOVERNMENT_DATA
- ARCHAEOLOGICAL_EVIDENCE
- PALEOECOLOGICAL_EVIDENCE
- SECONDARY_RESEARCH
- EXPERT_INTERPRETATION
- CANONICAL_TEXT
- LITERARY_DESCRIPTION
- INFERENCE
- HYPOTHESIS

## CLAIM TYPES

- FACT
- ESTIMATE
- INFERENCE
- INTERPRETATION
- CANONICAL_STATEMENT
- PRODUCTION_DECISION

## PROHIBITED TRANSFORMATION

INFERENCE → FACT

INTERPRETATION → FACT

PRODUCTION_DECISION → EVIDENCE

AI_OUTPUT → EVIDENCE

POETIC_DESCRIPTION → NUMERICAL_ECOLOGICAL_MEASUREMENT

None are allowed.

## CLAIM GRANULARITY

Every claim must be narrow enough that its evidence actually supports it.

Bad:

"The Ganga region had dense wildlife."

Better:

"Source X supports occurrence of taxon Y in geographic area Z during temporal condition T."

## CONFIDENCE

Allowed:

- VERY_HIGH
- HIGH
- MODERATE
- LOW
- VERY_LOW
- UNKNOWN

Confidence must be justified.

## EVIDENCE COVERAGE

A research record is incomplete if required ecological fields have no supporting evidence.

Required-field coverage must be explicitly recorded.

## SOURCE CIRCULARITY

If:

A cites B
and B cites A

they are NOT independent confirmations.

Citation dependency must be recorded.

## INDEPENDENCE

Repeated secondary sources derived from one original source count as one evidence lineage.

## NEGATIVE EVIDENCE

"Not observed" ≠ "absent".

ABSENT requires explicit evidentiary justification.

## UNKNOWN

UNKNOWN means insufficient evidence.

UNKNOWN must never be converted into ABSENT merely to complete a scene.

## FINAL RULE

If evidence does not support the precision requested by production:

REDUCE CLAIM PRECISION
or
BLOCK PRODUCTION.

Never invent precision.
