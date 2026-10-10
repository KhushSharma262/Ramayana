# MATERIAL DATA STANDARD

## PURPOSE

Defines the structural and validation standard for material data.

This is the data-format authority of MATERIALS.

---

# 1. REQUIRED BASE FIELDS

Every material record must provide:

material_id
material_name
material_type
material_category
identity_status
source_classification
evidence_status
version
approval_status

Unknown is permitted when genuinely unknown.

Invented values are not permitted.

---

# 2. MATERIAL ID

Format:

MAT-000001

Rules:

- unique
- permanent
- non-semantic
- not based on category
- not based on location
- not based on character
- not based on episode
- not based on version

---

# 3. VERSION

Use:

MAJOR.MINOR

Major:
fundamental material interpretation/physical definition change.

Minor:
controlled refinement or correction that does not redefine the material.

---

# 4. APPROVAL

Allowed:

draft
researching
proposed
review_required
approved
rejected
superseded
deprecated

Only approved material definitions may be treated as production truth.

---

# 5. SEPARATE APPROVAL LAYERS

Where applicable:

research_approved
physical_model_approved
material_definition_approved
visual_representation_approved
production_approved

One approval does not automatically grant another.

---

# 6. VALUE TYPES

Physical values must identify their origin.

Allowed:

measured
literature
calculated
derived
estimated
assumed
simulation_parameter

---

# 7. PHYSICAL VALUE RECORD

Important physical values should contain:

property
value
unit
conditions
value_type
source
source_classification
confidence
validity_range
notes

---

# 8. UNITS

SI is the default.

Examples:

length = m
mass = kg
density = kg/m³
force = N
pressure = Pa
stress = Pa
temperature = °C
energy = J
thermal_conductivity = W/(m·K)
specific_heat = J/(kg·K)
velocity = m/s
acceleration = m/s²
friction_coefficient = dimensionless

---

# 9. NO FALSE PRECISION

Do not provide unnecessary decimal precision.

Use ranges when physical variation is meaningful.

Example:

density:
680–760 kg/m³

rather than false precision unsupported by evidence.

---

# 10. UNKNOWN VS ZERO

unknown ≠ zero

not_applicable ≠ zero

Zero must only be used when physically justified.

---

# 11. CONDITIONAL VALUES

A property may depend on:

- temperature
- moisture
- pressure
- loading
- direction
- strain rate
- age
- surface condition
- manufacturing method
- composition

Conditions must accompany the value whenever relevant.

---

# 12. VALIDITY ENVELOPE

A physical value must not be used outside its known validity envelope
without explicit justification.

Record:

minimum_condition
maximum_condition

where meaningful.

If the validity envelope is unknown:

validity = uncertain

---

# 13. DIRECTIONAL PROPERTIES

If a material is anisotropic, directional behavior must be preserved.

Examples:

wood grain
textile weave
layered material

Do not collapse meaningful directional properties into a single value merely
for convenience.

---

# 14. FACT / INFERENCE / RECONSTRUCTION

Each important claim must be distinguishable as:

FACT
INFERENCE
RECONSTRUCTION
PRODUCTION DECISION

They must never silently become interchangeable.

---

# 15. UNCERTAINTY PROPAGATION

If a value is derived from uncertain information, downstream records must
retain the uncertainty.

Example:

uncertain composition
→ derived density
→ approximate simulation parameter

The derived value must not become "confirmed" merely because it is used by
another system.

---

# 16. SIMULATION PARAMETERS

A simulation parameter is not automatically a real-world measurement.

Store separately:

real_world_value
simulation_value
reason_for_difference
expected_effect

---

# 17. INSTANCE DATA

Reusable material definition must be separated from instance condition.

Material definition:

wood

Instance:

beam_023

Instance may have:

- wetness
- dirt
- damage
- age
- location
- repair
- current temperature

These must not contaminate the universal material definition.

---

# 18. DUPLICATION RULE

Do not create another material record merely because:

- object differs
- character differs
- location differs
- lighting differs
- camera differs
- state differs
- dirt differs
- wetness differs
- age differs

Create a separate material only when the underlying material or controlled
variant genuinely differs.

---

# 19. DELETION RULE

Approved material records should not normally be deleted.

Use:

deprecated

or:

superseded

to preserve traceability.

---

# 20. VALIDATION

A record fails validation if it:

- invents composition
- invents unsupported physical values
- uses invalid units
- uses zero for unknown
- confuses identity with appearance
- confuses state with identity
- confuses simulation approximation with physical truth
- lacks provenance for important values
- violates its validity envelope
- contradicts another approved physical property
- silently discards uncertainty

---

# 21. SCHEMA EXTENSION

A new field may be added only when it has:

- a genuine production purpose
- a definition
- allowed value type
- unit where relevant
- validation rule
- ownership

No field is created merely for completeness.

---

# 22. DATA BOUNDARY

This file defines structure.

It does not contain individual material facts.
