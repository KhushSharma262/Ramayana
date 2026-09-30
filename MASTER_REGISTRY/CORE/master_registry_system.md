# MASTER REGISTRY SYSTEM

The MASTER_REGISTRY is the cross-system index and dependency-control
layer for the Ramayan production.

It does NOT replace the individual production systems.

Each domain remains authoritative for its own content.

CANON
    -> scriptural/source truth

CHARACTERS
    -> character definitions

LOCATIONS
    -> spatial definitions

ARCHITECTURE
    -> built-environment definitions

COSTUMES
    -> costume definitions

PROPS
    -> prop definitions

ANIMALS
    -> animal definitions

ENVIRONMENT
    -> environmental behavior

ACTING
    -> performance behavior

AUDIO
    -> sound/voice/music

CINEMATOGRAPHY
    -> camera language

EDITING
    -> editorial decisions

LEGAL
    -> rights/licensing

MASTER_REGISTRY
    -> indexes and connects all of them

## Core principle

DO NOT DUPLICATE SOURCE CONTENT.

The registry stores:

- IDs
- names
- references
- relationships
- versions
- states
- dependencies
- approvals
- provenance
- usage
- continuity status

## Example

CHARACTER:
RAMA_001

appears in:

EP01_SC014

which contains:

SHOT_014_007

which uses:

LOCATION_005

COSTUME_STATE_003

PROP_021

PERFORMANCE_008

AUDIO_VOICE_RAMA_004

and derives from:

CANON_EVENT_027

The registry connects these records.

It does not copy their full definitions.

## Registry rule

Every production entity should have one authoritative identity.

Aliases may exist, but duplicate identities must not.

## Status

Every major registry entity may have:

DRAFT
RESEARCHING
PROPOSED
APPROVED
LOCKED
IN_PRODUCTION
FINAL
ARCHIVED
RETIRED

## Source of truth rule

The registry points toward the domain source of truth.

It must never silently override the domain system.

## Exception

A cross-system relationship belongs in MASTER_REGISTRY
when it cannot logically belong to one individual domain.

Example:

Character + Location + Costume + Scene + Shot

is a MASTER_REGISTRY relationship.

## QA

The registry must detect:

- duplicate IDs
- duplicate identities
- missing IDs
- broken references
- orphaned assets
- missing approvals
- missing source references
- unresolved dependencies
- inconsistent versions
- continuity gaps
- illegal/restricted assets
- AI provenance gaps
