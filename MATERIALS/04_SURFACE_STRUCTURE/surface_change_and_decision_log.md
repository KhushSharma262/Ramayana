# SURFACE STRUCTURE CHANGE AND DECISION LOG

## Decision record template

- decision_id:
- date:
- affected_material_ids:
- affected_feature_ids:
- decision:
- reason:
- evidence:
- alternatives_considered:
- uncertainty:
- physical_consequences:
- renderer_consequences:
- continuity_consequences:
- validation_required:
- approval_authority:
- status:
- supersedes:
- linked_tests:

## Change classes

EVIDENCE_CHANGE: new source or measurement changes the supported claim.
PHYSICAL_CHANGE: physical dimensions, structure, or model assumptions change.
REPRESENTATION_CHANGE: geometry, texture, shader, or LOD changes.
RENDERER_CHANGE: implementation or version changes.
ART_DIRECTION_CHANGE: intentional departure from the evidence-based reconstruction.
CORRECTION: an error is repaired.

## Rules

Do not silently overwrite an approved decision. Preserve its history and record
what supersedes it.

An artistic decision may be legitimate but must not be misrepresented as a
scientific fact or canonical certainty.

Re-test affected outputs whenever a change may invalidate prior results.
