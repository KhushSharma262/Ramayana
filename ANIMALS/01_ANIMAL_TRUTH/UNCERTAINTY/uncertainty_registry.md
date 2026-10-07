# UNCERTAINTY REGISTRY

## PURPOSE

Tracks uncertainty that can affect downstream animal decisions.

## REQUIRED

uncertainty_id
entity_id
uncertainty_type
description
cause
claim_ids
evidence_ids
affected_systems
restriction
status
confidence
decision_id

## TYPES

identification
translation
taxonomy
canon
historical
geographic
biological
individual
relationship
source
production

## STATUS

open
monitored
resolved
deferred
reopened

## RULE

Uncertainty must not disappear merely because production begins.

## DOWNSTREAM

Every material uncertainty must identify:

affected_systems
required_restriction

## EXAMPLE

Identification uncertain.

Affected:

02_BIOLOGY
08_VISUAL_IDENTITY
10_AI_PRODUCTION

Restriction:

Do not create species-specific locked characteristics
until identification is resolved or explicitly qualified.

## RESOLUTION

Resolution requires evidence and a decision record.
