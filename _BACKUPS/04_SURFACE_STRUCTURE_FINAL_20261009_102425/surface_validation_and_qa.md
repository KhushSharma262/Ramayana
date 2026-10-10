# SURFACE STRUCTURE VALIDATION AND QA

## Independent validation levels

1. STRUCTURAL: files, sections, IDs, and required metadata exist.
2. EVIDENCE: critical claims have traceable support and uncertainty.
3. PHYSICAL: applicable models, units, assumptions, and constraints reviewed.
4. RENDERER: implementation tested under recorded conditions.
5. SHOT: appearance, motion, scale, lighting, and continuity reviewed.
6. APPROVAL: a reviewer accepts a defined version and scope.

Passing one level does not imply passing another.

## Critical checks

### Traceability
- Stable material and feature IDs.
- Traceable source references and locations.
- Measured, derived, estimated, assumed, and artistic values distinguished.
- Conflicts and unknowns retained.

### Structure
- Plausible scale, geometry, topology, orientation, and correlation.
- Layer order and boundaries consistent.
- No unjustified repeated patterns or floating structures.
- Geometry and map representations agree.

### Optical and renderer integrity
- Renderer and model identified.
- Multiple-bounce capabilities and limitations documented.
- Energy accounting checked where applicable.
- Baked and dynamic lighting not unintentionally duplicated.
- AO, probes, and screen-space effects not mislabeled as complete GI.
- Sampling, filtering, and denoising checked.

### Temporal integrity
- Motion and LOD transitions tested.
- No unexplained feature scale changes.
- No unjustified state changes.
- Adjacent shots preserve identity and continuity.

## Severity

CRITICAL: major physical contradiction, severe energy inconsistency, wrong
material identity, or double counting that invalidates the target. Block
approval unless an explicit scoped exception is authorized.

MAJOR: unsupported critical claim, scale inconsistency, severe tiling, unstable
detail, or renderer limitation that materially undermines the target.

MINOR: localized issue with limited impact on the approved use.

UNKNOWN: insufficient evidence to classify. Unknown is not a pass.

## Acceptance record

- material_id:
- feature_record_ids:
- folder_version:
- evidence_status:
- physical_status:
- renderer_status:
- shot_status:
- failures:
- known_limitations:
- approved_exceptions:
- reviewer:
- approval_date:
- approval_scope:

## Final rule

No finite checklist proves that all possible scientific or renderer failures
have been eliminated. The standard is to make known risks traceable,
testable, and controlled. Do not claim zero loopholes because a script exits
successfully.
