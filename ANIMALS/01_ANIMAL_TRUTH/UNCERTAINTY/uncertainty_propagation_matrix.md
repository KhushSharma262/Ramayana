# UNCERTAINTY PROPAGATION MATRIX

Purpose:
Prevent uncertain upstream information from silently becoming certain
downstream information.

GENERAL RULE:

UPSTREAM UNCERTAINTY
→ REVIEW DEPENDENCIES
→ PROPAGATE ONLY WHERE LOGICALLY DEPENDENT
→ DO NOT PROPAGATE UNRELATED UNCERTAINTY

Examples:

IDENTIFICATION_UNCERTAINTY
may affect:
- anatomy
- proportions
- movement
- behavior
- habitat
- scale
- visual identity

IDENTIFICATION_UNCERTAINTY does NOT automatically affect:
- source date
- source existence
- translation metadata

TRANSLATION_UNCERTAINTY
may affect:
- species identification
- textual characteristics
- behavior interpretation

It does not automatically invalidate unrelated zoological evidence.

TEMPORAL_UNCERTAINTY
may affect:
- age
- population
- habitat
- historical distribution
- environmental conditions

PRODUCTION_UNCERTAINTY
must not be propagated backward into:
- canon
- source evidence
- zoological fact

Every propagated uncertainty must identify:

source_uncertainty_id:
affected_record:
dependency_reason:
affected_fields:
propagation_status:
reviewer:
version:

No automatic certainty upgrade is permitted merely because an
uncertainty disappears in a downstream production asset.
