SHOT STATE
PURPOSE
Maintain deterministic shot state across generation.
REQUIRED STATE
SHOT_ID
SCENE_ID
SEQUENCE_ID
SHOT_INDEX

PURPOSE
SHOT_FAMILY
BEAT
DRAMATIC_CHANGE

PRIMARY_SUBJECT
SECONDARY_SUBJECTS
OBJECTS
ENVIRONMENT

ACTION
PERFORMANCE
REACTION

AUDIENCE_KNOWLEDGE_BEFORE
AUDIENCE_KNOWLEDGE_AFTER
CHARACTER_KNOWLEDGE_BEFORE
CHARACTER_KNOWLEDGE_AFTER

INFORMATION_REVEALED
INFORMATION_WITHHELD

START_STATE
END_STATE

SPATIAL_STATE
TEMPORAL_STATE
ACTION_STATE
RELATIONSHIP_STATE

MUST_SHOW
MUST_NOT_SHOW

BLOCKING_REQUIREMENT
PERFORMANCE_REQUIREMENT

DURATION_REQUIREMENT
RHYTHM_REQUIREMENT
COVERAGE_ROLE

CAMERA_REQUIREMENT
LENS_REQUIREMENT
FRAMING_REQUIREMENT
FOCUS_REQUIREMENT
LIGHTING_REQUIREMENT
MOVEMENT_REQUIREMENT

PREVIOUS_SHOT_DEPENDENCIES
NEXT_SHOT_DEPENDENCIES
CONTINUITY_DEPENDENCIES

PHYSICAL_REALISM_REQUIREMENTS
AI_ARTIFACT_RISKS

UNKNOWN_FIELDS
CONFIDENCE
VALIDATION_STATUS

STATE INHERITANCE
Unchanged state persists.
Never regenerate unchanged:
- identity
- costume
- jewelry
- props
- geography
- environment
- lighting
- time
- action state
without cause.
DELTA
Represent:
PREVIOUS_STATE
+
CHANGE
CURRENT_STATE
UNKNOWN
Unknown fields remain UNKNOWN.
DETERMINISM
The same approved shot state should lead to substantially the same shot requirements.
SHOT DESIGN ZERO-LOOPHOLE HARDENING
AUTHORITY FIREWALL
This file must never redefine the physical authority of:
- CAMERA
- LENSES
- FRAMING
- LIGHTING
- GRAMMAR
- CONTINUITY
- GEOGRAPHY
- ACTING
If a requirement belongs elsewhere, this file specifies the requirement and delegates implementation.
NO PARAMETER SMUGGLING
Do not hide camera, lens, lighting, framing, or editorial parameters inside:
- emotion
- style
- shot family
- visual metaphor
- hero treatment
- action treatment
- dialogue treatment
NO PRESET MAPPING
Never convert narrative categories directly into physical camera presets.
PHYSICAL CAUSE
Every visible physical effect must have a plausible physical cause.
INFORMATION CAUSALITY
Every reveal must have a mechanism.
Every hidden state must have a reason.
Every important consequence must have a preceding cause unless deliberate mystery requires otherwise.
STATE CONTINUITY
Shot state persists across frames and cuts unless an explicit change occurs.
TEMPORAL CONTINUITY
Within a shot:
- motion remains coherent
- light remains coherent
- shadows remain coherent
- focus remains coherent
- perspective remains coherent
- objects remain coherent
- anatomy remains coherent
SPATIAL CONTINUITY
Preserve:
- geography
- relative positions
- movement direction
- eyelines
- object positions
- environment state
unless deliberately changed.
HUMAN OPERATOR REALISM
Camera decisions must be physically executable by a professional crew.
Do not invent impossible:
- camera paths
- focus behavior
- stabilization
- repositioning
- acceleration
- deceleration
- framing corrections
PERFORMANCE REALISM
Do not force actors into unnatural:
- movement
- eye behavior
- pauses
- gestures
- posture
- object interaction
for cinematic appearance.
VISUAL HIERARCHY
The viewer must have an intentional primary visual target.
If there is no primary target, the absence must itself be intentional.
MINIMUM COMPLEXITY
Every additional visual mechanism requires justification.
AI ARTIFACT FIREWALL
Reject:
- face morphing
- body morphing
- hand deformation
- eye instability
- changing hair
- changing jewelry
- changing costume
- object duplication
- object disappearance
- geometry drift
- texture crawling
- unstable shadows
- impossible reflections
- impossible blur
- impossible motion
- artificial focus
- artificial camera movement
NO DIGITAL CHEATING
Do not solve shot-design problems through:
- digital zoom
- artificial depth blur
- fake camera shake
- fake lens flare
- fake volumetric light
- artificial vignettes
- synthetic motion trails
- arbitrary glow
- fake perspective
unless the relevant authoritative subsystem explicitly defines a physically valid implementation.
UNCERTAINTY
When information is missing:
1. preserve known state
2. mark unknown state
3. choose minimum assumption
4. avoid introducing irreversible visual commitments
CONFLICT
When requirements conflict:
PHYSICAL REALITY

CONTINUITY

STORY INFORMATION

PERFORMANCE

SHOT PURPOSE

STYLE
FINAL VALIDATION
A shot is valid only when:
PURPOSE
+
INFORMATION
+
SUBJECT
+
ACTION/PERFORMANCE
+
SPACE
+
TIME
+
CONTINUITY
+
PHYSICAL EXECUTION
+
REALISM
are mutually compatible.
If not, redesign.
Do not conceal contradictions with visual effects.
