---
file_id: BIO-CONTROL_SCHEMAS_claim_schema
domain: CONTROL
canonical_owner: CONTROL
file_role: CONTROL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# BIOLOGICAL CLAIM SCHEMA

Every important factual biological claim should be representable as:

claim_id:
species_id:
animal_id:
domain:
subject:
claim:
claim_type:
value:
unit:
context:
applicability:
source_id:
evidence_id:
evidence_grade:
confidence:
uncertainty:
status:
approved_by:
approved_date:
supersedes:
superseded_by:

## CLAIM TYPES

DIRECT_SCIENTIFIC_FACT
DERIVED_SCIENTIFIC_FACT
SPECIES_GENERALIZATION
INDIVIDUAL_OBSERVATION
INFERENCE
HISTORICAL_RECONSTRUCTION
VISUAL_RECONSTRUCTION
DIRECTORIAL_CHOICE
UNKNOWN

## NUMERIC CLAIM REQUIREMENT

If value is numeric:

unit is mandatory.

context is mandatory.

source_id is mandatory.

measurement_method is mandatory where applicable.

## STATUS

DRAFT
RESEARCH_REQUIRED
UNDER_REVIEW
APPROVED
REJECTED
SUPERSEDED


