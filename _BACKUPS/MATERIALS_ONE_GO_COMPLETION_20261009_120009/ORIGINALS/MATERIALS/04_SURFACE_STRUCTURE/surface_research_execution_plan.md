# Surface Research Execution Plan — Repaired

## Current disposition
- Documentation fields and test criteria have been normalized.
- The 13 research tasks remain `OPEN`.
- The six renderer tests remain `OPEN` and `NOT RUN`.
- No material-specific physical values have been invented.
- No renderer, version, asset, scene, owner, reviewer, or measurement result is assumed.

## Work order

### Gate 1 — Build the asset-to-material assignment
For each actual prop, costume, architecture element, terrain element, and residue used in the film, record:
`asset_id`, `asset_name`, `scene_id`, `shot_ids`, `material_slot`, `material_id`, `material_identity_status`, `historical_canonical_reference`, `surface_state`, `scale_of_interest`, `owner`.
Do not promote a family placeholder to a specific identity without evidence. Use the database status vocabulary: `VERIFIED_IDENTITY`, `PROVISIONAL_IDENTITY`, `FAMILY_LEVEL_ONLY`, `MULTIPLE_POSSIBILITIES`, `UNKNOWN`, `NOT_APPLICABLE`.

### Gate 2 — Create material-specific records
Each record should include permanent ID, preferred name, controlled aliases/translations, family, composition/identity evidence, variants, manufacturing/processing, surface state, evidence links, confidence/uncertainty, validity scope, and explicit unknowns. Separate identity claims from physical-property claims and historical-use claims.

### Gate 3 — Research surface structure
For each assigned material, define the feature and target scale before selecting a measurement method:
- macro: silhouette, deep cracks, large chips, major grain/cloth folds;
- meso: pores, grain bundles, weave/yarn, tool marks, corrosion patches;
- micro: roughness and fine relief supported by measurement/reference;
- sub-micro: only model if the chosen renderer/model and evidence justify it.
These scale labels are project organization, not universal fixed size ranges. Set numeric scale bands per asset/shot where needed.

Capture units, sampling area, instrument or source method, measurement locations, sample count, uncertainty, surface preparation, moisture/aging/finish state, and applicability. If direct measurements are unavailable, state whether a traceable reference or analogy is used. If neither is available, label the digital choice `ARTISTIC_RECONSTRUCTION`.

### Gate 4 — Choose representation by projected size
- Use geometry for silhouette-changing or clearly resolved features.
- Use displacement only when mesh density, displacement method and render scale support it.
- Use normal/bump detail for smaller unresolved relief, with filtering/LOD checks.
- Do not use ambient occlusion as a substitute for full indirect illumination.
- Do not double-count baked lighting with dynamic lighting.
- Do not assume a normal map changes silhouette or true geometry.
- Keep texture coordinates, scale, orientation, seeds and material versions stable across shots.

### Gate 5 — Confirm renderer before test execution
Populate renderer name and exact version from the actual project. Record render engine/integrator, color management, output resolution, sample count, denoiser, geometry/displacement settings, shader node/model, lighting setup, and scene/asset version. The prior note that a Blender pipeline document was empty means Blender is not confirmed by current evidence.

### Gate 6 — Execute and record renderer tests
For each SRT test:
1. Assign an actual material, feature, scene and renderer/version.
2. Define reference/baseline and acceptance threshold before rendering.
3. Save input scene, settings, rendered outputs, comparison method, and results.
4. Record measured outcome and evidence location.
5. Mark `PASS` only when all required criteria are met; use `FAIL`, `INCONCLUSIVE`, or `NOT RUN` otherwise.
6. Reviewer records decision and date. A documentation-only change cannot turn a test into a pass.

### Gate 7 — Release approval
Release is material/scene-specific, not a global claim that every material is validated. Required evidence: identity status, source trail, feature values and uncertainty or explicit reconstruction label, approved digital representation, executed tests where applicable, review, and sign-off.

## Queue triage
- SRQ-0001 to SRQ-0005: shared methodology tasks. Close only with referenced material records or a documented decision that a generic method applies; do not use them to imply all families are resolved.
- SRQ-0006 to SRQ-0013: family triage tasks. Convert to material-specific child tasks after the asset-to-material assignment exists.
- SRQ-0012 must be split into distinct records for leather/hide, bone, horn, and shell/nacre if those identities occur in production.
- SRQ-0013 must distinguish ash, soot, pigment, stain, and adhered coating when actually used.

## Completion checklist
- [ ] Asset-to-material mapping exists for materials in selected production shots.
- [ ] Each identity claim has a traceable source and status.
- [ ] Each physical parameter has method, units, state and uncertainty or an explicit reconstruction label.
- [ ] Material families that combine distinct substances have been split where needed.
- [ ] Renderer and exact version are confirmed from project evidence.
- [ ] Each applicable test has actual results and evidence location.
- [ ] Reviewer and release decision are recorded.
