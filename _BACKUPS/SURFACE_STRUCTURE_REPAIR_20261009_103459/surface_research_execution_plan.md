# SURFACE STRUCTURE RESEARCH EXECUTION PLAN

## Current verified state
- Structural inventory and required-content checks previously passed.
- Five original research tasks existed without assigned materials or closure evidence.
- Six renderer tests were recorded as NOT RUN.
- A Blender pipeline document was found but was empty. Blender is therefore a candidate, not a confirmed active renderer.
- This plan does not certify scientific correctness or production readiness.

## Order of work

### 1. Establish the real material scope
For each scene/asset, record the material ID, variant, source asset, intended state,
and owning folder. Do not assume that every broad database category is used in
the film. Replace family placeholders with permanent material IDs only after
the actual identities are established.

### 2. Resolve identity before microstructure
For each selected material, distinguish:
- canonical mention or description;
- traditional interpretation;
- historical/technological reconstruction;
- scientific material identity;
- artistic/production decision.

Do not infer a microscopic structure from a visual adjective in a text.

### 3. Build feature records
For each production-critical feature, record:
- stable feature ID and material/variant ID;
- dimensions and units;
- source and exact supporting location;
- measurement method and conditions;
- measured/derived/estimated/assumed/artistic label;
- uncertainty and applicability limits;
- spatial distribution and correlation;
- geometry/displacement/normal/roughness or layered representation;
- interaction/state dependencies;
- validation method and result.

### 4. Renderer selection and validation
First confirm the active application, version, render engine, color management,
and actual scene/project file. Do not infer these from folder names.

For each applicable renderer test, record scene version, material ID, camera,
lighting, sampling, denoising, representation, expected result, measured result,
artifacts, and evidence path. Keep status NOT RUN until execution evidence exists.

Minimum test families:
- controlled diffuse response;
- reflective response at changing angles;
- concave-scene interreflection;
- microdetail filtering and LOD stability;
- baked/dynamic illumination accounting;
- temporal and cross-shot continuity.

Add geometry/parallax, UV seams, displacement/normal overlap, and layered or
transmissive tests where relevant to the selected materials.

### 5. Production acceptance
Review intended shot distances, lighting, camera movement, motion, filtering,
LOD, continuity, and visible artifacts. Record approved scope, limitations,
reviewer and date. A pass applies only to the tested conditions.

## Release rule
Documentation completion is not renderer validation. Keep the folder blocked
from full production approval while critical evidence or required tests are open.
Never fabricate measurements, test outputs, source confirmation, or approvals.
