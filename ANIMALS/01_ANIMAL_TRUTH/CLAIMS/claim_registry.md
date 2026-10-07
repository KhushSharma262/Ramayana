# CLAIM REGISTRY

## PURPOSE

Defines every material factual claim used to establish animal identity.

A claim is a distinct proposition that can be independently supported,
challenged, approved, rejected, or revised.

## WHY CLAIMS EXIST

One animal record can contain many different claims.

Example:

- The source mentions an animal.
- The original term has a particular meaning.
- The term may refer to species X.
- Species X existed in the relevant region.
- Species X has a particular biological characteristic.

These claims must not inherit one another's evidence automatically.

## REQUIRED FIELDS

claim_id
entity_id
claim_text
claim_type
fact_class
information_state
source_ids
evidence_ids
interpretation_status
confidence
research_status
approval_status
validity_scope
decision_id

## CLAIM TYPES

textual
linguistic
identification
taxonomic
historical
geographic
zoological
ecological
individual
relationship
production
negative_evidence
other

## INFORMATION STATES

NOT_RESEARCHED
NOT_STATED
UNKNOWN
UNCERTAIN
KNOWN
APPROVED
REJECTED

## RULE

A claim cannot become APPROVED without identifiable supporting evidence
or an explicit documented reason why evidence is not applicable.

## PROHIBITION

Evidence supporting Claim A must not automatically be treated as evidence
for Claim B.

## AI RULE

AI-generated reasoning is an interpretation unless independently supported.

## CHANGE

If a claim changes, create a new change-history entry.
