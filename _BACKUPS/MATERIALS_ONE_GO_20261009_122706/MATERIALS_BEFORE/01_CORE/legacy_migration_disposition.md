# Legacy MATERIALS Migration Disposition

## Purpose
Track the disposition of recovered legacy MATERIALS documentation. Proposed mappings do not prove semantic equivalence.

## Legacy-to-current mapping

| Legacy document | Proposed destination | Required verification |
|---|---|---|
| README.md | README.md; 01_CORE/material_master.md | Authority, domain boundaries, pipeline, identity continuity |
| CORE/material_evidence_rules.md | 01_CORE/source_classification.md; 02_MATERIAL_DATABASE/03_source_and_evidence_rules.md; 07_HISTORICAL_CANONICAL/material_evidence.md | Evidence classes, alternatives, confidence, rationale |
| CORE/material_lock_system.md | 01_CORE/material_identity.md; 01_CORE/material_master.md; 10_CONTINUITY_QA/material_continuity.md | Identity lock, allowed state variation, change approval |
| CORE/material_qa.md | 04_SURFACE_STRUCTURE/surface_validation_and_qa.md; 10_CONTINUITY_QA/realism_qa.md; 11_PRODUCTION_HANDOFF/render_validation.md | Identity, physics, scale, state, continuity, artifacts, renderer checks |
| CORE/material_selection_rules.md | 01_CORE/source_classification.md; 01_CORE/material_master.md; 02_MATERIAL_DATABASE/03_source_and_evidence_rules.md | Evidence-led selection, context, construction, feasibility |
| CORE/material_state_system.md | 05_BEHAVIOR; 06_STATES; 10_CONTINUITY_QA | Identity/state separation, causal transitions, persistence |
| CORE/material_system.md | README.md; 01_CORE/material_master.md; relevant domain standards | Ownership, interfaces, combinations, light behavior, continuity |

## Mandatory rules
1. Material selection must be evidence-led and physically plausible.
2. Material identity is distinct from condition and visual appearance.
3. Approved identity must not silently drift between shots or generated outputs.
4. State changes require plausible causes and continuity.
5. Distinguish source facts, interpretations, reconstructions, and production choices.
6. QA must cover identity, physics, scale, state, continuity, artifacts, and implementation.
7. Material appearance must remain plausible under relevant lighting and environmental conditions.
8. Cross-system ownership and dependencies must remain explicit.

## Verification status
Status: NOT_VERIFIED

Compare each legacy rule with its current destination. Record PASS, PARTIAL, GAP, or NOT_APPLICABLE, along with evidence and reviewer notes. Correct gaps in the appropriate current document.

Do not overwrite current documents with recovered legacy files. Do not mark migration complete merely because destination files exist.


## MATERIALS_ONE_PASS_LEGACY_DISPOSITION_LEDGER

Each recovered legacy document must be dispositioned individually:
- LEGACY_PATH
- RECOVERY_SOURCE
- DESTINATION_PATH
- DISPOSITION: RETAINED / MERGED / SUPERSEDED / DUPLICATE / NOT_APPLICABLE / OPEN
- CONTENT_REQUIREMENTS_CARRIED_FORWARD
- CONTENT_NOT_CARRIED_FORWARD
- REASON
- REVIEWER
- REVIEW_DATE
- VERIFICATION_EVIDENCE

A script inserting a control section is not proof that all substantive legacy content has
been migrated. Do not mark a document MERGED or SUPERSEDED until its material requirements
have been compared against the destination content.
