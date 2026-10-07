# CROSS RECORD CONFLICTS

## PURPOSE

Detects contradictions between individually valid records.

## EXAMPLES

Two source mentions mapped to incompatible species.

Two individuals assigned to impossible relationships.

Two approved records using incompatible taxonomy.

A species record marked approved while its source decision remains unresolved.

## REQUIRED

cross_conflict_id
entity_a
entity_b
conflict_type
description
source_ids
claim_ids
impact
resolution_status
decision_id

## STATUS

detected
under_review
resolved
deferred

## RULE

Approval of Record A does not automatically make Record B compatible.

Cross-record consistency must be checked.

## RESOLUTION

Never silently rewrite either record.

Create a conflict and resolve through a decision.

## RELEASE BLOCK

Critical unresolved conflicts may block downstream production approval.
