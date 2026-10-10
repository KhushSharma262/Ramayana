# MATERIALS Substantive Content Review

Generated: 2026-10-09 11:06:08
Legacy non-empty documents: 7
Current non-empty documents: 155

## Part 1 — Legacy content requiring migration review

### LEGACY: README.md

Bytes: 926

```text
# MATERIALS

MATERIALS is the physical-material source of truth.

It governs the substance and surface behavior of things appearing
in the production.

It does not define:

- character costume design
- architectural layouts
- props as objects
- environmental simulation
- camera behavior
- final color grading
- compositing

Instead, those systems reference MATERIALS.

## Material pipeline

SOURCE / RESEARCH
        ↓
MATERIAL IDENTITY
        ↓
PHYSICAL PROPERTIES
        ↓
SURFACE CHARACTER
        ↓
MATERIAL STATE
        ↓
OBJECT / COSTUME / ARCHITECTURE
        ↓
3D MATERIAL IMPLEMENTATION
        ↓
LIGHT INTERACTION
        ↓
COMPOSITING
        ↓
FINAL IMAGE

## Most important rule

The same approved material must remain recognizable across
different scenes, lighting conditions, AI generations, renders,
and camera angles.

Only its physically justified appearance may change with conditions.
```

### LEGACY: CORE\material_evidence_rules.md

Bytes: 668

```text
# MATERIAL EVIDENCE RULES

Every historically/culturally significant material decision should
be classified.

DIRECT_SOURCE
Explicitly established by the source.

TRADITIONAL_SOURCE
Supported by established traditional practice or iconography.

HISTORICAL_RESEARCH
Supported by historical/material research.

TECHNICAL_RECONSTRUCTION
Required for production where exact information is unavailable.

DIRECTORIAL_CHOICE
Chosen for filmmaking reasons.

Do not represent a reconstruction as canonical fact.

When material identity is uncertain:

1. record alternatives
2. identify evidence
3. record the selected material
4. record confidence
5. record why it was selected
```

### LEGACY: CORE\material_lock_system.md

Bytes: 605

```text
# MATERIAL LOCK SYSTEM

Once approved, material identity is locked.

Locked:

- base material
- material category
- physical identity
- established texture character
- approved surface behavior
- approved construction relationship

Variable:

- temporary dirt
- temporary moisture
- temporary dust
- story damage
- weathering
- lighting
- camera exposure
- environmental interaction

AI must not silently change:

SILK → SATIN
GOLD → BRASS
STONE → PLASTIC
WOOD → SYNTHETIC
GLASS → CRYSTAL

unless the production explicitly changes the material.

Any material drift must be rejected or corrected.
```

### LEGACY: CORE\material_qa.md

Bytes: 958

```text
# MATERIAL QA

Check:

## Identity

- correct base material
- correct category
- no material substitution
- no AI material drift

## Physical behavior

- correct roughness
- correct reflectivity
- correct transparency
- correct scattering
- correct weight/behavior
- correct interaction with light

## Scale

- texture scale believable
- grain scale believable
- weave scale believable
- scratches correctly sized
- pores/imperfections correctly sized

## State

- aging justified
- weathering justified
- damage justified
- repair justified
- state persists correctly

## Continuity

- same material across shots
- same construction
- same surface character
- state changes tracked

## AI

- no plastic-looking skin
- no synthetic-looking silk
- no random metallic changes
- no texture repetition
- no impossible material response

## Rendering

- shader appropriate
- maps appropriate
- displacement appropriate
- SSS appropriate
- transmission appropriate
```

### LEGACY: CORE\material_selection_rules.md

Bytes: 496

```text
# MATERIAL SELECTION RULES

Select material using:

1. source evidence
2. historical/traditional evidence
3. object function
4. environmental context
5. character context
6. construction logic
7. physical plausibility
8. visual continuity
9. production feasibility

Do not choose material solely because it looks attractive.

Do not use modern synthetic materials unless explicitly justified
by the production's reconstruction policy.

When exact material is unknown, document the reconstruction.
```

### LEGACY: CORE\material_state_system.md

Bytes: 901

```text
# MATERIAL STATE SYSTEM

Material identity and material state are separate.

## Base identity

Examples:

GOLD
SILK
STONE
WOOD
COPPER
GLASS

## States

PRISTINE
NORMAL_USE
AGED
WEATHERED
DUSTY
WET
MUDDY
SCRATCHED
CRACKED
CHIPPED
STAINED
SOOTED
BURNT
WATER_DAMAGED
REPAIRED
RESTORED
DESTROYED

## State changes must have causes.

Examples:

WET
cause = rain / river / washing / immersion

DUSTY
cause = environment / travel / construction / dry conditions

BURNT
cause = fire

SCRATCHED
cause = contact / weapon / physical damage

AGED
cause = time

Do not randomly add wear.

State changes must be consistent with:

- story events
- environment
- character actions
- material properties
- elapsed time
- continuity

## State persistence

If a material becomes damaged in Scene 20,
it remains damaged in Scene 21 unless:

- repaired
- replaced
- restored
- intentionally reset by narrative time passage
```

### LEGACY: CORE\material_system.md

Bytes: 1403

```text
# MATERIALS SYSTEM

MATERIALS is the authoritative physical-material system.

It defines:

- material identity
- physical properties
- surface behavior
- material states
- material interactions
- material combinations
- rendering behavior
- texture requirements
- evidence and references
- material continuity
- AI material consistency

## Domain boundaries

MATERIALS:
What is the physical substance and how does it behave?

COSTUMES:
Which materials are used in a character's clothing/accessories?

ARCHITECTURE:
Where and how are building materials used?

PROPS:
What objects exist?

ENVIRONMENT:
What environmental processes affect materials?

COLOR:
How is color controlled?

3D:
How is the material implemented on the model?

COMPOSITING:
How are rendered materials integrated into the final image?

## Material identity

A material identity is different from its state.

Example:

GOLD
    ↓
GOLD + POLISHED
GOLD + WORN
GOLD + DUSTY
GOLD + SCRATCHED
GOLD + HEAT-DAMAGED

These are states of the same material.

## Core principle

A material must look physically believable under:

- daylight
- moonlight
- firelight
- diffuse light
- direct light
- atmospheric conditions
- wet conditions
- dusty conditions
- damage
- aging

Do not use a generic shader merely because an object is described as
gold, silk, stone, wood, etc.

The material must respond according to its physical characteristics.
```

## Part 2 — Current non-empty document inventory

### CURRENT: 01_CORE\material_data_standard.md

Bytes: 5274
Headings: MATERIAL DATA STANDARD | PURPOSE | 1. REQUIRED BASE FIELDS | 2. MATERIAL ID | 3. VERSION | 4. APPROVAL | 5. SEPARATE APPROVAL LAYERS | 6. VALUE TYPES | 7. PHYSICAL VALUE RECORD | 8. UNITS | 9. NO FALSE PRECISION | 10. UNKNOWN VS ZERO | 11. CONDITIONAL VALUES | 12. VALIDITY ENVELOPE | 13. DIRECTIONAL PROPERTIES | 14. FACT / INFERENCE / RECONSTRUCTION | 15. UNCERTAINTY PROPAGATION | 16. SIMULATION PARAMETERS | 17. INSTANCE DATA | 18. DUPLICATION RULE | 19. DELETION RULE | 20. VALIDATION | 21. SCHEMA EXTENSION | 22. DATA BOUNDARY

### CURRENT: 01_CORE\material_identity.md

Bytes: 3266
Headings: MATERIAL IDENTITY | PURPOSE | 1. IDENTITY COMPONENTS | 2. MATERIAL ID | 3. MATERIAL NAME | 4. IDENTITY VS CONDITION | 5. IDENTITY VS OBJECT | 6. IDENTITY VS APPEARANCE | 7. COMPOSITE OBJECTS | 8. COMPOSITE MATERIALS | 9. VARIANTS | 10. IDENTITY CONFIDENCE | 11. IDENTITY LOCK | 12. NO INVENTED IDENTITY | 13. IDENTITY TRANSFORMATION

### CURRENT: 01_CORE\material_master.md

Bytes: 10189
Headings: MATERIAL MASTER | 1. PURPOSE | 2. FUNDAMENTAL PRINCIPLE | 3. MATERIAL CAUSALITY | 4. MATERIAL SYSTEM OWNERSHIP | 5. PROPERTY OWNERSHIP | 6. BEHAVIOR VS STATE | 7. STATE VS TRANSFORMATION | 8. REAL PHYSICS VS SIMULATION APPROXIMATION | 9. CONDITIONS AND VALIDITY | 10. CAUSAL STATE TRANSITIONS | 11. MATERIAL CONSERVATION / TRANSFORMATION | 12. PHYSICAL PROPERTY PROVENANCE | 13. UNCERTAINTY PROPAGATION | 14. APPROVAL LAYERS | 15. MATERIAL CONTINUITY | 16. VERSION DEPENDENCY | 17. CHANGE CONTROL | 18. REAL-WORLD VALIDATION | 19. FAILURE SEVERITY | 20. UNKNOWN INFORMATION | 21. USER AUTHORITY | 22. CORE BOUNDARY | 23. NON-NEGOTIABLE RULE

### CURRENT: 01_CORE\material_taxonomy.md

Bytes: 2224
Headings: MATERIAL TAXONOMY | PURPOSE | 1. PRIMARY GROUPS | 2. TAXONOMIC HIERARCHY | 3. PRIMARY / SECONDARY CLASSIFICATION | 4. PROCESSING DOES NOT AUTOMATICALLY CHANGE TAXONOMY | 5. TAXONOMY DOES NOT DEFINE PHYSICS | 6. TAXONOMY DOES NOT DEFINE APPEARANCE | 7. NEW CATEGORY RULE | 8. TAXONOMY STABILITY | 9. UNKNOWN | 10. TAXONOMY BOUNDARY

### CURRENT: 01_CORE\source_classification.md

Bytes: 6605
Headings: SOURCE CLASSIFICATION | PURPOSE | 1. SOURCE CLASSES | direct_canon | derived_canon | traditional_interpretation | historical_reconstruction | scientific_fact | engineering_reference | visual_reconstruction | directorial_choice | production_choice | unknown | uncertain | 2. CLAIM-LEVEL CLASSIFICATION | 3. SOURCE AUTHORITY DEPENDS ON QUESTION | 4. NO AUTHORITY COLLAPSE | 5. SOURCE RECORD | 6. PRIMARY / SECONDARY / TERTIARY | 7. SCIENTIFIC VALUE TRANSFER | 8. MODERN DATA VS HISTORICAL MATERIAL | 9. INFERENCE REQUIREMENT | 10. HISTORICAL RECONSTRUCTION | 11. VISUAL REFERENCES | 12. AI-GENERATED REFERENCES | 13. CONFLICTS | 14. CONFLICT TYPES | 15. CONFLICT SEVERITY | 16. CONFIDENCE | 17. UNCERTAINTY PROPAGATION | 18. UNKNOWN INFORMATION | 19. USER DECISION | 20. PROHIBITED PRACTICES | 21. TRACEABILITY | 22. FINAL EVIDENCE RULE

### CURRENT: 02_MATERIAL_DATABASE\00_database_index.md

Bytes: 4535
Headings: MATERIAL DATABASE — INDEX | Purpose | Material classes covered | Important identity families | Not automatically a material record | Evidence rule | Status labels | Sources used for the initial inventory

### CURRENT: 02_MATERIAL_DATABASE\01_material_record_standard.md

Bytes: 2454
Headings: MATERIAL RECORD STANDARD | 1. Identity | 2. Origin | 3. Composition | 4. Baseline physical identity | 5. Manufacturing / preparation identity | 6. Appearance identity | 7. Historical relevance | 8. Known variants | 9. Exclusions | 10. Cross-system links | Evidence status

### CURRENT: 02_MATERIAL_DATABASE\02_material_id_rules.md

Bytes: 1407
Headings: MATERIAL ID RULES | Permanent IDs | Material definition vs instance | Do not merge | Composite materials | Unknowns | Versioning

### CURRENT: 02_MATERIAL_DATABASE\03_source_and_evidence_rules.md

Bytes: 1594
Headings: SOURCE AND EVIDENCE RULES | Source classes | Priority | Critical distinction | Conflict rule | Uncertainty | Research note

### CURRENT: 02_MATERIAL_DATABASE\04_initial_research_sources.md

Bytes: 1477
Headings: INITIAL RESEARCH SOURCES | Interpretation rule

### CURRENT: 02_MATERIAL_DATABASE\10_stone_rocks.md

Bytes: 2134
Headings: STONE AND ROCK MATERIALS | Scope | Material families | Granite | Basalt | Sandstone | Limestone | Marble | Slate | Schist | Quartzite | Laterite | Soapstone / steatite | Agate | Carnelian | Jasper | Chalcedony | Flint / chert | Identity rule | Historical note

### CURRENT: 02_MATERIAL_DATABASE\11_gemstones_crystals.md

Bytes: 1358
Headings: GEMSTONES, CRYSTALS AND ORNAMENTAL MINERALS | Major identity families | Important distinction | Rock crystal / quartz | Corundum | Beryl | Diamond | Pearl | Coral | Production rule

### CURRENT: 02_MATERIAL_DATABASE\12_earth_soil_mud.md

Bytes: 954
Headings: EARTH, SOIL AND MUD | Material families | Identity | Relevant constituents | Production rule

### CURRENT: 02_MATERIAL_DATABASE\13_sand_gravel_aggregate.md

Bytes: 650
Headings: SAND, GRAVEL AND AGGREGATE | Material families | Identity | Aggregate | Production rule

### CURRENT: 02_MATERIAL_DATABASE\14_clay_bricks_mortar_plaster.md

Bytes: 1187
Headings: CLAY, BRICK, MORTAR AND PLASTER | Clay | Earthen brick / mud brick | Fired brick | Lime | Gypsum | Mortar | Plaster | Historical note

### CURRENT: 02_MATERIAL_DATABASE\15_minerals_earth_ornamental_materials.md

Bytes: 1427
Headings: MINERALS, EARTH MATERIALS AND ORNAMENTAL STONES | Material families to research when evidence supports use | Identity requirements | Important distinction

### CURRENT: 02_MATERIAL_DATABASE\16_charcoal_ash_soot_particulates.md

Bytes: 993
Headings: CHARCOAL, ASH, SOOT AND PARTICULATE MATERIALS | Scope | Material identities | Required distinction | Record

### CURRENT: 02_MATERIAL_DATABASE\17_water_and_aqueous_materials.md

Bytes: 967
Headings: WATER AND AQUEOUS MATERIAL IDENTITIES | Identity | Rules | Ownership

### CURRENT: 02_MATERIAL_DATABASE\18_cordage_rope_mats_thatch.md

Bytes: 733
Headings: CORDAGE, ROPE, MATS, THATCH AND FIBRE ASSEMBLIES | Families | Required identity fields

### CURRENT: 02_MATERIAL_DATABASE\19_writing_record_substrates.md

Bytes: 716
Headings: WRITING, RECORD AND IMAGE SUBSTRATES | Candidate families | Rules

### CURRENT: 02_MATERIAL_DATABASE\20_wood_species.md

Bytes: 1263
Headings: WOOD AND TIMBER | Scope | Important candidate species/families for research | Record identity | Important warning | Material states

### CURRENT: 02_MATERIAL_DATABASE\21_bamboo_reeds_grasses.md

Bytes: 614
Headings: BAMBOO, REEDS, CANE AND GRASSES | Material families | Identity | Uses to investigate | Production rule

### CURRENT: 02_MATERIAL_DATABASE\22_bark_plant_fibres.md

Bytes: 658
Headings: BARK AND PLANT FIBRES | Material families | Identity | Important distinction | Historical rule

### CURRENT: 02_MATERIAL_DATABASE\30_metals_native.md

Bytes: 1066
Headings: NATIVE AND BASE METALS | Material families | Native metal | Copper | Gold | Silver | Lead, tin, zinc, mercury | Historical technology

### CURRENT: 02_MATERIAL_DATABASE\31_copper_alloys.md

Bytes: 893
Headings: COPPER ALLOYS | Bronze | Arsenical copper / arsenical bronze | Brass | Other copper alloys | Production rule

### CURRENT: 02_MATERIAL_DATABASE\32_iron_steel.md

Bytes: 951
Headings: IRON AND STEEL | Iron | Wrought iron | Cast iron | Steel | Rule

### CURRENT: 02_MATERIAL_DATABASE\33_precious_metals.md

Bytes: 669
Headings: PRECIOUS METALS | Gold | Silver | Electrum-like gold-silver alloys | Production rule

### CURRENT: 02_MATERIAL_DATABASE\34_other_historical_metals.md

Bytes: 643
Headings: OTHER HISTORICALLY RELEVANT METALS | Tin | Lead | Zinc | Mercury | Rule

### CURRENT: 02_MATERIAL_DATABASE\35_special_historical_materials.md

Bytes: 821
Headings: SPECIAL HISTORICAL MATERIALS | Candidate identities requiring evidence | Rule

### CURRENT: 02_MATERIAL_DATABASE\36_material_composites_and_layered_systems.md

Bytes: 895
Headings: MATERIAL COMPOSITES AND LAYERED SYSTEMS | Composite identity types | Required record

### CURRENT: 02_MATERIAL_DATABASE\37_material_data_completeness_audit.md

Bytes: 3366
Headings: MATERIAL DATA COMPLETENESS AUDIT | A. Identity completeness | B. Evidence completeness | C. Historical completeness | D. Scientific completeness | E. Negative-space audit | F. Production-use audit | G. Completion rule | H. No-loophole principle

### CURRENT: 02_MATERIAL_DATABASE\38_material_synonyms_and_translation_control.md

Bytes: 670
Headings: MATERIAL SYNONYMS AND TRANSLATION CONTROL | Required fields | Rules

### CURRENT: 02_MATERIAL_DATABASE\39_material_research_queue.md

Bytes: 482
Headings: MATERIAL RESEARCH QUEUE

### CURRENT: 02_MATERIAL_DATABASE\40_ceramics_faience_glazes.md

Bytes: 791
Headings: CERAMICS, EARTHENWARE, FAience AND GLAZES | Ceramic families | Terracotta | Faience | Glaze | Rule

### CURRENT: 02_MATERIAL_DATABASE\41_glass_mineral.md

Bytes: 737
Headings: GLASS AND MINERAL GLASS-LIKE MATERIALS | Glass | Historical identity | Faience | Quartz crystal | Obsidian | Rule

### CURRENT: 02_MATERIAL_DATABASE\50_textile_fibres.md

Bytes: 757
Headings: TEXTILE FIBRES | Plant fibres | Animal fibres | Cotton | Silk | Wool | Rule

### CURRENT: 02_MATERIAL_DATABASE\51_yarns_weaves_fabrics.md

Bytes: 785
Headings: YARN, WEAVE AND FABRIC MATERIALS | Stages | Construction families | Historical Indian textile evidence | Production rule

### CURRENT: 02_MATERIAL_DATABASE\52_textile_finishes.md

Bytes: 438
Headings: TEXTILE FINISHES | Finish families | Rule

### CURRENT: 02_MATERIAL_DATABASE\60_leather_hide.md

Bytes: 520
Headings: LEATHER AND HIDE | Raw hide | Leather | Identity variables | Rule

### CURRENT: 02_MATERIAL_DATABASE\61_bone_horn_ivory.md

Bytes: 520
Headings: BONE, HORN AND IVORY | Bone | Horn | Ivory | Historical uses | Rule

### CURRENT: 02_MATERIAL_DATABASE\62_shell_conch_nacre.md

Bytes: 508
Headings: SHELL, CONCH AND NACRE | Shell | Conch | Nacre | Coral | Rule

### CURRENT: 02_MATERIAL_DATABASE\63_feathers_hair_sinew.md

Bytes: 469
Headings: FEATHERS, HAIR AND SINEW | Feathers | Hair | Sinew | Scope rule

### CURRENT: 02_MATERIAL_DATABASE\70_oils_fats_waxes.md

Bytes: 682
Headings: OILS, FATS AND WAXES | Plant oils | Animal fats | Beeswax | Plant waxes | Rule

### CURRENT: 02_MATERIAL_DATABASE\71_resins_gums_latex.md

Bytes: 436
Headings: RESINS, GUMS AND LATEX | Material families | Identity | Uses to investigate

### CURRENT: 02_MATERIAL_DATABASE\72_adhesives_binders.md

Bytes: 518
Headings: ADHESIVES AND BINDERS | Binder families | Rule

### CURRENT: 02_MATERIAL_DATABASE\80_pigments.md

Bytes: 817
Headings: PIGMENTS AND MINERAL COLOURANTS | Mineral/inorganic families | Rule

### CURRENT: 02_MATERIAL_DATABASE\81_dyes_mordants.md

Bytes: 685
Headings: DYES AND MORDANTS | Plant dye families | Insect dyes | Mineral/inorganic colourants | Mordants | Rule

### CURRENT: 02_MATERIAL_DATABASE\82_coatings_polishes.md

Bytes: 508
Headings: COATINGS, POLISHES AND SURFACE FINISHES | Families | Rule

### CURRENT: 02_MATERIAL_DATABASE\90_plant_materials.md

Bytes: 574
Headings: PLANT-DERIVED RAW MATERIALS | Scope | Production rule

### CURRENT: 02_MATERIAL_DATABASE\91_animal_derived_materials.md

Bytes: 352
Headings: ANIMAL-DERIVED MATERIALS | Families | Rule

### CURRENT: 02_MATERIAL_DATABASE\92_food_organic_matter.md

Bytes: 669
Headings: FOOD AND ORGANIC MATTER | Why this exists | Material families to support when scenes require them | Rule

### CURRENT: 02_MATERIAL_DATABASE\93_composite_historical_materials.md

Bytes: 853
Headings: COMPOSITE AND ENGINEERED HISTORICAL MATERIALS | Scope | Rule | Required record

### CURRENT: 02_MATERIAL_DATABASE\99_material_database_scope_and_gaps.md

Bytes: 1446
Headings: DATABASE SCOPE, GAPS AND FUTURE EXPANSION | Current state | Deliberately not exploded into hundreds of species | Mandatory future additions | No silent modern substitution

### CURRENT: 03_PHYSICS\acoustic_physics.md

Bytes: 411
Headings: ACOUSTIC PHYSICS

### CURRENT: 03_PHYSICS\bone_horn_shell_physics.md

Bytes: 399
Headings: BONE, HORN AND SHELL PHYSICS

### CURRENT: 03_PHYSICS\ceramic_clay_physics.md

Bytes: 425
Headings: CERAMIC AND CLAY PHYSICS

### CURRENT: 03_PHYSICS\combustion_fire.md

Bytes: 666
Headings: COMBUSTION AND FIRE

### CURRENT: 03_PHYSICS\deformation.md

Bytes: 365
Headings: DEFORMATION

### CURRENT: 03_PHYSICS\dust_particles_sedimentation.md

Bytes: 380
Headings: DUST, PARTICLES AND SEDIMENTATION

### CURRENT: 03_PHYSICS\elasticity_plasticity.md

Bytes: 542
Headings: ELASTICITY AND PLASTICITY

### CURRENT: 03_PHYSICS\fluid_mechanics.md

Bytes: 432
Headings: FLUID MECHANICS

### CURRENT: 03_PHYSICS\fluid_properties.md

Bytes: 373
Headings: FLUID PROPERTIES

### CURRENT: 03_PHYSICS\friction_contact_adhesion.md

Bytes: 581
Headings: FRICTION, CONTACT AND ADHESION

### CURRENT: 03_PHYSICS\glass_mineral_physics.md

Bytes: 399
Headings: GLASS AND MINERAL PHYSICS

### CURRENT: 03_PHYSICS\heat_transfer.md

Bytes: 409
Headings: HEAT TRANSFER

### CURRENT: 03_PHYSICS\humidity_temperature_environment.md

Bytes: 463
Headings: HUMIDITY AND TEMPERATURE ENVIRONMENT

### CURRENT: 03_PHYSICS\impact_momentum_collision.md

Bytes: 459
Headings: IMPACT, MOMENTUM AND COLLISION

### CURRENT: 03_PHYSICS\leather_hide_physics.md

Bytes: 347
Headings: LEATHER AND HIDE PHYSICS

### CURRENT: 03_PHYSICS\mass_density_volume.md

Bytes: 602
Headings: MASS, DENSITY AND VOLUME

### CURRENT: 03_PHYSICS\measurement_methods.md

Bytes: 480
Headings: MEASUREMENT METHODS

### CURRENT: 03_PHYSICS\mechanical_properties.md

Bytes: 501
Headings: MECHANICAL PROPERTIES

### CURRENT: 03_PHYSICS\metal_physics.md

Bytes: 459
Headings: METAL PHYSICS

### CURRENT: 03_PHYSICS\model_validation.md

Bytes: 413
Headings: MODEL VALIDATION

### CURRENT: 03_PHYSICS\numerical_methods.md

Bytes: 359
Headings: NUMERICAL METHODS

### CURRENT: 03_PHYSICS\optical_properties.md

Bytes: 424
Headings: OPTICAL PROPERTIES

### CURRENT: 03_PHYSICS\organic_material_physics.md

Bytes: 346
Headings: ORGANIC MATERIAL PHYSICS

### CURRENT: 03_PHYSICS\phase_change.md

Bytes: 393
Headings: PHASE CHANGE

### CURRENT: 03_PHYSICS\physical_models.md

Bytes: 645
Headings: PHYSICAL MODELS

### CURRENT: 03_PHYSICS\physical_provenance.md

Bytes: 586
Headings: PHYSICAL PROVENANCE

### CURRENT: 03_PHYSICS\physics_assumption_registry.md

Bytes: 459
Headings: PHYSICS ASSUMPTION REGISTRY

### CURRENT: 03_PHYSICS\physics_change_control.md

Bytes: 458
Headings: PHYSICS CHANGE CONTROL

### CURRENT: 03_PHYSICS\physics_completeness_audit.md

Bytes: 1230
Headings: PHYSICS COMPLETENESS AUDIT | Identity | Units | Conditions | Data | Model | Numerical | Validation | Causality | Historical | Handoff

### CURRENT: 03_PHYSICS\physics_data_standard.md

Bytes: 1814
Headings: PHYSICS DATA STANDARD | Provenance | Mandatory rule | Significant figures | Ranges | Distributions | Zero | Not applicable | Unknown | Dependency | Versioning

### CURRENT: 03_PHYSICS\physics_failure_modes.md

Bytes: 594
Headings: PHYSICS FAILURE MODES

### CURRENT: 03_PHYSICS\physics_master.md

Bytes: 4997
Headings: PHYSICS MASTER | Purpose | Hierarchy | Absolute principles | Required causal chain | Conservation | Reality versus simulation | Required uncertainty categories | Required status values | Physics ownership | No double ownership | No fake exactness | Final principle

### CURRENT: 03_PHYSICS\physics_reference_registry.md

Bytes: 439
Headings: PHYSICS REFERENCE REGISTRY

### CURRENT: 03_PHYSICS\physics_to_3d_interface.md

Bytes: 310
Headings: PHYSICS → 3D INTERFACE

### CURRENT: 03_PHYSICS\physics_to_audio_interface.md

Bytes: 253
Headings: PHYSICS → AUDIO INTERFACE

### CURRENT: 03_PHYSICS\physics_to_behavior_interface.md

Bytes: 282
Headings: PHYSICS → BEHAVIOR INTERFACE

### CURRENT: 03_PHYSICS\physics_to_lighting_interface.md

Bytes: 328
Headings: PHYSICS → LIGHTING INTERFACE

### CURRENT: 03_PHYSICS\physics_to_simulation_interface.md

Bytes: 400
Headings: PHYSICS → SIMULATION INTERFACE

### CURRENT: 03_PHYSICS\physics_to_states_interface.md

Bytes: 379
Headings: PHYSICS → STATES INTERFACE

### CURRENT: 03_PHYSICS\physics_to_vfx_interface.md

Bytes: 252
Headings: PHYSICS → VFX INTERFACE

### CURRENT: 03_PHYSICS\radiation_absorption_scattering.md

Bytes: 460
Headings: RADIATION, ABSORPTION AND SCATTERING

### CURRENT: 03_PHYSICS\real_world_validation.md

Bytes: 530
Headings: REAL-WORLD VALIDATION

### CURRENT: 03_PHYSICS\scale_and_dimension.md

Bytes: 398
Headings: SCALE AND DIMENSION

### CURRENT: 03_PHYSICS\simulation_approximation.md

Bytes: 438
Headings: SIMULATION APPROXIMATION

### CURRENT: 03_PHYSICS\simulation_models.md

Bytes: 389
Headings: SIMULATION MODELS

### CURRENT: 03_PHYSICS\stone_earth_physics.md

Bytes: 508
Headings: STONE AND EARTH PHYSICS

### CURRENT: 03_PHYSICS\strength_failure_fracture.md

Bytes: 527
Headings: STRENGTH, FAILURE AND FRACTURE

### CURRENT: 03_PHYSICS\surface_microphysics.md

Bytes: 363
Headings: SURFACE MICROPHYSICS

### CURRENT: 03_PHYSICS\textile_fibre_physics.md

Bytes: 422
Headings: TEXTILE AND FIBRE PHYSICS

### CURRENT: 03_PHYSICS\thermal_properties.md

Bytes: 462
Headings: THERMAL PROPERTIES

### CURRENT: 03_PHYSICS\uncertainty_and_error.md

Bytes: 938
Headings: UNCERTAINTY AND ERROR | Separate error classes | Never combine unlike uncertainties without justification. | Error propagation | Numerical convergence | Validation

### CURRENT: 03_PHYSICS\units_and_dimensions.md

Bytes: 851
Headings: UNITS AND DIMENSIONS | Internal standard | Rules

### CURRENT: 03_PHYSICS\validity_regimes.md

Bytes: 680
Headings: VALIDITY REGIMES

### CURRENT: 03_PHYSICS\vibration_resonance.md

Bytes: 429
Headings: VIBRATION AND RESONANCE

### CURRENT: 03_PHYSICS\weathering_erosion_physics.md

Bytes: 388
Headings: WEATHERING AND EROSION PHYSICS

### CURRENT: 03_PHYSICS\wetting_absorption_permeability.md

Bytes: 526
Headings: WETTING, ABSORPTION AND PERMEABILITY

### CURRENT: 03_PHYSICS\wood_physics.md

Bytes: 414
Headings: WOOD PHYSICS

### CURRENT: 04_SURFACE_STRUCTURE\asset_material_assignment_register.csv

Bytes: 3
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\imperfections.md

Bytes: 1733
Headings: IMPERFECTIONS | Purpose | Candidate classes | Causal consistency | Spatial statistics | Representation | Validation

### CURRENT: 04_SURFACE_STRUCTURE\macro_structure.md

Bytes: 1715
Headings: MACRO STRUCTURE | Scope | Candidate features | Physical constraints | Representation choice | Validation

### CURRENT: 04_SURFACE_STRUCTURE\material_database_and_assignment_gap_report.md

Bytes: 1687
Headings: Material Database and Assignment Gap Report | Database inventory | Empty database files | Asset and material handoff status | Interpretation | Required next actions

### CURRENT: 04_SURFACE_STRUCTURE\material_record_inventory.csv

Bytes: 5556
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\medium_structure.md

Bytes: 1547
Headings: MEDIUM STRUCTURE | Scope | Required descriptors where relevant | Statistical structure | Representation | Validation

### CURRENT: 04_SURFACE_STRUCTURE\micro_surface.md

Bytes: 1745
Headings: MICRO SURFACE | Scope | Possible features | Geometry versus roughness | Required descriptors | Optical behavior | Validation

### CURRENT: 04_SURFACE_STRUCTURE\multiple_reflection_and_light_transport.md

Bytes: 4434
Headings: MULTIPLE REFLECTION AND LIGHT TRANSPORT | Scope | Interface behavior | Multiple-bounce transport | Energy accounting | Prevent double counting | Geometry and structure | Scale and wavelength | Controlled test scenes | Acceptance metrics

### CURRENT: 04_SURFACE_STRUCTURE\natural_variation.md

Bytes: 1695
Headings: NATURAL VARIATION AND CORRELATION | Principle | Dimensions to consider | Correlated variation | Procedural controls | Continuity | Validation

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\asset_material_assignment_gaps.csv

Bytes: 244
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\asset_material_assignment_register.csv

Bytes: 3
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\discovered_asset_file_inventory.csv

Bytes: 167
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\material_database_and_assignment_gap_report.md

Bytes: 1687
Headings: Material Database and Assignment Gap Report | Database inventory | Empty database files | Asset and material handoff status | Interpretation | Required next actions

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\material_record_inventory.csv

Bytes: 5556
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\material_record_inventory_detailed.csv

Bytes: 14500
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\ONE_PASS_COMPLETION_AUDIT.md

Bytes: 4772
Headings: Ramayan Surface Structure — One-Pass Completion Audit | Executive result | Filesystem inventory | Register validation | Renderer discovery | Release gates | Generated outputs | Important limitations | Next actions in priority order | Integrity statement

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\run_summary.json

Bytes: 793
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\surface_material_family_mapping.csv

Bytes: 4101
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\surface_material_research_queue.csv

Bytes: 8535
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\surface_release_gate_register.csv

Bytes: 1559
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\ONE_PASS_AUDIT_20261009_104240\surface_renderer_validation_register.csv

Bytes: 5635
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\README_REPAIR_PACKAGE.md

Bytes: 1190
Headings: Surface Structure Repair Package | Files | Important

### CURRENT: 04_SURFACE_STRUCTURE\sub_micro_structure.md

Bytes: 1714
Headings: SUB-MICROSTRUCTURE | Scope | Distinctions | Model selection | Energy and overlap | Uncertainty | Validation

### CURRENT: 04_SURFACE_STRUCTURE\surface_change_and_decision_log.md

Bytes: 1095
Headings: SURFACE STRUCTURE CHANGE AND DECISION LOG | Decision record template | Change classes | Rules

### CURRENT: 04_SURFACE_STRUCTURE\surface_cross_folder_contract.md

Bytes: 1994
Headings: SURFACE STRUCTURE CROSS-FOLDER CONTRACT | Purpose | Required dependencies | MATERIALS/02_MATERIAL_DATABASE | MATERIALS/03_PHYSICS | Behavior and state folders | Renderer, lighting, and production QA | Contract validation

### CURRENT: 04_SURFACE_STRUCTURE\surface_environment_interaction.md

Bytes: 1441
Headings: SURFACE AND ENVIRONMENT INTERACTION | Scope | Required distinctions | Causal consistency | State consistency | Validation

### CURRENT: 04_SURFACE_STRUCTURE\surface_evidence_and_research_register.md

Bytes: 1969
Headings: SURFACE EVIDENCE AND RESEARCH REGISTER | Purpose | Research record template | Research status | Evidence hierarchy | Required uncertainty discipline | Closure criteria

### CURRENT: 04_SURFACE_STRUCTURE\surface_evidence_source_register.md

Bytes: 3293
Headings: Surface Evidence Source Register — Repaired | Scope and evidence boundary | General methodology references | Required source record for each material-specific claim | Evidence classification vocabulary

### CURRENT: 04_SURFACE_STRUCTURE\surface_failure_modes.md

Bytes: 1922
Headings: SURFACE STRUCTURE FAILURE MODES

### CURRENT: 04_SURFACE_STRUCTURE\surface_final_inventory.md

Bytes: 1236
Headings: SURFACE STRUCTURE CANONICAL INVENTORY | Canonical documents | Inventory rules

### CURRENT: 04_SURFACE_STRUCTURE\surface_implementation_handoff.md

Bytes: 1827
Headings: SURFACE STRUCTURE IMPLEMENTATION HANDOFF | Purpose | Required inputs | Required implementation decisions | Non-equivalence warnings | Change control | Handoff acceptance

### CURRENT: 04_SURFACE_STRUCTURE\surface_interfaces_and_layers.md

Bytes: 1547
Headings: SURFACE INTERFACES AND LAYERS | Purpose | Record when applicable | Physical consistency | Representation and transport | Validation

### CURRENT: 04_SURFACE_STRUCTURE\surface_material_family_mapping.csv

Bytes: 4101
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\surface_material_research_queue.csv

Bytes: 8535
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\surface_record_standard.md

Bytes: 2210
Headings: SURFACE FEATURE RECORD STANDARD | Identity | Evidence | Physical definition | Uncertainty | Interactions | Digital representation | Validation | Rules

### CURRENT: 04_SURFACE_STRUCTURE\surface_release_gate.md

Bytes: 1727
Headings: SURFACE STRUCTURE RELEASE GATE | Gate 1: Documentation | Gate 2: Evidence | Gate 3: Material-specific definition | Gate 4: Physical review | Gate 5: Renderer validation | Gate 6: Production validation | Gate 7: Approval | Release statuses

### CURRENT: 04_SURFACE_STRUCTURE\surface_renderer_confirmation_note.md

Bytes: 1067
Headings: Renderer Confirmation Note — Repaired | Current state | Confirmation procedure | Prohibited status changes

### CURRENT: 04_SURFACE_STRUCTURE\surface_renderer_test_matrix.md

Bytes: 2130
Headings: SURFACE RENDERER TEST MATRIX | Purpose | Test record template | Core test families | Geometry and scale | Fine structure | Light transport | State and continuity | Test interpretation | Approval gate

### CURRENT: 04_SURFACE_STRUCTURE\surface_renderer_validation_register.csv

Bytes: 5635
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\surface_research_execution_plan.md

Bytes: 5315
Headings: Surface Research Execution Plan — Repaired | Current disposition | Work order | Gate 1 — Build the asset-to-material assignment | Gate 2 — Create material-specific records | Gate 3 — Research surface structure | Gate 4 — Choose representation by projected size | Gate 5 — Confirm renderer before test execution | Gate 6 — Execute and record renderer tests | Gate 7 — Release approval | Queue triage | Completion checklist

### CURRENT: 04_SURFACE_STRUCTURE\surface_scale_and_filtering.md

Bytes: 1754
Headings: SURFACE SCALE, FILTERING, SAMPLING, AND LOD | Physical scale | Representation selection | Sampling and filtering | LOD | UV integrity | Validation

### CURRENT: 04_SURFACE_STRUCTURE\surface_structure_audit_report.txt

Bytes: 1771
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\surface_structure_completion_discovery.txt

Bytes: 11921
Headings: (no Markdown headings)

### CURRENT: 04_SURFACE_STRUCTURE\surface_structure_master.md

Bytes: 5281
Headings: SURFACE STRUCTURE MASTER STANDARD | Purpose | Authority boundaries | Four structural scales | Mandatory causal chain | Material-specific record requirements | Multiple reflection | Physical consistency | Evidence classifications | Acceptance states | Change control

### CURRENT: 04_SURFACE_STRUCTURE\surface_validation_and_qa.md

Bytes: 2537
Headings: SURFACE STRUCTURE VALIDATION AND QA | Independent validation levels | Critical checks | Traceability | Structure | Optical and renderer integrity | Temporal integrity | Severity | Acceptance record | Final rule

## Part 3 — Empty current files

- 05_BEHAVIOR\aging.md
- 05_BEHAVIOR\damage.md
- 05_BEHAVIOR\dust_dirt_mud.md
- 05_BEHAVIOR\environmental_response.md
- 05_BEHAVIOR\repair.md
- 05_BEHAVIOR\water_wetting_absorption.md
- 05_BEHAVIOR\wear.md
- 05_BEHAVIOR\weathering.md
- 06_STATES\condition_states.md
- 06_STATES\material_state_model.md
- 06_STATES\state_continuity.md
- 06_STATES\state_transitions.md
- 06_STATES\thermal_states.md
- 06_STATES\wet_dry_states.md
- 07_HISTORICAL_CANONICAL\canonical_material_usage.md
- 07_HISTORICAL_CANONICAL\conflicts_uncertainty.md
- 07_HISTORICAL_CANONICAL\historical_material_availability.md
- 07_HISTORICAL_CANONICAL\material_evidence.md
- 07_HISTORICAL_CANONICAL\traditional_indian_materials.md
- 07_HISTORICAL_CANONICAL\traditional_manufacturing.md
- 08_INTERACTION\animal_interaction.md
- 08_INTERACTION\architecture_interaction.md
- 08_INTERACTION\environment_interaction.md
- 08_INTERACTION\human_interaction.md
- 08_INTERACTION\prop_interaction.md
- 09_AI_PRODUCTION\artifact_prevention.md
- 09_AI_PRODUCTION\candidate_selection.md
- 09_AI_PRODUCTION\material_generation_validation.md
- 09_AI_PRODUCTION\material_prompting.md
- 09_AI_PRODUCTION\negative_constraints.md
- 09_AI_PRODUCTION\reference_strategy.md
- 10_CONTINUITY_QA\approval_criteria.md
- 10_CONTINUITY_QA\cross_episode_consistency.md
- 10_CONTINUITY_QA\cross_scene_consistency.md
- 10_CONTINUITY_QA\cross_shot_consistency.md
- 10_CONTINUITY_QA\material_continuity.md
- 10_CONTINUITY_QA\realism_qa.md
- 10_CONTINUITY_QA\temporal_consistency.md
- 11_PRODUCTION_HANDOFF\3d_handoff.md
- 11_PRODUCTION_HANDOFF\lighting_handoff.md
- 11_PRODUCTION_HANDOFF\physics_handoff.md
- 11_PRODUCTION_HANDOFF\render_validation.md
- 11_PRODUCTION_HANDOFF\shader_handoff.md
- 11_PRODUCTION_HANDOFF\texture_handoff.md
- 11_PRODUCTION_HANDOFF\vfx_handoff.md
- 12_REGISTRY\change_control.md
- 12_REGISTRY\material_registry.md
- 12_REGISTRY\material_variants.md
- 12_REGISTRY\material_versions.md