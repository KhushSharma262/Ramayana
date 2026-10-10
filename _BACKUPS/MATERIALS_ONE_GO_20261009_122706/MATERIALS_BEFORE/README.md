# MATERIALS

MATERIALS is the authoritative physical-material system for the production.

It defines material identity, composition, physical properties, formation and
processing history, surface structure, state, interactions, evidence,
uncertainty, continuity, and implementation requirements.

It does not independently define costume design, architectural layout,
prop identity, environmental simulation, camera behavior, final grading,
or compositing. Those systems reference approved material records.

## Material pipeline

SOURCE AND RESEARCH
-> MATERIAL IDENTITY
-> PHYSICAL PROPERTIES
-> STRUCTURE AND SURFACE
-> MATERIAL STATE
-> OBJECT / COSTUME / ARCHITECTURE
-> DIGITAL IMPLEMENTATION
-> LIGHT TRANSPORT
-> COMPOSITING
-> FINAL IMAGE

## Authority and evidence

Distinguish direct source evidence, derived interpretation, traditional
interpretation, historical reconstruction, scientific fact, engineering
reference, visual reconstruction, production choice, and unknown information.
Do not represent reconstruction as canonical or measured fact.

## Identity and state

Material identity is separate from temporary condition. Dirt, moisture, wear,
damage, weathering, heating, and repair require plausible causes and continuity.
An approved material must not silently change identity between shots.

## Data discipline

Use stable IDs and versions. Record SI units where applicable. Distinguish
UNKNOWN from zero and NOT_APPLICABLE. Do not invent precision, measurements,
historical use, physical properties, or evidence.

## Production acceptance

Documentation does not by itself establish a validated material. Release
requires applicable evidence, approved records, asset assignments, physical
and visual checks, renderer validation, continuity review, and recorded approval.

See `01_CORE`, `02_MATERIAL_DATABASE`, `03_PHYSICS`, `04_SURFACE_STRUCTURE`,
and the behavior, state, historical, interaction, AI-production, continuity,
handoff, and registry folders for domain-specific requirements.

---

## Legacy migration controls — System authority and domain boundaries

<!-- MIGRATION-CONTROL-ID: LEGACY_SYSTEM_AUTHORITY -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- MATERIALS owns physical material identity, composition where known, physical properties, surface behavior, material condition, interactions, and continuity requirements.
- MATERIALS does not independently own costume design, architectural layout, prop identity, environment simulation, camera behavior, final color grading, or compositing.
- An approved material must remain identifiable across shots, lighting changes, camera angles, scenes, and AI-generated outputs.
- Material selection must be evidence-led and physically plausible rather than chosen solely for attractive appearance.
- Documentation, production reconstruction, and a generated image do not independently prove canonical or historical truth.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.

---

## Legacy requirement: COLOR domain boundary

<!-- MIGRATION-CONTROL-ID: LEGACY_COLOR_DOMAIN_BOUNDARY -->

- COLOR governs the production's color-control decisions. MATERIALS supplies the material identity and physical surface behavior that color decisions must not silently redefine.
- A grading or lighting change may alter observed appearance without authorizing a change to the approved base material.

**Verification status:** NOT_VERIFIED. Confirm against the legacy source and production evidence before sign-off.


## MATERIALS_ONE_PASS_DOMAIN_CONTRACT

### Authority
MATERIALS is the source of truth for physical material identity, composition where known,
physical properties, construction and surface structure, surface behavior, material state,
light interaction, evidence, uncertainty, and material continuity.

### Boundaries
- COSTUMES owns garment design and costume assembly.
- ARCHITECTURE owns building design and spatial layout.
- PROPS owns object identity and object-level design.
- ENVIRONMENT owns environmental simulation and world conditions.
- CAMERA owns camera and lens decisions.
- LIGHTING owns lighting design and implementation.
- COLOR owns color-control and grading decisions.
- 3D owns implementation in a renderer or scene.
- COMPOSITING owns final image integration.

Those systems must reference stable material IDs when an identified material is used.
A downstream department may not silently redefine the material identity.

### Appearance versus identity
Lighting, exposure, white balance, grading, moisture, dust, damage, and viewing angle can
change observed appearance. They do not by themselves authorize changing the underlying
material identity.

### Production pipeline
Source and research -> identity decision -> physical properties -> surface structure ->
surface behavior -> material state -> asset assignment -> renderer implementation ->
controlled validation -> continuity review -> final image integration.

### Approval rule
A non-empty file is not automatically a verified material record. Unknown historical
identity remains UNKNOWN, PROVISIONAL, or MULTIPLE_POSSIBILITIES until supported evidence
or an explicit production reconstruction decision resolves it.


## MATERIALS_ONE_PASS_COLOR_BOUNDARY

MATERIALS defines the physical identity and behavior of the surface. COLOR defines
color-control and grading decisions. A color grade, exposure change, or lighting change
may alter observed pixel values without changing the material identity. Base-color values
and measured appearance must state their color space, illumination, viewing conditions,
and provenance where those affect interpretation.


## MATERIALS_ONE_PASS_COMPLETION_CRITERIA

MATERIALS is production-ready only when:
1. control policies and domain boundaries are internally consistent;
2. material-specific records are distinguishable from family and technique guidance;
3. every production-used identity has a stable ID and an explicit evidence/confidence status;
4. unresolved historical claims remain explicit;
5. actual asset assignments link assets to material records;
6. renderer tests have reproducible results and evidence;
7. state changes and cross-shot continuity are tracked;
8. migration omissions and decisions are recorded;
9. critical contradictions are resolved or formally blocked;
10. a final audit verifies cross-references and required fields.

The presence of this checklist does not mean these criteria have already been satisfied.
