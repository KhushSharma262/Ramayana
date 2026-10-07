# SINGLE SOURCE OF TRUTH

## Purpose

Prevent multiple files, categories, databases, prompts, or production assets from becoming competing authorities for the same animal.

## Canonical Authority

The canonical animal/state record is the authoritative identity and state source.

All derived records must reference it.

Required references:

- animal_id
- canonical_state_reference
- snapshot_id
- version

## Derived Documents

Other documents may contain:

- research
- evidence
- interpretation
- rules
- indexes
- handoffs
- production instructions
- historical analysis
- category views

They must not silently create a second complete animal identity.

## Duplicate Record Rule

If two records describe the same animal:

1. compare animal_id
2. compare snapshot_id
3. compare provenance
4. identify canonical authority
5. flag conflict
6. invalidate conflicting derived state
7. propagate correction

## Category Rule

There must be no competing canonical databases for:

- royal animals
- ceremonial animals
- mounted animals
- working animals
- companion animals
- military animals

These are views/roles, not independent identity systems.

## Field Ownership

Each field must have one authoritative owner.

Duplicated fields in derived documents are read-only references unless explicitly marked otherwise.

## Conflict Rule

If two authoritative-looking records disagree:

CONFLICT = BLOCKED

until ownership and provenance are resolved.

## AI Rule

AI-generated assets are never canonical identity records.

Visual appearance cannot establish canonical identity.

## Master Rule

ONE ANIMAL
→ ONE CANONICAL IDENTITY
→ MANY CONTROLLED VIEWS

Never:

ONE ANIMAL
→ MANY COMPETING TRUTHS
