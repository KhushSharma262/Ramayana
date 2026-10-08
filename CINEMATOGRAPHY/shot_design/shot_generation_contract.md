SHOT GENERATION CONTRACT
PURPOSE
Translate approved shot design into a generation-ready physical specification without turning the shot into an artificial visual preset.
GENERATION ORDER
1. Load scene state.
2. Load character state.
3. Load environment state.
4. Load previous shot state.
5. Load shot purpose.
6. Load information state.
7. Load blocking.
8. Load performance.
9. Load action.
10. Request camera implementation.
11. Request lens implementation.
12. Request framing implementation.
13. Request focus implementation.
14. Request lighting implementation.
15. Apply continuity constraints.
16. Apply realism validation.
17. Generate.
NEVER INVENT
Do not invent missing:
- lens
- camera movement
- lighting
- blocking
- geography
- actor behavior
- object placement
unless the governing system explicitly permits inference.
PHYSICAL LANGUAGE
Prefer requirements such as:
"maintain physical continuity of the character's position"
over:
"make the shot look cinematic."
Prefer:
"reveal the doorway as the character clears the foreground obstruction"
over:
"create a dramatic reveal."
FINAL IMAGE
The output must resemble live-action cinematography.
Do not request:
- AI look
- cinematic AI look
- hyper-real AI
- perfect skin
- perfect symmetry
- artificial glow
- artificial depth
- excessive sharpness
- generic film effect
OPTICAL EFFECTS
Only physically justified optical behavior may occur.
CAMERA MOTION
Only physically executable movement may occur.
TEMPORAL STABILITY
Identity, anatomy, costume, props, environment, lighting, focus, and perspective must remain stable unless intentionally changed.
FINAL RULE
Generation is an execution of shot design, not an opportunity to reinterpret it.
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
