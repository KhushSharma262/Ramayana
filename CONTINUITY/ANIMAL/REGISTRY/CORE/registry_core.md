# ANIMAL REGISTRY CORE

## Purpose

The Animal Registry is the indexing and discovery layer for the entire
ANIMAL continuity architecture.

It tells the system:

WHAT EXISTS
WHERE IT EXISTS
WHAT IT IS
WHICH DOMAIN OWNS IT
WHICH RECORD IS AUTHORITATIVE
WHAT IT DEPENDS ON
WHAT DEPENDS ON IT
WHICH VERSION IS CURRENT
WHICH STATE IS APPROVED
WHICH OUTPUTS ARE ASSOCIATED

## Critical Rule

REGISTRY ≠ SOURCE OF TRUTH.

The Registry points to authoritative records.

It must never silently become a duplicate source of truth.

## Master Model

ENTITY
→ IDENTITY
→ AUTHORITATIVE RECORD
→ CURRENT STATE
→ DEPENDENCIES
→ VERSIONS
→ REFERENCES
→ QA
→ APPROVAL
→ LOCK
→ AUDIT

## Global Authority

The global CONTINUITY system and domain-specific systems remain authoritative.

Registry is an index.
