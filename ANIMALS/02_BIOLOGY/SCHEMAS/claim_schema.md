# CLAIM SCHEMA

Every researched biological claim should contain:

claim_id:
species_id:
domain:
field:
claim_text:

status:
RESEARCH_REQUIRED | REVIEW_REQUIRED | APPROVED | CONFLICTED | UNKNOWN | NOT_APPLICABLE

source_ids:
evidence_ids:

population:
sex:
age:
life_context:
geographic_scope:
sample_size:

measurement_method:
measurement_unit:
measurement_conditions:

confidence:
high | medium | low | unknown

uncertainty:

applicability:

supersedes:
superseded_by:

review_status:
reviewer:
review_date:

## Rule

A claim without evidence is not a researched claim.
