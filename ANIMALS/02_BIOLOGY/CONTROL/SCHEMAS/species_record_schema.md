---
file_id: BIO-CONTROL_SCHEMAS_species_record_schema
domain: CONTROL
canonical_owner: CONTROL
file_role: CONTROL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# SPECIES RECORD SCHEMA

species_id:
common_name:
scientific_name:
taxonomic_status:
identification_confidence:

## REQUIRED BIOLOGY DOMAINS

ANATOMY
AGE
SEX
PHYSIOLOGY
HEALTH
NUTRITION
REST_AND_SLEEP
SENSES
REPRODUCTION
NATURAL_VARIATION
HISTORICAL_BIOLOGY

## EACH DOMAIN MUST HAVE

status:
evidence:
sources:
confidence:
uncertainty:
limitations:

## VALID STATUS VALUES

NOT_STARTED
RESEARCH_REQUIRED
PARTIAL
RESEARCHED
REVIEWED
APPROVED
BLOCKED

## FINAL APPROVAL REQUIREMENT

A species cannot be APPROVED when any production-relevant domain is:

NOT_STARTED
RESEARCH_REQUIRED
PARTIAL
BLOCKED

unless an explicit approved exception exists.


