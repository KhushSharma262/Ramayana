# MATERIAL IDENTITY

## PURPOSE

Defines what establishes the identity of a material.

Identity answers:

"WHAT IS THIS SUBSTANCE?"

It does not answer how it behaves, where it is used, or how it is rendered.

---

## 1. IDENTITY COMPONENTS

A material identity may include:

- material_id
- material_name
- material_type
- material_category
- natural_or_manufactured
- primary_composition
- secondary_components
- additives
- binder
- coating
- defining_structure
- origin
- preparation/manufacturing method
- identity confidence
- identity evidence

Only applicable fields are required.

---

## 2. MATERIAL ID

Permanent identifier:

MAT-000001

MAT-000002

etc.

IDs must:

- be unique
- remain stable
- not encode mutable properties
- not encode episode
- not encode character
- not encode location
- not encode version
- not encode physical state

---

## 3. MATERIAL NAME

Names identify substances, not visual impressions.

Valid:

Sal wood
Copper
Cotton textile
Fired clay

Invalid identity names:

beautiful brown wood
ancient-looking metal
shiny stone
luxurious cloth

---

## 4. IDENTITY VS CONDITION

Condition does not automatically create a new material.

wet wood = wood + wet state

dirty stone = stone + dirt condition

rusted iron = iron + corrosion process/state

burned wood requires examination of whether the underlying substance has
actually transformed.

---

## 5. IDENTITY VS OBJECT

Material:

Copper

Object:

Copper vessel

The object belongs to PROPS or another object system.

MATERIALS defines copper's physical truth.

---

## 6. IDENTITY VS APPEARANCE

Color, roughness, gloss, brightness, beauty, age-looking appearance, or
cinematic appearance cannot independently establish identity.

---

## 7. COMPOSITE OBJECTS

An object made from multiple materials references each material independently.

Example:

wood + iron + leather

Do not create a new fictional material solely because they occur in one object.

---

## 8. COMPOSITE MATERIALS

A genuine composite material may receive its own identity only when the
combination itself forms a physically meaningful material.

Its constituent materials must remain traceable.

---

## 9. VARIANTS

A variant retains the parent material identity unless the underlying physical
substance has materially changed.

Variants may arise from:

- processing
- finish
- age
- environmental condition
- manufacturing variation
- natural variation

---

## 10. IDENTITY CONFIDENCE

Use:

confirmed
strongly_supported
probable
plausible
uncertain
unknown

Confidence concerns evidence, not visual quality.

---

## 11. IDENTITY LOCK

Once approved, identity-critical information is locked.

Changes require version/change-control procedures.

---

## 12. NO INVENTED IDENTITY

If a source does not establish the material:

do not manufacture certainty.

Use:

not_specified
unknown
uncertain
requires_research

as appropriate.

---

## 13. IDENTITY TRANSFORMATION

A material transformation must be explicitly identified when processing changes
the underlying physical substance enough to affect its identity.

Examples requiring examination:

- firing clay
- smelting metal
- combustion
- chemical reaction
- decomposition

A transformation must not be treated as a simple cosmetic state.

---

## Legacy migration controls — Material identity lock

<!-- MIGRATION-CONTROL-ID: LEGACY_IDENTITY_LOCK -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- Lock the approved base identity, category, physical identity, texture character, surface behavior, and construction relationship where these are established.
- Separate identity-defining changes from temporary dirt, moisture, dust, wear, weathering, lighting, exposure, and story damage.
- Do not silently substitute silk with satin, gold with brass, stone with plastic, wood with synthetic material, or glass with crystal.
- Any identity or construction change requires an explicit reason, affected-record traceability, and approval.
- A visual change caused by illumination or camera angle must not be misclassified as a material identity change.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.


## MATERIALS_ONE_PASS_IDENTITY_CONTRACT

Every individual material identity must distinguish:
- stable material ID;
- canonical name and aliases;
- family and category;
- composition or source material, if known;
- fabrication or processing state, if relevant;
- evidence class and traceable source;
- confidence, uncertainty, alternatives, and context of validity;
- physical properties and surface structure;
- permitted states and causal state changes;
- approved construction relationships;
- status, version, reviewer, and dependent assets.

Identity must be kept separate from state. For example, dusty gold remains gold;
wet stone remains stone; a scratched metal remains the same metal unless evidence
shows that the underlying material has changed.

Do not infer exact species, alloy, mineral, fibre, binder, historical process, or
composition from a broad visual resemblance alone.
