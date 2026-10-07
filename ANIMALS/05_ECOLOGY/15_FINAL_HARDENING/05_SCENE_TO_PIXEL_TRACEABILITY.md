# SCENE TO PIXEL ECOLOGICAL TRACEABILITY

## PURPOSE

Guarantee that ecological decisions remain traceable all the way into final production.

## REQUIRED CHAIN

ECOLOGY_SNAPSHOT
→ SCENE_ECOLOGICAL_STATE
→ DIRECTORIAL_SELECTION
→ ASSET_REQUIREMENT
→ PROMPT
→ GENERATED_ASSET
→ SHOT
→ FINAL_RENDER

## SCENE ECOLOGICAL STATE

Each scene must specify:

scene_id:
location_id:
habitat_id:
temporal_state_id:
ecology_snapshot_id:
species_present:
vegetation_state:
water_state:
human_ecology_state:
disturbance_state:
resource_state:
population_state:

## VISIBILITY

Existence and visibility are separate.

Allowed:

PRESENT_AND_VISIBLE
PRESENT_NOT_VISIBLE
PRESENT_BUT_OCCURRENCE_UNCERTAIN
ABSENT
UNKNOWN

An animal may exist in the ecosystem without appearing in frame.

## CAMERA SAMPLING

Camera framing must not imply that:

visible density = total ecological abundance

Wide establishing shots and close shots have different ecological sampling effects.

## SCENE DENSITY

Scene density is a production choice constrained by ecological state.

It must not rewrite ecological abundance.

## DIRECTORIAL COMPOSITION

Allowed:

NATURAL
CINEMATICALLY_COMPOSED
SUPERNATURAL

Cinematic composition may select from plausible ecological elements.

It may not manufacture ecological evidence.

## PROMPT VALIDATION

Every ecology-sensitive prompt must be checked against the approved scene ecological state.

Prompt fields cannot introduce:

- unsupported species
- unsupported abundance
- unsupported vegetation
- unsupported water
- unsupported weather
- unsupported human activity

## ASSET BINDING

Every ecology-sensitive asset must store:

asset_id:
ecology_snapshot_id:
scene_id:
generation_version:
prompt_version:
approval_state:

## REGENERATION DRIFT

If an asset is regenerated:

OLD_ASSET
→ NEW_GENERATION
→ ECOLOGICAL_DIFF_CHECK
→ APPROVAL

Regeneration does not inherit approval automatically.

## FINAL PIXEL AUDIT

The final shot must be auditable against the approved scene state.

Any unapproved ecological addition:

BLOCKED.

## MASTER RULE

The final rendered image cannot become the source of ecological truth.
