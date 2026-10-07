# LEGACY ANIMAL DATA MIGRATION STATUS

migration_scope:
- audio
- ecology
- groups
- population
- references
- scene_behavior
- species

## Inventory

total_files:
955

mapped_files:
955

unmapped_files:
0

exact_duplicate_file_records:
955

content_review_flags:
0

## Authority Boundary

Legacy files are NOT authoritative.

The numbered ANIMALS systems remain authoritative.

Legacy material may only become production-usable after:
SOURCE
→ EVIDENCE
→ CLAIM
→ DOMAIN RECONCILIATION
→ APPROVAL
→ SNAPSHOT
→ PRODUCTION

## Safety Rules

- No frozen domain file was overwritten.
- No approved snapshot was modified.
- No legacy file was deleted.
- No legacy statement was silently treated as canonical truth.
- Exact duplicates are identified by SHA256.
- Potential uncertainty/conflict terms are flagged.
- Unmapped material remains unmapped.
- AI-generated material cannot become evidence.
- Legacy source provenance is preserved.

## Destination Classes

audio:
11_AUDIO

ecology:
05_ECOLOGY

population:
05_ECOLOGY

scene_behavior:
03_BEHAVIOR + 20_EPISODE_INTEGRATION

species:
01_BIOLOGY + 15_RESEARCH

references:
15_RESEARCH

groups:
05_ECOLOGY + 03_BEHAVIOR

## Current State

LEGACY_INTAKE_COMPLETE

AUTHORITATIVE_MIGRATION:
NOT YET AUTHORIZED

PRODUCTION_USE:
BLOCKED UNTIL RECONCILED

