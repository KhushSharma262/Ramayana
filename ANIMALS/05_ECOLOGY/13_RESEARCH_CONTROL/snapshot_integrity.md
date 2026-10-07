# ECOLOGICAL SNAPSHOT INTEGRITY

## Purpose

A production scene must reference an exact approved ecological state.

## Snapshot ID

Format:

ECO-SNP-000001

## Snapshot Contains

- ecological claims
- source versions
- location interpretation
- temporal state
- landscape
- habitat
- vegetation
- water
- species state
- population state
- human ecology
- disturbance state
- continuity state
- approval states

## Required Metadata

snapshot_id:
created_at:
created_by:
system_version:
claim_ids:
source_ids:
parent_snapshot_id:
change_summary:
approval_state:

## Immutable Principle

Once a snapshot is used for production:

DO NOT silently overwrite it.

A changed ecological state creates a new snapshot.

## Relationship

SNAPSHOT N
→ CHANGE
→ SNAPSHOT N+1

## Rule

Production references a snapshot.

Production does not reference a mutable working draft.
