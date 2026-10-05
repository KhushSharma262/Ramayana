# AI NEGATIVE CONSTRAINTS

## PURPOSE

Defines conditions, changes, artifacts, behaviors, states, and outputs that the AI must not generate unless they are explicitly authorized by the authoritative continuity state.

Negative constraints exist to prevent:

- identity drift
- continuity breaks
- state resets
- accidental invention
- physical impossibilities
- temporal inconsistencies
- spatial inconsistencies
- AI artifacts
- unrealistic human behavior
- incorrect persistence
- unauthorized visual changes
- unauthorized narrative changes
- unauthorized canonical changes

This file defines what must NOT occur.

It does not define what SHOULD occur.

Positive generation requirements are defined through:

ai_generation_state.md

ai_prompt_constraints.md

ai_identity_anchors.md

ai_generation_parameters.md


## CORE PRINCIPLE

The AI must not generate a state that contradicts the authoritative continuity state.

The AI must not invent a state that has not been authorized.

The AI must not remove a persistent state without a valid cause.

The AI must not change identity without an authorized identity-changing event.

The AI must not use its own output as authority.

The AI must not sacrifice continuity merely to improve visual quality.


## CONSTRAINT_IDENTITY

negative_constraint_id:

constraint_version:

constraint_status:

constraint_timestamp:

constraint_scope:

constraint_priority:

constraint_source:

constraint_authority:


## CONSTRAINT_STATUS

Allowed values:

active

conditional

inactive

superseded

pending_review

rejected


Only active constraints apply automatically.

Conditional constraints apply only when their specified condition is true.


## CONSTRAINT_PRIORITY

Priority hierarchy:

absolute

critical

high

controlled

contextual


### ABSOLUTE

Must never be violated unless explicitly overridden by the user or an authorized continuity event.


### CRITICAL

Violation blocks approval and generation propagation.


### HIGH

Violation requires correction before the affected output can become authoritative.


### CONTROLLED

Violation requires evaluation and correction when continuity is materially affected.


### CONTEXTUAL

Applies only under explicitly defined conditions.


## GLOBAL_CONSTRAINTS

The AI must not:

- invent missing critical information
- silently alter authoritative state
- silently alter identity
- silently alter timeline
- silently alter spatial relationships
- silently alter persistent state
- silently alter ownership
- silently alter relationships
- silently alter established knowledge
- silently alter canonical events
- silently reset a previous state
- use a rejected output as authoritative
- use an unvalidated output as authoritative
- propagate an unresolved generation error
- treat generation as a state reset
- treat visual quality as authority
- treat the newest output as automatically correct
- treat the previous AI output as the sole source of truth
- silently resolve conflicting references
- create an unexplained discontinuity
- erase historical changes
- overwrite historical generations


## IDENTITY_CONSTRAINTS

The AI must not generate:

- a different face
- materially different facial proportions
- materially different body proportions
- unexplained height changes
- unexplained body-build changes
- unexplained eye-structure changes
- unexplained nose-structure changes
- unexplained mouth-structure changes
- unexplained jaw changes
- unexplained ear changes
- unexplained hair identity changes
- unexplained skin identity changes
- unexplained distinctive-feature changes
- unexplained scars disappearing
- unexplained birthmarks disappearing
- unexplained identifying marks disappearing
- a visually similar replacement entity
- identity blending from conflicting references


Identity must not drift merely because:

- camera angle changes
- lighting changes
- expression changes
- costume changes
- environment changes
- model changes
- generation version changes
- time passes within the story


## FACE_CONSTRAINTS

The AI must not:

- alter facial structure without cause
- alter facial proportions without cause
- change eye spacing without cause
- change nose proportions without cause
- change mouth proportions without cause
- change jaw structure without cause
- change facial asymmetry without cause
- smooth away defining facial features
- create an idealized replacement face
- create a conventionally different face
- make the face progressively drift across generations
- copy another entity's facial identity


Natural expression and micro-expression are permitted when consistent with performance.


## BODY_CONSTRAINTS

The AI must not:

- change body proportions without cause
- change height without cause
- change limb proportions without cause
- change shoulder width without cause
- change torso proportions without cause
- change hand proportions without cause
- change foot proportions without cause
- create unexplained muscularity changes
- create unexplained body-weight changes
- create unexplained age-related body changes


Temporary posture is not equivalent to body identity change.


## EYE_CONSTRAINTS

The AI must not:

- change eye identity
- change established eye structure
- change established eye color without cause
- create inconsistent iris structure
- create inconsistent pupil structure
- alter eye spacing
- generate unnatural eye alignment
- generate independently moving eyes
- generate gaze that contradicts established spatial state
- generate impossible eyelid behavior


Natural blinking and gaze variation are permitted.


## HAIR_CONSTRAINTS

The AI must not:

- change hair identity
- change hairline without cause
- change established hair length without cause
- change established hair structure without cause
- change established hair color without cause
- create unexplained hairstyle changes
- reset hair condition after environmental interaction
- remove persistent environmental effects without cause


Hair may move naturally due to:

- gravity
- wind
- movement
- contact
- water
- environmental conditions


## SKIN_CONSTRAINTS

The AI must not:

- erase persistent scars
- erase persistent marks
- remove injuries without cause
- create unexplained permanent marks
- create unexplained skin-color changes
- make skin unnaturally flawless when the established state requires physical texture
- remove dirt, blood, sweat, or wetness without cause
- add dirt, blood, sweat, or wetness without a plausible cause


Lighting changes must not be treated as actual skin-state changes.


## AGE_CONSTRAINTS

The AI must not:

- reverse age
- randomly increase age
- randomly decrease age
- reset age between shots
- change age because of a model change
- change age because of a camera angle
- change age because of lighting
- change age because of regeneration


Age progression must follow the authoritative timeline.


## COSTUME_IDENTITY_CONSTRAINTS

The AI must not:

- replace an established garment without cause
- change garment identity without cause
- change established garment design without authorization
- add unexplained clothing items
- remove established clothing items without cause
- add unexplained jewelry
- remove established jewelry without cause
- change established ornament identity
- change garment color without authorization


## COSTUME_PERSISTENCE_CONSTRAINTS

The AI must not:

- repair a torn garment without an event
- remove stains without cleaning
- remove dirt without cleaning
- remove blood without cleaning
- reverse fading
- reverse wear
- remove holes without repair
- restore damaged fabric automatically
- make heavily worn clothing appear newly manufactured
- reset clothing condition between shots


A garment may change only through:

- wear
- damage
- cleaning
- repair
- replacement
- environmental interaction
- explicitly authorized event


## JEWELRY_CONSTRAINTS

The AI must not:

- create additional jewelry
- remove established jewelry
- change jewelry identity
- change jewelry material without cause
- duplicate jewelry
- merge separate jewelry items
- create impossible attachment
- teleport jewelry
- change ownership without cause


Jewelry position may change naturally through movement while identity remains stable.


## PROP_CONSTRAINTS

The AI must not:

- duplicate props
- remove props without cause
- create props without authorization
- change prop identity
- change prop material without cause
- change prop dimensions without cause
- teleport props
- change ownership without cause
- change holder without cause
- reset prop damage
- erase prop wear
- reverse prop aging
- restore a damaged prop without repair
- change prop location without a spatial event


## WEAPON_CONSTRAINTS

The AI must not:

- duplicate weapons
- remove weapons without cause
- create unauthorized weapons
- change weapon identity
- change weapon ownership without cause
- change weapon position without cause
- change weapon orientation without cause
- erase weapon damage
- reverse weapon wear
- repair weapons without an event
- change weapon dimensions without cause
- create impossible weapon physics


## ANIMAL_CONSTRAINTS

The AI must not:

- replace an individual animal with another individual
- change species without cause
- change age without cause
- change markings without cause
- change body structure without cause
- change health state without cause
- teleport animals
- duplicate animals unintentionally
- remove animals without cause
- create unexplained behavioral changes


## LOCATION_CONSTRAINTS

The AI must not:

- change established architecture without cause
- change building geometry without cause
- move permanent structures
- alter established entrances
- alter established windows
- alter established landmarks
- change spatial layout without cause
- reset environmental damage
- reset architectural wear
- change material identity without cause


Temporary environmental changes may occur when supported by:

- time
- weather
- human activity
- physical damage
- repair
- construction
- destruction


## ENVIRONMENT_CONSTRAINTS

The AI must not:

- randomly change weather
- randomly change time of day
- randomly change season
- randomly change temperature
- randomly change ground condition
- randomly change water state
- randomly remove environmental residue
- randomly remove dust
- randomly remove smoke
- randomly remove fog
- randomly remove rain
- randomly remove environmental damage
- reset environmental conditions between frames


Environmental changes must have a temporal, physical, or narrative cause.


## SPATIAL_CONSTRAINTS

The AI must not:

- teleport characters
- teleport objects
- teleport animals
- teleport weapons
- change established positions without movement
- change relative distances without cause
- change orientation without cause
- change hand-object contact without cause
- change foot placement without movement
- change gaze without a plausible performance or spatial reason
- place objects inside other objects without physical cause
- violate established blocking
- create impossible spatial relationships


## PERFORMANCE_CONSTRAINTS

The AI must not:

- reset a character to a neutral pose
- reset an ongoing gesture
- reverse a movement without cause
- skip an established movement phase
- interrupt an action without cause
- ignore an established reaction
- remove a reaction that should persist
- create a reaction before its triggering event
- make a listening character behave as though they did not hear an established event
- create emotionally inappropriate performance without cause


Performance may vary naturally within the approved performance state.


## PHYSIOLOGY_CONSTRAINTS

The AI must not:

- freeze breathing unnaturally
- create impossible breathing
- create random breathing patterns inconsistent with activity
- reset fatigue
- reset pain
- reset physical exhaustion
- erase physiological consequences without cause
- create impossible balance
- create impossible weight distribution
- create impossible muscle movement
- create impossible eye behavior
- create impossible blinking
- create physically impossible hand or finger movement


## HUMAN_REALISM_CONSTRAINTS

The AI must not produce:

- mannequin-like movement
- perfectly synchronized blinking
- mechanically identical breathing
- frozen facial expressions
- permanently symmetrical facial behavior
- weightless movement
- frictionless movement
- impossible acceleration
- impossible stopping
- floating feet
- sliding feet without cause
- disconnected hand-object contact
- rigid cloth behavior
- rigid hair behavior
- weightless jewelry
- impossible contact pressure
- physically impossible grip
- unnatural posture persistence
- robotic gesture repetition
- repeated identical micro-expressions
- impossible body balance


Human realism must remain subordinate to canonical supernatural events where applicable.


## PHYSICS_CONSTRAINTS

The AI must not violate established:

- gravity
- inertia
- momentum
- collision
- friction
- mass
- contact
- material behavior
- cloth physics
- hair physics
- water behavior
- fire behavior
- smoke behavior


unless an explicitly established supernatural or VFX state requires different behavior.


## TIMELINE_CONSTRAINTS

The AI must not:

- reverse time
- reset elapsed time
- duplicate elapsed time
- skip required elapsed time
- age an entity inconsistently
- heal an injury faster than the established timeline permits
- create future knowledge prematurely
- show an event before its cause
- show a consequence before its event
- alter sequence order
- create unexplained time jumps


## KNOWLEDGE_CONSTRAINTS

The AI must not depict an entity as knowing:

- information not yet acquired
- events not yet witnessed
- information not yet communicated
- information that the authoritative knowledge state marks unknown


AI visual interpretation must not create narrative knowledge.


## RELATIONSHIP_CONSTRAINTS

The AI must not:

- change established relationships without cause
- change ownership without cause
- change allegiance without cause
- create unexplained familiarity
- create unexplained hostility
- create unexplained emotional intimacy
- create unexplained social distance


## TRANSFORMATION_CONSTRAINTS

The AI must not:

- partially transform an entity without an established transition state
- reverse a transformation without cause
- begin a transformation without its triggering event
- end a transformation without its required event
- combine incompatible forms
- invent transformation consequences
- treat transformation as ordinary visual variation


## CAMERA_CONSTRAINTS

The AI must not:

- teleport the camera without a defined camera movement
- change lens without authorization
- change framing without authorization
- change camera height without authorization
- change focus behavior without authorization
- create impossible camera movement
- create unexplained camera acceleration
- alter perspective merely to make the subject look better


## LIGHTING_CONSTRAINTS

The AI must not:

- randomly change time-of-day lighting
- create contradictory shadow directions
- create impossible shadow positions
- change light source position without cause
- change established divine light without cause
- create inconsistent reflections
- create inconsistent illumination
- use lighting to conceal identity drift


## AUDIO_CONSTRAINTS

The AI must not:

- change voice identity
- randomly change voice pitch
- randomly change speaking speed
- change pronunciation without cause
- create dialogue before it is spoken
- remove dialogue that should exist
- create unexplained ambient sounds
- create impossible spatial audio
- make breathing audio inconsistent with physical activity


## VFX_CONSTRAINTS

The AI must not:

- create VFX without an established cause
- remove persistent VFX without cause
- change VFX intensity without cause
- teleport VFX
- create inconsistent particle behavior
- ignore environmental interaction
- ignore lighting interaction
- ignore shadows
- ignore reflections
- create VFX that contradict established physics without authorization


## AI_ARTIFACT_CONSTRAINTS

The AI must not produce:

- extra fingers
- missing fingers
- fused fingers
- duplicated limbs
- malformed hands
- malformed feet
- extra limbs
- missing limbs
- distorted facial anatomy
- asymmetrical eyes caused by generation error
- duplicated objects
- disappearing objects
- floating objects
- warped architecture
- texture crawling
- identity morphing
- frame-to-frame facial mutation
- frame-to-frame body mutation
- temporal flicker
- inconsistent jewelry
- inconsistent costume patterns
- impossible reflections
- impossible shadows
- unexplained object deformation
- background geometry instability
- unintended text
- watermarks
- logos
- interface elements
- generation artifacts


## CANON_CONSTRAINTS

The AI must not:

- invent canonical facts
- invent dialogue presented as scripture
- invent events presented as scripture
- invent relationships presented as scripture
- invent appearances presented as scripture
- convert visual reconstruction into canonical fact
- silently resolve conflicting sources
- change approved canonical interpretation
- use AI preference as canonical authority


Unknown canonical information must remain unknown unless explicitly approved as interpretation or visual reconstruction.


## RESEARCH_CONSTRAINTS

The AI must not:

- treat an unverified reference as established fact
- silently replace approved research
- silently merge conflicting research
- promote inference to direct source evidence
- present production choice as source-derived fact


## REFERENCE_CONSTRAINTS

The AI must not:

- use rejected references as authoritative
- use obsolete references without identifying them
- blend conflicting references without resolution
- replace an authoritative reference silently
- treat a previous AI output as automatically authoritative
- use a visually attractive reference that conflicts with approved identity


## GENERATION_CONSTRAINTS

The AI must not:

- generate before required dependencies are resolved
- generate with missing critical state
- invent missing critical parameters
- bypass identity anchors
- bypass persistent state
- bypass spatial state
- bypass timeline state
- bypass performance state
- bypass physiological state
- bypass human-realism constraints
- bypass physics constraints
- bypass approved references


## MODEL_CHANGE_CONSTRAINTS

The AI must not assume that:

- a new model preserves identity
- a new model preserves motion
- a new model preserves physics
- a new model preserves camera behavior
- a new model preserves audio
- a new model preserves VFX
- a new model preserves human realism


A model change requires appropriate validation.


## VARIATION_CONSTRAINTS

The AI must not use natural variation as permission to:

- alter identity
- alter age
- alter body proportions
- alter costume identity
- alter persistent damage
- alter ownership
- alter spatial continuity
- alter timeline
- alter canonical state


Natural variation is permitted only within:

ai_variation_limits.md


## STATE_RESET_CONSTRAINTS

AI generation must not reset:

- identity
- age
- injury
- healing
- scars
- blood
- dirt
- sweat
- wetness
- fatigue
- clothing damage
- clothing wear
- clothing fading
- stains
- prop damage
- weapon damage
- environmental damage
- ownership
- possession
- knowledge
- relationships
- transformation state
- elapsed time


A reset requires a documented state-changing event.


## PROPAGATION_CONSTRAINTS

The AI must not propagate:

- rejected outputs
- invalid outputs
- unvalidated outputs
- unresolved states
- unresolved identity errors
- unresolved continuity errors
- unresolved reference conflicts
- invented information


Only validated and approved state may become an authoritative future-generation source.


## ERROR_PROPAGATION_CONSTRAINTS

If an output contains an error:

the error must be identified

the output must be prevented from authoritative propagation

the required correction must be identified

the corrected output must be validated

the corrected output must be approved when required

the historical error must remain recorded


## RETROACTIVE_CONSTRAINTS

If an error is discovered later:

the historical output must not be silently rewritten

the original output must remain traceable

the error must be recorded

the affected downstream dependency chain must be identified

only affected outputs should be reconsidered

unaffected outputs must not be unnecessarily regenerated


## USER_OVERRIDE_CONSTRAINTS

The AI must not override an explicit user-approved production decision.

A user override must be:

recorded

scoped

traceable

validated where necessary


A user override may change production state but does not rewrite historical source evidence.


## ABSOLUTE_PROHIBITIONS

The following are prohibited unless explicitly overridden by the user or an authorized canonical/transformation event:

- identity drift
- unexplained age change
- unexplained injury removal
- unexplained healing
- unexplained scar removal
- unexplained clothing repair
- unexplained clothing replacement
- unexplained prop replacement
- unexplained weapon replacement
- unexplained ownership change
- unexplained spatial teleportation
- unexplained timeline change
- unexplained knowledge change
- unexplained relationship change
- unexplained environment reset
- unexplained physics violation
- rejected-state propagation
- unvalidated-state propagation
- silent reference replacement
- silent model replacement
- silent parameter replacement
- silent historical rewriting
- invented critical information


## CONDITIONAL_EXCEPTION

A negative constraint may be overridden only when:

override_exists: yes

override_authority:

override_reference:

override_reason:

override_scope:

override_timestamp:

override_validation:


An override must never be inferred merely because the AI cannot satisfy the constraint.


## CONSTRAINT_CONFLICT

constraint_conflict:

conflicting_constraints:

constraint_priority:

authoritative_constraint:

conflict_resolution:

resolution_status:


If two negative constraints conflict, the higher-priority constraint applies.

Unresolved critical conflicts must block generation.


## CONSTRAINT_VALIDATION

constraint_validation_required: yes

constraint_validation_status:

validated_against:

validation_method:

validation_timestamp:

validation_result:

validation_errors:


## FINAL_RULE

Negative constraints exist to prevent the AI from silently changing the established world.

The AI must not optimize for visual attractiveness at the expense of:

identity

continuity

physics

human realism

timeline

spatial accuracy

persistent state

canonical accuracy

performance

environment

camera

audio

VFX


The AI must preserve the established world first.

Visual improvement is permitted only when it does not violate the authoritative state.

The highest priority is:

CORRECT ENTITY
+
CORRECT STATE
+
CORRECT TIME
+
CORRECT PLACE
+
CORRECT PERFORMANCE
+
CORRECT PHYSICS
+
CORRECT ENVIRONMENT
+
CORRECT HUMAN REALISM

with all persistent consequences carried forward.
