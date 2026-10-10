# MATERIAL TAXONOMY

## PURPOSE

Taxonomy organizes materials.

It is not a physics model, visual model, historical authority, or production
representation.

---

# 1. PRIMARY GROUPS

Initial groups:

1. Stone / mineral
2. Earth / soil / mud
3. Wood
4. Metals
5. Ceramic / clay
6. Glass / mineral optical materials
7. Textiles / fibers
8. Leather / hide
9. Bone / horn / shell
10. Organic materials
11. Pigments / dyes / coatings
12. Other verified material classes

The taxonomy may evolve.

---

# 2. TAXONOMIC HIERARCHY

DOMAIN
→ CLASS
→ SUBCLASS
→ MATERIAL

The hierarchy should remain as shallow as practical.

---

# 3. PRIMARY / SECONDARY CLASSIFICATION

A material may have:

primary_category

and, when genuinely useful:

secondary_category

Do not duplicate the material record because of multiple classifications.

---

# 4. PROCESSING DOES NOT AUTOMATICALLY CHANGE TAXONOMY

Examples:

wet wood → wood
polished stone → stone
heated metal → metal
dirty cloth → textile

Processing, state, and surface condition must not be confused with taxonomy.

---

# 5. TAXONOMY DOES NOT DEFINE PHYSICS

"metal" is not a sufficient physical definition.

"wood" is not a sufficient physical definition.

The actual physical properties belong to the material record and PHYSICS system.

---

# 6. TAXONOMY DOES NOT DEFINE APPEARANCE

Categories must never be treated as visual shortcuts.

metal ≠ shiny
wood ≠ brown
stone ≠ grey
cloth ≠ soft-looking

---

# 7. NEW CATEGORY RULE

Create a new category only when it provides genuine value through:

- different research requirements
- different physical treatment
- different production handling
- materially different behavior
- repeated production use

Do not create categories for architectural appearance.

---

# 8. TAXONOMY STABILITY

Taxonomy may change without changing the permanent material_id.

---

# 9. UNKNOWN

If classification is unresolved:

classification_status:
unknown

Do not force a classification.

---

# 10. TAXONOMY BOUNDARY

This file does not contain:

- physical property values
- detailed behavior
- historical claims
- canonical claims
- shader settings
- texture instructions
- AI prompts
- cinematography
- VFX design


## MATERIALS_ONE_PASS_TAXONOMY_RULES

Taxonomy organizes material families; it does not prove that a particular material
appears in a particular scene or asset.

Keep separate dimensions for:
- base substance or material family;
- construction and fabrication;
- physical properties;
- surface structure and finish;
- environmental or narrative state;
- rendering representation.

Avoid creating a new family or separate record merely to represent dust, wetness, aging,
polish, or damage when those are states or surface conditions of an existing identity.
Create a distinct identity only when the underlying material or relevant construction
is genuinely distinct and the decision is documented.
