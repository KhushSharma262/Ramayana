# BEHAVIOR DATABASE INDEX

## Purpose

This directory is the controlled species-level behavior database
for the Ramayana animal system.

It stores behavioral truth at biological-group level while
preventing the retrieval and validation problems caused by a
single monolithic species database.

---

# DATABASE FILES

| Biological Group | Database |
|---|---|
| Mammals | mammals_behavior.md |
| Birds | birds_behavior.md |
| Reptiles | reptiles_behavior.md |
| Amphibians | amphibians_behavior.md |
| Fish | fish_behavior.md |
| Invertebrates | invertebrates_behavior.md |

---

# ROUTING RULE

Every species/entity MUST belong to exactly one primary database.

A species MUST NOT be duplicated across multiple group databases.

If taxonomy is unresolved, the entity MUST remain unresolved.

Do not infer a species from a broad common name.

Examples:

- "monkey" -> unresolved
- "deer" -> unresolved
- "snake" -> unresolved
- "bird" -> unresolved
- "fish" -> unresolved
- "frog" -> unresolved

A broad term may be retained as a production/background category,
but it must never silently acquire species-specific behavior.

---

# ENTITY ID RULE

Every species entry must have a unique immutable ENTITY_ID.

Format:

SP-<GROUP>-<SPECIES>

Examples:

SP-MAM-HORSE
SP-MAM-ASIAN-ELEPHANT
SP-BRD-INDIAN-PEAFOWL
SP-REP-INDIAN-COBRA

ENTITY_ID must never be reused for another taxon.

If taxonomy changes, preserve the historical ID and create a
new approved identity relationship.

---

# SPECIES SECTION BOUNDARY

Each species MUST have:

    ## ENTITY: <ENTITY_ID>

No behavioral claim may exist outside an entity section unless it
is explicitly marked as:

- GROUP_RULE
- DATABASE_RULE
- UNRESOLVED
- BACKGROUND_RULE

This prevents accidental cross-species contamination.

---

# BEHAVIOR OWNERSHIP

This database owns:

- behavioral tendencies
- behavioral triggers
- behavioral states
- motivation/need
- decision tendencies
- social behavior
- feeding behavior
- defensive behavior
- communication
- learning/habituation
- reproduction/parenting behavior
- human-associated behavior
- environmental behavioral responses
- individual variation
- behavioral recovery

It does NOT own:

- anatomy
- skeletal dimensions
- muscle mechanics
- locomotion implementation
- animation
- camera direction
- VFX
- AI generation settings

Those belong to their respective systems.

---

# REQUIRED BEHAVIOR CHAIN

Where applicable, behavioral claims should follow:

TRIGGER
→ PERCEPTION
→ INTERNAL STATE
→ MOTIVATION / NEED
→ DECISION
→ BEHAVIOR
→ MOVEMENT
→ INTERACTION
→ CONSEQUENCE
→ RECOVERY

Do not collapse this into vague emotional descriptions.

Bad:

"The horse is nervous."

Acceptable:

"Sudden unfamiliar movement may increase vigilance; the animal
may orient toward the stimulus, interrupt ongoing activity,
increase scanning, and alter distance depending on perceived
threat and habituation."

The exact claim still requires evidence.

---

# STATE VARIABLES

Species behavior may be modified by:

- age
- sex
- reproductive state
- social status
- health
- injury
- fatigue
- hunger
- thirst
- temperature
- weather
- season
- habitat
- time of day
- predator presence
- human presence
- novelty
- prior experience
- habituation
- training
- domestication
- captivity
- resource availability
- population density

Do not assume every variable applies equally to every species.

---

# DOMESTIC / HUMAN ASSOCIATION

These states are distinct:

- wild
- free-ranging
- habituated
- captive
- domesticated
- trained
- working
- ridden
- draft
- pack
- herding
- guarding
- ceremonial
- companion

Never treat "domestic" as equivalent to "obedient."

---

# EVIDENCE REQUIREMENT

Every production-relevant species behavior claim must be traceable to:

SOURCE
→ EVIDENCE
→ INTERPRETATION
→ CLAIM
→ DECISION
→ APPROVAL
→ VERSION
→ SNAPSHOT

AI-generated images, videos, prompts, or model outputs are NOT
biological evidence.

---

# UNCERTAINTY

Allowed states:

- CONFIRMED
- STRONGLY_SUPPORTED
- SUPPORTED
- LIMITED
- UNCERTAIN
- CONFLICTED
- UNKNOWN
- BLOCKED

UNKNOWN / CONFLICTED / BLOCKED material must not silently become
production truth.

---

# GEOGRAPHIC APPLICABILITY

Evidence must record whether it applies to:

- India
- South Asia
- Asia
- Global
- Captive populations
- Wild populations
- Managed populations
- Historical populations
- Unknown

Global evidence must never silently be labelled India-specific.

---

# BACKGROUND RULE

Population-level behavior belongs in:

10_BACKGROUND/background_population_behavior.md

Individual/named/repeated animals belong in the species database
and individual continuity systems.

Do not use individual behavior to define an entire species.

---

# COVERAGE

The authoritative animal coverage list remains external to this
database architecture.

Coverage validation must verify:

1. Every required species has an entity.
2. Every entity has exactly one group.
3. No entity exists in two group databases.
4. No required entity is silently missing.
5. Broad unresolved categories remain unresolved.
6. No orphan entity exists without a valid taxonomy record.

---

# FAIL-CLOSED PRINCIPLE

Missing:

- taxonomy
- entity ID
- evidence
- source
- applicability
- uncertainty state
- approval
- version
- snapshot

means the claim is NOT production-ready.

Do not fill missing fields with assumptions.

---

# VERSIONING

Every entity section must have:

entity_version:
database_version:
evidence_snapshot:
approval_state:
last_reviewed:

Changing evidence or interpretation requires a new version.

Do not overwrite historical decisions without traceability.
