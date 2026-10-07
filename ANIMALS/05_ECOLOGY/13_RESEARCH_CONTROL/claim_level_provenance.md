# ECOLOGICAL CLAIM-LEVEL PROVENANCE

## Purpose

Every important ecological assertion must be independently traceable.

A paragraph, source, or entity is not automatically a single claim.

## Claim ID

Every production-relevant claim receives a unique ID.

Format:

ECO-CLM-000001

## Required Fields

claim_id:
entity_id:
claim_text:
claim_type:
claim_scope:
geographic_scope:
temporal_scope:
evidence_type:
source_ids:
interpretation:
confidence:
uncertainty:
dependency_ids:
decision:
approval_state:
version:
snapshot_id:

## Claim Types

DIRECT_EVIDENCE
INFERENCE
CANONICAL
HISTORICAL
PRODUCTION_DECISION
CINEMATIC_COMPOSITION
SUPERNATURAL_EXCEPTION

## Hard Rule

A PRODUCTION_DECISION cannot become evidence.

An INFERENCE cannot become DIRECT_EVIDENCE.

A CINEMATIC_COMPOSITION cannot become ecological evidence.

A SUPERNATURAL_EXCEPTION cannot become ordinary ecology.

## Rule

Every major scene-level ecological assertion must be traceable to one or more claim IDs.
