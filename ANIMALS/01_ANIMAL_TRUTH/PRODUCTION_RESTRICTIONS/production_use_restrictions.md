# PRODUCTION USE RESTRICTIONS

Purpose:
Prevent uncertain or unapproved animal information from silently entering production.

Every important animal record should resolve to one of:

PRODUCTION_ALLOWED
PRODUCTION_ALLOWED_WITH_QUALIFICATION
REFERENCE_ONLY
RESEARCH_REQUIRED
BLOCKED

Examples:

APPROVED + IDENTITY_LOCKED
→ PRODUCTION_ALLOWED

UNCERTAIN SPECIES IDENTIFICATION
→ PRODUCTION_ALLOWED_WITH_QUALIFICATION or RESEARCH_REQUIRED

CONTRADICTED CLAIM
→ BLOCKED until resolved

UNRESEARCHED FACT
→ RESEARCH_REQUIRED

AI-generated speculation
→ REFERENCE_ONLY unless independently supported

Restrictions may apply separately to:

- character design
- animal appearance
- scale
- behavior
- movement
- interaction
- dialogue/audio
- scene blocking
- shot generation
- continuity

One approved attribute does not automatically approve every downstream attribute.
