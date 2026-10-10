# MATERIAL MASTER

## 1. PURPOSE

MATERIALS is the authoritative system for the physical truth of materials
used by the Ramayana production.

Its purpose is not to create attractive textures.

Its purpose is to establish what a material physically is, how it behaves,
how it changes, how it interacts with its environment, and how that truth
must be preserved throughout production.

The final visual result must be explainable as the visible consequence of
a physically plausible material existing in the production world.

---

# 2. FUNDAMENTAL PRINCIPLE

REALISM > VISUAL CONVENIENCE.

A material must not be accepted merely because:

- it looks realistic
- it looks cinematic
- an AI model produced it convincingly
- a shader makes it attractive
- a texture looks detailed

The system must ask:

"If this material physically existed in front of a real camera, would its
appearance and behavior be physically plausible?"

---

# 3. MATERIAL CAUSALITY

Whenever a material response is represented, the preferred chain is:

MATERIAL IDENTITY
→ COMPOSITION
→ STRUCTURE
→ PHYSICAL PROPERTIES
→ ENVIRONMENT / FORCE / CONTACT
→ PHYSICAL PROCESS
→ PROPERTY CHANGE
→ STATE CHANGE
→ SURFACE CHANGE
→ OPTICAL CHANGE
→ VISIBLE RESULT

The final appearance must not contradict the causal chain.

Example:

RAIN
→ WATER CONTACT
→ WETTING
→ ABSORPTION / BEADING / RUNOFF
→ SURFACE CONDITION CHANGE
→ OPTICAL RESPONSE CHANGE
→ VISIBLE WET MATERIAL

Not:

"RAIN → MAKE MATERIAL DARKER AND SHINIER."

---

# 4. MATERIAL SYSTEM OWNERSHIP

The MATERIALS system owns:

- material identity
- material composition
- material structure
- material physical properties
- material surface properties
- material optical properties
- material mechanical properties
- material thermal properties
- material environmental response
- material state
- material transformation
- material interaction constraints
- material continuity truth

Other systems consume this truth.

MATERIALS does not become the authority for:

- character identity
- costume design
- prop identity
- architecture
- modeling
- cinematography
- animation
- lighting design
- VFX design
- audio design
- final rendering technique

---

# 5. PROPERTY OWNERSHIP

The following ownership is mandatory.

02_MATERIAL_DATABASE:
WHAT the material is.

03_PHYSICS:
HOW the material physically behaves and the numerical/physical model.

04_SURFACE_STRUCTURE:
WHAT physical structures exist at visible scales.

05_BEHAVIOR:
HOW the material responds to external conditions and interactions.

06_STATES:
WHAT physical condition the material is currently in and how it transitions.

07_HISTORICAL_CANONICAL:
WHY the material is historically/canonically appropriate.

08_INTERACTION:
HOW material interactions are represented at system boundaries.

09_AI_PRODUCTION:
HOW approved material truth is communicated to AI generation.

10_CONTINUITY_QA:
WHETHER material truth remains correct over production.

11_PRODUCTION_HANDOFF:
HOW approved material truth is transferred to downstream tools.

12_REGISTRY:
WHICH material versions and instances are actually used.

No file may silently become the owner of another file's domain.

---

# 6. BEHAVIOR VS STATE

BEHAVIOR:
The physical response caused by an external condition, force, interaction,
or process.

STATE:
The resulting physical condition at a particular point in time.

Example:

WATER CONTACT
→ wetting behavior
→ wet state

Example:

IMPACT
→ deformation/fracture behavior
→ damaged state

A behavior is not a state.

A state is not merely a visual effect.

---

# 7. STATE VS TRANSFORMATION

A state change does not necessarily create a new material.

Examples:

wood + water → wet wood
iron + oxidation → corroded iron
cloth + dirt → dirty cloth

A material transformation occurs when the physical substance itself changes.

Examples:

wood → char + combustion products
clay → fired ceramic
metal → molten metal → solidified metal

Transformations may alter composition, mass, structure, or material identity.

They must not be represented as simple cosmetic state switches.

---

# 8. REAL PHYSICS VS SIMULATION APPROXIMATION

The system must distinguish:

REAL-WORLD PHYSICAL TRUTH

from:

SIMULATION MODEL

from:

PRODUCTION APPROXIMATION

from:

VISUAL APPROXIMATION

A simulation approximation may be necessary because of:

- AI limitations
- computational limitations
- zero-budget constraints
- unavailable simulation tools

However, the approximation must never be presented as the physical truth.

If an approximation is used, record:

- real-world expected behavior
- approximation used
- reason
- expected error
- visual/physical consequence
- approval status

---

# 9. CONDITIONS AND VALIDITY

Material properties are not necessarily universal.

A property may depend on:

- temperature
- moisture
- pressure
- strain
- strain rate
- grain direction
- fiber direction
- surface condition
- age
- manufacturing method
- density
- composition
- environmental exposure

Therefore:

PROPERTY
+
CONDITIONS
=
VALIDITY ENVELOPE

Values must not be applied outside their known or assumed validity envelope
without explicit justification.

---

# 10. CAUSAL STATE TRANSITIONS

Every meaningful state transition must have a physically plausible cause.

Examples:

dry → wet
requires water exposure

wet → dry
requires evaporation/drainage/drying

intact → fractured
requires a plausible stress/impact/failure mechanism

cool → hot
requires heat transfer

pristine → worn
requires exposure/use

wood → charred
requires thermal/combustion conditions

AI must not invent state transitions without causal support.

---

# 11. MATERIAL CONSERVATION / TRANSFORMATION

Where physically relevant, material transformations must account for:

- mass
- volume
- composition
- energy
- by-products
- displaced material
- environmental interaction

The production does not need to simulate every molecule.

However, the visible result must not imply physically impossible conservation
or transformation.

---

# 12. PHYSICAL PROPERTY PROVENANCE

Every important physical value must have provenance.

At minimum:

PROPERTY
VALUE
UNIT
CONDITIONS
VALUE TYPE
SOURCE
SOURCE CLASSIFICATION
CONFIDENCE

VALUE TYPE may include:

measured
literature
calculated
derived
estimated
assumed
simulation_parameter

A scientific source does not automatically mean the exact value is directly
measured for the exact production material.

---

# 13. UNCERTAINTY PROPAGATION

Uncertainty must propagate downstream.

Example:

uncertain composition
→ uncertain density
→ approximate physics model
→ approximate simulation
→ production limitation

Downstream systems must not silently convert uncertainty into certainty.

---

# 14. APPROVAL LAYERS

Approval is separated into:

RESEARCH APPROVAL
PHYSICAL MODEL APPROVAL
MATERIAL DEFINITION APPROVAL
VISUAL REPRESENTATION APPROVAL
PRODUCTION APPROVAL

Approval of one layer does not automatically approve all other layers.

A visually approved material can still have unresolved physical uncertainty.

---

# 15. MATERIAL CONTINUITY

Approved material truth must remain consistent across:

- frames
- shots
- scenes
- sequences
- episodes
- assets
- locations
- characters
- props

A change requires a physical or production cause.

---

# 16. VERSION DEPENDENCY

Every downstream dependency must be traceable.

Example:

MATERIAL v1.0
→ PHYSICS MODEL v1.0
→ ASSET v1.2
→ SHOT 034
→ RENDER v4

If MATERIAL changes:

affected physics
→ affected assets
→ affected shots
→ affected renders

must be identified.

Old renders must never silently remain labelled as using the current
material version.

---

# 17. CHANGE CONTROL

Any approved material change follows:

CHANGE REQUEST
→ REASON
→ IMPACT ANALYSIS
→ AFFECTED MATERIALS
→ AFFECTED PHYSICS
→ AFFECTED ASSETS
→ AFFECTED SHOTS
→ REBUILD / REGENERATION
→ QA
→ APPROVAL
→ NEW VERSION
→ RELOCK

---

# 18. REAL-WORLD VALIDATION

A material response should be tested conceptually against real-world behavior.

Ask:

Would this happen?

Would it happen at this magnitude?

Would it happen at this speed?

Would it happen under these conditions?

Would the deformation be possible?

Would the reflection/transmission be plausible?

Would the material have enough mass?

Would the friction be plausible?

Would the damage have a plausible cause?

Would the state transition require a condition that is actually present?

---

# 19. FAILURE SEVERITY

Material failures are classified:

CRITICAL:
Breaks physical identity or causes obviously impossible behavior.

MAJOR:
Substantially violates physical behavior or continuity.

MODERATE:
Meaningful physical inconsistency with limited scope.

MINOR:
Small physically relevant deviation.

COSMETIC:
Does not materially affect physical interpretation.

CRITICAL and MAJOR failures block approval.

---

# 20. UNKNOWN INFORMATION

Allowed:

unknown
not_specified
uncertain
requires_research
multiple_possibilities
requires_user_decision

Unknown must never be silently replaced with invented certainty.

---

# 21. USER AUTHORITY

The user is the final authority for unresolved creative decisions.

AI may:

- research
- organize
- compare
- calculate
- model
- simulate
- detect conflicts
- identify missing information
- propose alternatives

AI may not silently:

- alter approved material identity
- alter approved physics
- alter canonical interpretation
- alter historical assumptions
- alter continuity
- alter approved production decisions

---

# 22. CORE BOUNDARY

This file establishes system-wide material rules.

It does not contain detailed individual material facts.

Individual material information belongs in the appropriate downstream files.

No Core file should become a material encyclopedia.

---

# 23. NON-NEGOTIABLE RULE

A visually convincing material that behaves incorrectly is NOT realistic.

A physically correct material that has an imperfect production representation may
require improvement, but its physical truth must remain the target.

The ultimate objective is:

A believable physical world, not an AI-looking approximation of one.

---

## Legacy migration controls — Material system invariants

<!-- MIGRATION-CONTROL-ID: LEGACY_MATERIAL_SYSTEM -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- Material identity, physical properties, surface behavior, state, interactions, implementation, evidence, and continuity must remain traceable.
- Use stable material IDs and version identifiers; preserve superseded decisions and their downstream dependencies.
- Material behavior must remain plausible under relevant illumination, environment, and contact conditions.
- Domain ownership and handoffs must be explicit between MATERIALS and costume, architecture, props, environment, 3D, lighting, VFX, and compositing.
- A material record is not production-approved merely because its documentation exists.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.


## MATERIALS_ONE_PASS_MASTER_GOVERNANCE

The master document governs record structure and cross-domain consistency; it does not
substitute for material-specific evidence.

### Approval states
- DRAFT: record incomplete.
- OPEN: question remains unresolved.
- UNDER_RESEARCH: evidence gathering is active.
- PROVISIONAL: explicit temporary or reconstructed choice.
- APPROVED: reviewed for its documented scope with traceable evidence or an explicitly
  authorized production decision.
- BLOCKED: a critical contradiction or missing dependency prevents use.
- DEPRECATED: replaced by a documented successor.
- REJECTED: examined and rejected with rationale.

A status change must record who changed it, when, why, and what evidence supports it.


## MATERIALS_ONE_PASS_ASSET_HANDOFF

An asset assignment must refer to an actual asset and an existing material record.
Required information includes stable asset ID, asset path, scene/context, material ID,
application scope, state if relevant, evidence or decision record, confidence, status,
owner, reviewer, and version.

If the project asset inventory is unavailable, leave the assignment register empty and
record the dependency. Never create fictional assets or assume a material from a filename
or visual guess alone.


## MATERIALS_ONE_PASS_RENDERER_TEST_PROTOCOL

For each test record the test ID, date, renderer/version, execution context, material and
feature IDs, scene/version, hypothesis, physical mechanism, reference data, lighting,
camera, color management, sampling, denoising, representation settings, expected result,
measured result, quantitative metrics, observed artifacts, uncertainty, outcome, reviewer,
evidence location, linked issue, and approved scope.

Do not mark a test PASS without a reproducible execution and stored evidence. Record
INCONCLUSIVE when evidence does not decide the hypothesis. A result is scoped to the
conditions actually tested.

## Migrated legacy controls — system scope and implementation

This system governs physical material identity, composition where known, surface properties, and material behavior. It does not independently define costume design, architectural layout, an object's complete design, environment simulation, camera choices, or grading and compositing. Those subjects may provide constraints but remain outside this material system unless another governing document explicitly assigns them here.

An approved material must remain recognizable across shots, lighting conditions, environments, and AI generations unless a documented physical or narrative cause justifies a change. Lighting and exposure changes alone must not be mistaken for a change of base material.

A generic shader is not proof of correct material representation. Shader selection and configuration must support the identified material's expected surface response. Validate relevant properties such as roughness, reflectance, transmission, and subsurface behavior only when applicable to the material. Technical settings are implementation choices, not evidence that a material is scripturally or historically established.

Record the distinction between:
- established material identity;
- observed or sourced properties;
- technical reconstruction and renderer approximations;
- explicit directorial choices;
- unresolved questions requiring research or validation.

Do not claim renderer validation, production approval, or source confirmation unless the corresponding test or evidence record exists. Keep unresolved scope decisions and implementation limitations explicit.
