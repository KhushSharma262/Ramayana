# SURFACE STRUCTURE VALIDATION AND QA

## 1. Validation levels

Structural validation:
Checks files, required sections, IDs, and metadata presence.

Evidence validation:
Checks whether factual claims have traceable support and whether uncertainty
is honestly recorded.

Physical validation:
Checks consistency with the selected physical models, measurements, units,
and assumptions.

Renderer validation:
Checks whether the actual implementation behaves as specified.

Shot validation:
Checks appearance, scale, lighting, motion, and continuity in the intended
production context.

These levels are not interchangeable. Passing one does not imply passing the
others.

## 2. Required QA checks

### Identity and traceability
- Material and feature IDs are stable.
- Sources and source locations are traceable.
- Measurements, estimates, assumptions, and artistic choices are distinct.
- Conflicting evidence and unresolved questions are recorded.

### Scale and geometry
- Physical units and coordinate conventions are consistent.
- Feature sizes agree across geometry, displacement, normal, and texture data.
- Silhouette and parallax requirements are met.
- Layer order and spatial relationships are plausible.
- No unexplained floating or intersecting structures.

### Statistical integrity
- Distributions have a stated rationale.
- Spatial correlations are not accidentally destroyed.
- Procedural repetition and tiling are checked.
- Seeds and versions support reproducibility.
- Variation does not contradict material identity or continuity.

### Optical and transport integrity
- The renderer and material model are identified.
- Multiple-bounce capabilities and limitations are recorded.
- Energy consistency is checked where applicable.
- Baked and dynamic lighting are not unintentionally double-counted.
- Normal maps are not misrepresented as full geometry.
- AO and reflection approximations are not misrepresented as complete GI.
- Layered and participating materials use suitable models when relevant.

### Sampling and temporal integrity
- Aliasing and filtering are checked.
- LOD transitions are tested.
- Moving highlights and camera motion are examined.
- Denoising does not erase critical features or create false structure.
- Adjacent shots preserve material identity and feature scale.

### Production integrity
- Renderer version and critical settings are recorded.
- Test scenes and references are identifiable.
- Known failures and limitations are documented.
- Approval is tied to a version and scope.
- Unresolved critical failures block approval or require an explicit exception.

## 3. Severity

CRITICAL: Physical contradiction, energy inconsistency, incorrect material
identity, severe double counting, or an artifact that invalidates the intended
shot. Block approval unless a documented exception is authorized.

MAJOR: Missing evidence for a critical claim, broken scale consistency,
significant aliasing, visible tiling, or a renderer limitation that undermines
the target appearance. Resolve or record an approved limitation.

MINOR: Localized artifact with limited effect on the intended use. Track and
resolve according to production priorities.

UNKNOWN: Insufficient evidence to classify confidently. Do not automatically
treat unknown as a pass.

## 4. Acceptance record

- material_id:
- feature_record_ids:
- folder_version:
- renderer_and_version:
- test_scene:
- test_conditions:
- source_reference:
- structural_status:
- evidence_status:
- physical_status:
- renderer_status:
- shot_status:
- failures:
- limitations:
- approved_exceptions:
- reviewer:
- approval_date:
- approval_scope:

## 5. Final rule

No finite checklist proves that every possible physical, scientific, or
renderer failure has been eliminated. The objective is to make known risks
visible, testable, traceable, and controlled. Do not claim zero loopholes
merely because a script exits successfully.
