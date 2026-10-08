# CUTTING FOR CAMERA
# CINEMATOGRAPHY / GRAMMAR SUBSYSTEM
# STATUS: LOCKED

==================================================
PURPOSE
==================================================

This file defines editorial grammar in relation to camera state.

It does NOT control camera mechanics.

It determines how an editorial transition interacts with the visual
state created by the camera.

==================================================
CAMERA-AWARE EDITING
==================================================

A cut must account for:

- camera viewpoint
- camera movement state
- subject movement
- framing state
- screen direction
- eyeline
- spatial relationship
- visual momentum
- temporal state

The editor must not treat every frame as an isolated image.

==================================================
CUTTING DURING MOVEMENT
==================================================

A moving camera or moving subject may provide a natural transition point.

However:

movement alone does not automatically justify a cut.

Evaluate:

- movement direction
- movement phase
- visual continuity
- subject identity
- spatial continuity
- narrative purpose

Do not manufacture movement merely to hide a weak transition.

==================================================
CUTTING ON ACTION
==================================================

Cuts may occur during:

- walking
- turning
- reaching
- sitting
- standing
- entering
- exiting
- object interaction
- gesture
- head movement

The action must remain physically continuous across the cut.

Do not allow:

- teleporting limbs
- impossible action phase changes
- duplicated motion
- altered object positions
- changed body orientation without cause

==================================================
STATIC TO MOVING
==================================================

A transition between static and moving camera states must be intentional.

Do not assume:

STATIC → MOVING = escalation.

MOVING → STATIC may be equally meaningful.

==================================================
FRAMING TRANSITIONS
==================================================

A cut may change framing to:

- reveal information
- prioritize a subject
- isolate a reaction
- expand geography
- conceal information
- change perceptual emphasis

The framing subsystem determines physical placement.

Grammar determines why the relationship changes.

==================================================
LENS TRANSITIONS
==================================================

A cut between different lens states must remain optically coherent.

Do not treat lens changes as invisible if they materially alter:

- perspective
- spatial compression
- distortion
- depth rendering
- anamorphic behavior

Lens selection belongs to LENSES.

Grammar only determines whether a change is editorially justified.

==================================================
SCREEN DIRECTION
==================================================

Cuts must preserve or deliberately motivate changes in:

- movement direction
- gaze direction
- character orientation
- geographic orientation

Any apparent reversal must be evaluated against the established axis.

==================================================
CUTTING FOR INFORMATION
==================================================

A cut can reveal:

- who is present
- where someone is
- what someone sees
- what changed
- what is approaching
- what is hidden
- what happened elsewhere

Do not reveal information earlier than intended merely because a coverage
shot exists.

==================================================
CUTTING FOR EMOTION
==================================================

Emotional cutting must follow the scene's actual emotional development.

Do not use:

- automatic close-ups for emotion
- automatic rapid cutting for tension
- automatic slow cutting for sadness
- automatic handheld implication
- automatic lens changes

Emotion informs grammar; it does not dictate a preset.

==================================================
MACHINE-READABLE STATE
==================================================

cutting_for_camera:
  previous_shot_id:
  next_shot_id:
  previous_camera_state:
  next_camera_state:
  movement_state:
  subject_movement_state:
  framing_relationship:
  lens_relationship:
  screen_direction:
  eyeline_relationship:
  spatial_relationship:
  temporal_relationship:
  cut_motivation:
  action_continuity:
  visual_momentum:
  continuity_status:

==================================================
FINAL VALIDATION
==================================================

A camera-aware cut is valid only when:

- camera states are physically possible
- subject motion is continuous
- spatial geography remains coherent
- screen direction is valid
- eyeline is valid
- framing transition is intentional
- optical changes are physically explainable
- the cut has narrative/editorial justification

FINAL RULE:

THE CUT MUST RESPOND TO THE CAMERA'S PHYSICAL STATE WITHOUT EVER
BECOMING A CAMERA-MECHANICS SYSTEM.

==================================================
GRAMMAR SUBSYSTEM FINAL HARDENING — LOCKED
==================================================

AUTHORITY:

This file participates in the GRAMMAR subsystem.

No rule in this file may override:

1. physical reality
2. camera physics
3. optical physics
4. real-world spatial geometry
5. subject/actor physical behavior
6. temporal continuity
7. subsystem ownership

==================================================
NO EFFECT-FIRST REASONING
==================================================

NEVER:

STYLE → EFFECT → GRAMMAR

ALWAYS:

STORY → RELATIONSHIP → PHYSICAL REQUIREMENT → EXECUTION

==================================================
NO DIGITAL PATCHING
==================================================

When a grammatical problem occurs:

DO NOT:

- warp perspective
- digitally move subjects
- fake eyelines
- fake geography
- synthesize impossible movement
- alter facial geometry
- create artificial lens changes
- fabricate continuity through morphing

Instead:

RECALCULATE THE SHOT RELATIONSHIP.

==================================================
HUMAN CINEMATOGRAPHER RULE
==================================================

The system must behave as though:

- a real cinematographer
- a real camera operator
- real actors
- real physical locations
- real lenses
- real lighting
- real editorial decisions

created the sequence.

Human decision-making does not mean random imperfections.

It means:

- intentional choices
- physical limitations
- selective coverage
- natural corrections
- coherent continuity
- purposeful cuts
- restraint

==================================================
UNCERTAINTY RULE
==================================================

When information is insufficient:

DO NOT invent a cinematic effect.

Prefer:

- physically plausible
- spatially conservative
- continuity-preserving
- visually restrained

==================================================
CONFLICT RULE
==================================================

If two grammar rules conflict:

choose the rule that preserves the higher-priority physical,
spatial, temporal, and narrative constraint.

Never solve conflict by silently violating another subsystem.

==================================================
TEMPORAL STABILITY
==================================================

Within a continuous shot:

do not permit unexplained changes in:

- geography
- eyeline
- screen direction
- camera relationship
- framing relationship
- subject identity
- object state
- lighting
- optical state

==================================================
FINAL NON-NEGOTIABLE RULE
==================================================

THE GRAMMAR SYSTEM MUST PRODUCE CINEMATIC LOGIC,
NOT CINEMATIC DECORATION.

IF A DECISION MAKES THE RESULT LOOK MORE "CINEMATIC"
BUT LESS PHYSICALLY OR NARRATIVELY COHERENT:

REJECT THE DECISION.

## GRAMMAR SUBSYSTEM ARBITRATION HARDENING — LOCKED

==================================================
1. TEMPORAL CONTINUITY FIREWALL
==================================================

Distinguish between:

PHYSICAL TEMPORAL CONTINUITY

and

EDITORIAL TEMPORAL STRUCTURE.

Physical temporal continuity governs whether actions, bodies, objects,
lighting, environment, and physical states can coherently exist.

Editorial temporal structure governs:

- compression
- expansion
- omission
- parallel action
- flashback
- flash-forward
- repetition
- temporal juxtaposition
- deliberate temporal ambiguity

Grammar may manipulate EDITORIAL TIME.

Grammar may never violate PHYSICAL REALITY.

Therefore:

PHYSICAL TIME / STATE
    >
EDITORIAL TEMPORAL STRUCTURE
    >
SHOT ORDER
    >
STYLE

An editorial time jump must be explicitly represented.

==================================================
2. SINGLE GRAMMAR AUTHORITY
==================================================

camera_grammar.md is the top-level grammar orchestrator.

The other grammar files are specialized authorities.

Specialized files may define their own domain but may not silently
override another specialized domain.

If two grammar files conflict:

1. camera_grammar resolves the relationship
2. visual_continuity verifies the resulting state
3. physical reality overrides both if necessary

No file may create an implicit exception for itself.

==================================================
3. DOMAIN OWNERSHIP FIREWALL
==================================================

GRAMMAR owns:

- relationships between shots
- editorial relationships
- continuity logic
- sequence progression
- shot ordering
- transition justification

GRAMMAR does NOT own:

- lens physics
- camera mechanics
- lighting physics
- acting
- blocking
- physical geography
- frame geometry
- optical rendering

If a grammar requirement requires one of those:

GRAMMAR REQUESTS IT.

The appropriate subsystem IMPLEMENTS IT.

Grammar must never implement another subsystem's parameters.

==================================================
4. NO PARAMETER SMUGGLING
==================================================

A grammar instruction must never hide a physical parameter inside
descriptive language.

Forbidden examples:

"Use an intimate lens."

"Use a low camera."

"Use a long-lens reverse."

"Use handheld for instability."

"Move slowly toward the subject."

"Use a shallow depth of field."

These are physical camera/lens decisions.

Instead express:

"Increase subjective proximity."

"Change viewpoint to reduce environmental information."

"Increase perceptual isolation."

"Create a stronger spatial opposition."

The downstream camera/lens systems determine HOW.

==================================================
5. COVERAGE FIREWALL
==================================================

coverage.md may determine:

- what relationships require coverage
- what information requires coverage
- which viewpoints are editorially useful
- whether coverage is redundant

coverage.md may NOT determine:

- focal length
- camera distance
- camera height
- aperture
- camera movement mechanics
- lens character
- exact framing geometry

Those belong elsewhere.

==================================================
6. MASTER / REVERSE FIREWALL
==================================================

master_shot.md defines the grammatical function of the master.

reverse_shot.md defines the grammatical relationship between opposing
viewpoints.

Neither file may claim exclusive authority over:

- camera placement
- lens choice
- OTS geometry
- framing
- shot size

Those belong to their respective systems.

==================================================
7. SCREEN-DIRECTION FIREWALL
==================================================

The 180-degree principle is a continuity rule.

It is NOT an absolute prohibition.

A physically valid axis crossing is allowed when:

- the camera crosses visibly
- the subject moves
- the geography changes
- the viewpoint intentionally changes
- the narrative requires disorientation

However:

"intentional" alone is insufficient.

The axis break must have:

- a defined cause
- a defined grammatical purpose
- a defined resulting spatial state

==================================================
8. EYELINE TARGET REQUIREMENT
==================================================

Every meaningful eyeline must resolve to one of:

- identifiable subject
- identifiable object
- identifiable spatial target
- camera viewpoint
- intentionally unknown target

If the target is unknown:

UNKNOWN_TARGET must be explicitly represented.

Never fabricate a target after the fact merely to make two shots match.

==================================================
9. SHOT STATE INHERITANCE
==================================================

Every shot inherits the previous valid state unless a parameter is
explicitly changed.

Inherited state includes:

- geography
- subject identity
- subject position
- subject orientation
- action phase
- screen direction
- eyeline
- temporal state
- object state
- environment state
- camera relationship
- framing relationship
- lens relationship
- lighting relationship

A change requires:

CHANGE_REASON.

No silent state mutation is permitted.

==================================================
10. CHANGE CAUSALITY
==================================================

Every visible change must have exactly one primary cause.

Possible causes:

- physical movement
- camera movement
- camera repositioning
- lens change
- lighting change
- subject action
- environmental change
- temporal transition
- editorial transition
- intentional perceptual discontinuity

Do not use vague causes such as:

"cinematic"
"dramatic"
"stylized"
"more interesting"

Those describe intent, not cause.

==================================================
11. ORPHAN DECISION FIREWALL
==================================================

Every grammar decision must contain:

- PURPOSE
- RELATIONSHIP
- JUSTIFICATION
- EXPECTED RESULT
- DOWNSTREAM OWNER

If a decision has no downstream owner:

REJECT IT.

If a decision has no narrative or relational justification:

REJECT IT.

==================================================
12. CIRCULAR DEPENDENCY FIREWALL
==================================================

No file may justify its decision by referring back to itself indirectly.

Forbidden reasoning:

A requires B.
B requires A.
Therefore A is valid.

Every decision must ultimately resolve to:

PHYSICAL REALITY
or
STORY / SCENE REQUIREMENT.

==================================================
13. STYLE FIREWALL
==================================================

Style is never sufficient justification for:

- broken geography
- broken eyeline
- broken screen direction
- impossible movement
- impossible time
- impossible camera position
- optical inconsistency
- subject identity drift
- continuity failure

If style conflicts with reality:

STYLE LOSES.

==================================================
14. INTENTIONAL DISCONTINUITY FIREWALL
==================================================

The phrase:

"intentional discontinuity"

does NOT automatically validate a transition.

Intentional discontinuity requires:

1. identifiable discontinuity
2. explicit reason
3. intended audience effect
4. resulting spatial/temporal state
5. confirmation that the discontinuity is not caused by generation error

Generation failure must never be classified as artistic discontinuity.

==================================================
15. AI ARTIFACT CLASSIFICATION
==================================================

The following are NEVER acceptable as grammar:

- face morphing
- identity drift
- impossible limb transitions
- object teleportation
- geometry deformation
- background replacement without cause
- artificial parallax
- synthetic focus transitions
- artificial lens changes
- texture crawling
- temporal interpolation artifacts

These are generation failures.

They must be corrected at the physical/shot-generation level.

==================================================
16. SEQUENCE-LEVEL VALIDATION
==================================================

Do not validate shots only individually.

After all shots are evaluated, validate the entire sequence.

Check:

- geographic consistency
- temporal consistency
- character continuity
- object continuity
- screen direction
- eyeline
- progression
- coverage
- editorial logic
- camera relationship
- framing relationship
- lens relationship
- intentional discontinuities

A sequence fails if individual shots pass but their relationships fail.

==================================================
17. GRAMMAR STATE MACHINE
==================================================

Every transition must conceptually follow:

CURRENT_STATE
    ↓
CHANGE_REQUEST
    ↓
CAUSE
    ↓
TRANSITION
    ↓
NEW_STATE
    ↓
VALIDATION

Never:

CURRENT_STATE
    ↓
NEW_STATE

without an identifiable transition.

==================================================
18. NO RETROACTIVE JUSTIFICATION
==================================================

The system must determine the reason for a shot transition BEFORE
accepting the transition.

Do not generate a shot first and invent a grammatical justification
afterwards.

==================================================
19. MINIMUM INTERVENTION
==================================================

When several grammatically valid solutions exist:

prefer the solution that:

- changes the fewest variables
- preserves the most continuity
- requires the least physical complexity
- introduces the least visual instability
- communicates the required information clearly

Do not add complexity without benefit.

==================================================
20. AMBIGUITY CONTROL
==================================================

Ambiguity may be intentional.

However, distinguish:

INTENTIONAL AMBIGUITY

from:

UNRESOLVED SYSTEM STATE.

Intentional ambiguity must specify what is intentionally unknown.

Unresolved state must be recalculated.

==================================================
21. CUT VALIDATION
==================================================

Every cut must answer:

WHY HERE?

WHY THIS RELATIONSHIP?

WHAT CHANGES?

WHAT REMAINS CONSTANT?

WHAT DOES THE AUDIENCE LEARN?

WHAT PHYSICAL STATE IS INHERITED?

If these cannot be resolved:

DO NOT ACCEPT THE CUT.

==================================================
22. COVERAGE MINIMUM / MAXIMUM
==================================================

There is no universal minimum number of shots.

There is no universal maximum number of shots.

Coverage is sufficient when all required narrative and spatial
relationships can be represented coherently.

Additional coverage must justify its existence.

==================================================
23. PROGRESSION FIREWALL
==================================================

Shot progression must never be generated from:

- emotion alone
- music alone
- generic cinematic convention
- arbitrary shot-size escalation
- arbitrary cutting-rate escalation

Progression requires an observable change in:

- information
- spatial relationship
- temporal relationship
- character priority
- action
- perception
- narrative pressure

==================================================
24. REVERSE-SHOT FIREWALL
==================================================

A reverse does not imply:

- equal framing
- equal duration
- identical camera distance
- identical lens
- OTS
- symmetrical composition

It only establishes an opposing viewpoint relationship.

==================================================
25. MASTER-SHOT FIREWALL
==================================================

A master does not automatically:

- establish every detail
- remain valid forever
- require a wide shot
- require a static camera
- require continuous use

Its grammatical role must be explicitly defined.

==================================================
26. EDITORIAL VS PHYSICAL STATE
==================================================

Never confuse:

EDITORIAL STATE

with:

PHYSICAL STATE.

Example:

An edit may jump from morning to night.

That does not mean the physical world changed instantaneously.

The temporal transition must be represented as an editorial transition.

==================================================
27. FINAL ARBITRATION ORDER
==================================================

When any conflict exists:

1. PHYSICAL REALITY
2. PHYSICAL GEOGRAPHY
3. SUBJECT / OBJECT PHYSICS
4. CAMERA PHYSICS
5. OPTICAL PHYSICS
6. TEMPORAL PHYSICAL STATE
7. SPATIAL CONTINUITY
8. SUBJECT CONTINUITY
9. SCREEN DIRECTION
10. EYELINE
11. GRAMMAR
12. SHOT PURPOSE
13. INFORMATION CONTROL
14. EMOTIONAL INTENT
15. RHYTHM
16. STYLE

==================================================
28. FINAL FAILURE BEHAVIOR
==================================================

If a grammar requirement cannot be achieved without violating a
higher-priority constraint:

DO NOT FORCE THE REQUIREMENT.

Return:

GRAMMAR_CONFLICT = TRUE

and identify:

conflicting_rule:
violated_constraint:
required_revision:
affected_shots:

Then recalculate.

Never silently compromise physical realism.

==================================================
29. FINAL SEQUENCE REALISM GATE
==================================================

The complete sequence must appear to have been created through:

real spatial relationships
+
real subjects
+
real camera decisions
+
real optical behavior
+
real temporal relationships
+
real editorial decisions.

The audience must never need to perceive the underlying system.

==================================================
30. NON-NEGOTIABLE FINAL RULE
==================================================

THE SYSTEM MUST NEVER CHOOSE A GRAMMATICAL SOLUTION BECAUSE IT
"LOOKS CINEMATIC."

IT MUST CHOOSE THE SOLUTION BECAUSE IT IS:

PHYSICALLY PLAUSIBLE
+
SPATIALLY COHERENT
+
TEMPORALLY COHERENT
+
NARRATIVELY JUSTIFIED
+
EDITORIALLY PURPOSEFUL.

ONLY AFTER ALL OF THESE ARE SATISFIED MAY STYLE INFLUENCE THE RESULT.

==================================================
END OF GRAMMAR SUBSYSTEM ARBITRATION HARDENING
==================================================

## GRAMMAR SUBSYSTEM ZERO-LOOPHOLE HARDENING — FINAL LOCK

==================================================
SYSTEM STATUS
==================================================

This section is the final arbitration layer of the GRAMMAR subsystem.

It supplements all previous grammar rules.

No lower section, stylistic preference, special-case instruction,
shot instruction, prompt wording, or generated interpretation may
silently bypass this section.

==================================================
01. ABSOLUTE SYSTEM HIERARCHY
==================================================

The complete cinematography system resolves decisions in this order:

1. PHYSICAL REALITY
2. PHYSICAL GEOGRAPHY
3. SUBJECT / OBJECT PHYSICS
4. TEMPORAL PHYSICAL STATE
5. CAMERA PHYSICS
6. OPTICAL PHYSICS
7. LIGHTING PHYSICS
8. ACTING / BLOCKING REALITY
9. SPATIAL CONTINUITY
10. CHARACTER / OBJECT CONTINUITY
11. SCREEN DIRECTION
12. EYELINE
13. CINEMATIC GRAMMAR
14. SHOT PURPOSE
15. INFORMATION CONTROL
16. EMOTIONAL INTENT
17. RHYTHM
18. STYLE

No lower level may override a higher level.

==================================================
02. GRAMMAR IS RELATIONAL
==================================================

Grammar governs relationships.

Grammar does not independently create:

- lenses
- camera positions
- camera movements
- lighting
- acting
- blocking
- depth of field
- perspective
- distortion
- framing geometry
- visual effects

Grammar may REQUEST a downstream condition.

The appropriate subsystem must IMPLEMENT that condition.

==================================================
03. NO HIDDEN PHYSICAL PARAMETERS
==================================================

Grammar instructions must never smuggle physical camera instructions
through synonyms or descriptive language.

Do not interpret:

"intimate"
as automatically:
"close camera"

"powerful"
as automatically:
"low angle"

"isolated"
as automatically:
"shallow DOF"

"unstable"
as automatically:
"handheld"

"epic"
as automatically:
"wide lens"

"claustrophobic"
as automatically:
"ultra-wide close camera"

"cinematic"
as automatically:
"anamorphic"

"dramatic"
as automatically:
"camera movement"

These are not valid automatic mappings.

The downstream systems determine physical implementation.

==================================================
04. STATE INHERITANCE
==================================================

Every shot begins from the latest valid state.

For every relevant state parameter:

IF NOT CHANGED:
    INHERIT

IF CHANGED:
    REQUIRE CHANGE_REASON

IF INTENTIONALLY UNKNOWN:
    MARK UNKNOWN

IF INVALID:
    REJECT

No parameter may silently reset to a default.

No parameter may silently revert to:

- default lens
- default camera
- default framing
- default lighting
- default eyeline
- default screen direction
- default geography
- default temporal state

==================================================
05. STATE DELTA MODEL
==================================================

Every transition must conceptually contain:

PREVIOUS_STATE

+

STATE_DELTA

=

NEW_STATE

STATE_DELTA must identify:

- what changed
- why it changed
- whether the change is physical
- whether the change is editorial
- which subsystem owns the change
- whether continuity permits the change

No silent state mutation.

==================================================
06. CHANGE CAUSALITY
==================================================

Every meaningful visual change must have a causal chain:

CAUSE
→ PHYSICAL / EDITORIAL EVENT
→ VISUAL CONSEQUENCE

Examples:

SUBJECT TURNS
→ BODY ORIENTATION CHANGES
→ SCREEN DIRECTION MAY CHANGE

CAMERA CROSSES AXIS
→ VIEWPOINT CHANGES
→ SCREEN DIRECTION RELATIONSHIP MAY CHANGE

TIME JUMPS
→ EDITORIAL TEMPORAL TRANSITION
→ NEW TEMPORAL STATE

LENS CHANGES
→ OPTICAL CONFIGURATION CHANGES
→ DIFFERENT OPTICAL RENDERING

Never:

DESIRED LOOK
→ ARBITRARY VISUAL CHANGE

==================================================
07. ONE PRIMARY CAUSE
==================================================

Every major transition should have one primary cause.

Secondary consequences may exist.

Example:

PRIMARY:
character turns

SECONDARY:
eyeline changes
screen direction changes
framing changes

Do not invent multiple unrelated causes merely to justify an otherwise
unsupported transition.

==================================================
08. NO RETROACTIVE JUSTIFICATION
==================================================

A shot must not be generated first and justified afterward.

Required order:

PURPOSE
→ RELATIONSHIP
→ CAUSE
→ REQUIRED STATE
→ DOWNSTREAM IMPLEMENTATION
→ VALIDATION

Not:

GENERATE IMAGE
→ FIND EXPLANATION

==================================================
09. CUT BOUNDARY MODEL
==================================================

Every cut creates a boundary between:

SHOT_A_STATE

and

SHOT_B_STATE.

At the cut, determine:

- what continues
- what changes
- what is hidden
- what is revealed
- what is intentionally discontinuous

A cut must never be treated as a magical reset.

==================================================
10. MATCH-ON-ACTION
==================================================

Match-on-action is valid only when the underlying physical action
is coherent.

Preserve when required:

- action identity
- body orientation
- object relationship
- movement direction
- action phase
- temporal position

Do not use a cut to conceal impossible action reconstruction.

==================================================
11. MATCH CUT
==================================================

A match cut may connect:

- shape
- movement
- composition
- subject
- sound relationship
- concept
- visual pattern

However:

GRAPHIC SIMILARITY DOES NOT OVERRIDE PHYSICAL OR NARRATIVE LOGIC.

A match may be intentional and discontinuous.

It must be classified as such.

==================================================
12. GRAPHIC CONTINUITY VS SPATIAL CONTINUITY
==================================================

These are separate states.

GRAPHIC_CONTINUITY:
visual similarity across shots.

SPATIAL_CONTINUITY:
physical geographic continuity.

A graphic match may intentionally violate spatial continuity.

Never classify graphic similarity as geographic continuity.

==================================================
13. MONTAGE FIREWALL
==================================================

Montage may intentionally compress or restructure:

- time
- space
- action
- information

Montage does not eliminate the requirement to identify the editorial
relationship between shots.

Each montage transition must be classified as:

- continuous
- compressed
- associative
- contrastive
- parallel
- temporal
- subjective
- symbolic

"Montage" is not a universal excuse for continuity errors.

==================================================
14. PARALLEL EDITING
==================================================

Parallel action requires:

- independent spatial state
- independent temporal state
- independent subject state
- defined relationship between action threads

When intercut:

do not accidentally merge their geography.

Track each action thread independently.

==================================================
15. SUBJECTIVE VIEWPOINT FIREWALL
==================================================

A subjective viewpoint may intentionally alter normal continuity.

However, subjective grammar must still preserve:

- physical possibility
- identifiable viewpoint source
- temporal logic
- subject identity
- environmental geometry

Subjectivity does not authorize impossible optics or impossible
camera placement.

==================================================
16. POV VALIDATION
==================================================

For a POV shot:

POV_SOURCE must be defined.

POV_TARGET must be defined or explicitly unknown.

The camera viewpoint must correspond to the source's plausible
physical location.

A generic "POV look" is insufficient.

==================================================
17. OBJECTIVE VS SUBJECTIVE STATE
==================================================

Every sequence may contain:

OBJECTIVE_VIEW

SUBJECTIVE_VIEW

AMBIGUOUS_VIEW

The state must be known.

Do not silently move between them.

A transition between objective and subjective perception must have a
grammatical reason.

==================================================
18. OFF-SCREEN SPACE
==================================================

Off-screen space is a real spatial state.

When something exists outside the frame:

track:

- approximate location
- relation to subjects
- screen direction
- eyeline
- entry/exit relationship

Do not assume that an unseen object can occupy an arbitrary location
in the next shot.

==================================================
19. REVEAL / CONCEALMENT
==================================================

Grammar may intentionally:

- reveal
- conceal
- delay
- partially reveal
- recontextualize

Information.

However:

physical state must still exist even when hidden.

UNKNOWN_INFORMATION
does not mean:

UNKNOWN_PHYSICAL_STATE.

==================================================
20. INFORMATION STATE
==================================================

Track separately:

PHYSICAL_STATE
AUDIENCE_KNOWLEDGE
CHARACTER_KNOWLEDGE

These may differ.

Example:

An object may physically exist but be unknown to the audience.

Never alter physical reality merely to preserve audience ignorance.

==================================================
21. CHARACTER KNOWLEDGE FIREWALL
==================================================

Do not confuse:

WHAT THE CHARACTER KNOWS

with:

WHAT THE CAMERA CAN SEE.

A character may know something outside frame.

The camera may reveal something unknown to the character.

These are separate grammatical states.

==================================================
22. REACTION SHOTS
==================================================

A reaction shot must have:

- a source event
- a subject capable of reacting
- a plausible temporal position
- a meaningful relationship to the event

Do not insert reactions merely because they provide emotional coverage.

==================================================
23. DIALOGUE CONTINUITY
==================================================

Dialogue grammar must track:

- speaker
- listener
- turn order
- interruption
- reaction
- eyeline
- screen direction
- temporal position

Do not allow visual coverage to reorder dialogue causally.

==================================================
24. SILENCE / STILLNESS
==================================================

No action is itself a valid state.

Stillness must not automatically be interpreted as:

- missing footage
- weak coverage
- incomplete progression
- need for camera movement
- need for cutting

Stillness may be the intended grammar.

==================================================
25. CUT AVOIDANCE
==================================================

Do not introduce a cut merely because another shot exists.

A continuous shot should remain continuous when continuity, information,
performance, and narrative benefit from continuity.

A cut requires sufficient benefit to justify interrupting the current
visual state.

==================================================
26. CUT NECESSITY TEST
==================================================

Before adding a cut:

1. What does the next shot communicate that the current shot cannot?
2. Is the information sufficiently important?
3. Is the transition physically and grammatically coherent?
4. Would remaining in the current shot be stronger?
5. Does the cut alter spatial or temporal understanding?
6. Is that alteration intended?

If the cut provides no meaningful benefit:

PREFER CONTINUITY.

==================================================
27. SCENE BOUNDARY FIREWALL
==================================================

A scene boundary may reset some grammar states.

It may NOT automatically reset:

- character identity
- object identity
- narrative state
- established temporal state
- physical consequences
- unresolved continuity
- geographic relationships that remain relevant

Scene boundaries must explicitly identify what persists.

==================================================
28. SEQUENCE BOUNDARY FIREWALL
==================================================

A sequence boundary may establish a new visual grammar state.

However, inherited world facts remain valid unless changed.

Do not treat:

NEW_SEQUENCE

as:

NEW_PHYSICAL_WORLD.

==================================================
29. CROSS-SEQUENCE CONTINUITY
==================================================

When sequences are directly related, verify:

- character state
- object state
- costume state
- environment state
- time
- geography
- narrative consequence

A sequence transition may be discontinuous editorially while remaining
continuous in physical story state.

==================================================
30. CONTINUITY EXCEPTION REGISTER
==================================================

Any deliberate exception must contain:

exception_id:
affected_shots:
affected_parameter:
previous_state:
new_state:
reason:
physical_or_editorial:
audience_effect:
validation:

No unnamed exception is permitted.

==================================================
31. EXCEPTION EXPIRATION
==================================================

A temporary exception applies only to the specified scope.

It must not propagate automatically to later shots.

After the exception:

RESTORE_PREVIOUS_STATE

or

ESTABLISH_NEW_STATE_EXPLICITLY.

==================================================
32. UNKNOWN STATE FIREWALL
==================================================

UNKNOWN is a valid state.

UNKNOWN must never silently become:

- false
- true
- unchanged
- default
- physically impossible

When a required state is unknown:

mark:

STATE_INCOMPLETE = TRUE

and resolve before final validation.

==================================================
33. CONFLICT REGISTER
==================================================

When conflicting requirements exist:

record:

conflict_id:
rule_a:
rule_b:
affected_shots:
higher_priority_rule:
rejected_rule:
resolution:
reason:

Never silently choose one.

==================================================
34. NO CIRCULAR AUTHORITY
==================================================

A grammar rule cannot justify itself by referencing another rule that
ultimately depends on the original rule.

Every chain must terminate at:

PHYSICAL REALITY

or

STORY / SCENE REQUIREMENT.

==================================================
35. NO SELF-REFERENTIAL STYLE
==================================================

Statements such as:

"because this is cinematic"

"because this feels epic"

"because this looks professional"

"because this feels emotional"

are not valid technical justifications.

They may describe intent.

They cannot establish physical validity.

==================================================
36. EMOTION IS NOT A CAMERA PRESET
==================================================

Never map emotional states directly to technical solutions.

Examples of forbidden automatic mappings:

sad
→ close-up

powerful
→ low angle

fear
→ handheld

romantic
→ shallow DOF

epic
→ anamorphic

confused
→ Dutch angle

tense
→ fast cuts

These may be valid choices in individual scenes.

They are never automatic rules.

==================================================
37. STYLE IS A MODIFIER, NOT AN AUTHORITY
==================================================

Style may modify a valid cinematic solution.

Style may not invalidate:

- physical reality
- continuity
- geography
- optical consistency
- subject identity
- temporal logic

==================================================
38. MINIMUM COMPLEXITY
==================================================

When multiple valid solutions exist:

prefer the solution with:

- fewer unnecessary changes
- fewer simultaneous variables
- fewer continuity risks
- fewer physical assumptions
- simpler causal structure

unless the story explicitly requires greater complexity.

==================================================
39. MINIMUM INTERVENTION
==================================================

Do not change:

- camera state
- framing state
- lens state
- geography
- temporal state
- subject state

unless the change serves a defined purpose.

==================================================
40. VISUAL NOVELTY FIREWALL
==================================================

Visual variety is not a sufficient reason for:

- new angle
- new lens
- new movement
- new framing
- new axis
- new cutting pattern

Avoid variation for variation's sake.

==================================================
41. COVERAGE NOVELTY FIREWALL
==================================================

Additional coverage must answer at least one:

- new information
- new reaction
- new spatial relationship
- new action
- new character priority
- new editorial option

Otherwise:

COVERAGE_REDUNDANT = TRUE.

==================================================
42. PROGRESSION VALIDITY
==================================================

Every progression step must identify:

PREVIOUS_STATE
→ CHANGE
→ PURPOSE
→ NEW_STATE

If no meaningful change exists:

do not manufacture progression.

==================================================
43. RHYTHM FIREWALL
==================================================

Rhythm may be affected by:

- shot duration
- movement
- action
- dialogue
- silence
- repetition
- visual complexity
- information density

Rhythm must not automatically determine any specific:

- lens
- camera movement
- framing
- shot size
- stabilization method

==================================================
44. EDITORIAL TRANSITION TYPES
==================================================

Every transition should be classified where relevant as:

CUT
MATCH_CUT
MATCH_ON_ACTION
DISSOLVE
FADE
WIPE
TEMPORAL_JUMP
PARALLEL_CUT
MONTAGE
CONTINUOUS_TRANSITION
OTHER_EXPLICIT_TRANSITION

A transition must not be ambiguous merely because the generation model
does not know how to classify it.

==================================================
45. TRANSITION OWNERSHIP
==================================================

Grammar determines:

WHY the transition occurs.

Editorial system determines:

HOW the transition is represented.

Camera system determines:

HOW physical camera state participates.

Never merge these responsibilities.

==================================================
46. SHOT IDENTITY
==================================================

Every shot must have a unique identity within its sequence.

Required conceptual fields:

scene_id:
sequence_id:
shot_id:
previous_shot_id:
next_shot_id:

No transition should rely solely on descriptive labels such as:

"the next shot"

or:

"another angle."

==================================================
47. STATE PERSISTENCE
==================================================

Persistent state must survive cuts unless explicitly changed.

This includes:

- identity
- location
- object ownership
- physical consequences
- action consequences
- established relationships

Editorial cutting cannot erase physical consequences.

==================================================
48. OBJECT CONTINUITY
==================================================

Important objects require state tracking.

Track where relevant:

- position
- orientation
- possession
- condition
- visibility
- interaction
- damage
- transformation

Do not allow objects to appear, disappear, duplicate, or change condition
without cause.

==================================================
49. HUMAN CONTINUITY
==================================================

Track where relevant:

- identity
- clothing
- body orientation
- action state
- emotional state
- physical condition
- relative position
- interaction

Do not use grammar to conceal AI identity drift.

==================================================
50. PERFORMANCE CONTINUITY
==================================================

Performance must not be treated as infinitely editable between cuts.

Preserve when relevant:

- gesture phase
- body orientation
- gaze
- expression state
- physical action
- dialogue timing

If performance intentionally changes:

identify the cause.

==================================================
51. GEOGRAPHIC ANCHOR
==================================================

Important scenes should maintain a conceptual geographic model.

Track:

- subject positions
- major environmental landmarks
- entrances
- exits
- interaction zones
- camera relationship
- relevant off-screen locations

A shot may omit geography visually.

It may not contradict established geography.

==================================================
52. AXIS STATE MACHINE
==================================================

For relevant scenes track:

AXIS_UNESTABLISHED
→ AXIS_ESTABLISHED
→ AXIS_PRESERVED

or:

AXIS_ESTABLISHED
→ AXIS_CROSSING
→ NEW_AXIS_STATE

Do not silently switch axis states.

==================================================
53. EYELINE STATE MACHINE
==================================================

Track:

NO_TARGET
→ TARGET_ESTABLISHED
→ TARGET_MAINTAINED

or:

TARGET_ESTABLISHED
→ TARGET_CHANGED
→ NEW_TARGET_ESTABLISHED

An eyeline change requires a cause.

==================================================
54. SCREEN-DIRECTION STATE MACHINE
==================================================

Track:

UNESTABLISHED
→ ESTABLISHED
→ PRESERVED

or:

ESTABLISHED
→ CHANGE
→ NEW_STATE

Never silently reverse movement or gaze direction.

==================================================
55. TEMPORAL STATE MACHINE
==================================================

Track:

TIME_STATE_ESTABLISHED
→ CONTINUOUS_TIME

or:

TIME_STATE_ESTABLISHED
→ EDITORIAL_TIME_TRANSITION
→ NEW_TIME_STATE

Do not silently jump time.

==================================================
56. INFORMATION STATE MACHINE
==================================================

Track:

UNKNOWN
→ PARTIAL
→ REVEALED
→ RECONTEXTUALIZED

Information may be hidden or revealed.

Physical state may not be altered merely because information is hidden.

==================================================
57. FAILURE STATES
==================================================

The system must support explicit failure.

Valid failure states include:

GRAMMAR_CONFLICT
STATE_INCOMPLETE
CONTINUITY_FAILURE
GEOGRAPHY_FAILURE
EYELINE_FAILURE
SCREEN_DIRECTION_FAILURE
TEMPORAL_FAILURE
COVERAGE_FAILURE
TRANSITION_FAILURE
PHYSICAL_IMPLEMENTATION_FAILURE
OWNERSHIP_CONFLICT

Failure must trigger recalculation.

Never silently downgrade failure to "acceptable style."

==================================================
58. FAIL-SAFE BEHAVIOR
==================================================

If the system cannot determine a valid solution:

PREFER:

- simpler continuity
- stable geography
- stable identity
- stable eyeline
- stable screen direction
- stable temporal state
- minimal changes

over:

- invented complexity
- arbitrary stylistic decisions
- unexplained discontinuity
- artificial effects

==================================================
59. FINAL SHOT GATE
==================================================

Before a shot enters the final sequence:

VERIFY:

- identity
- geography
- temporal state
- action state
- screen direction
- eyeline
- camera relationship
- framing relationship
- lens relationship
- information state
- continuity state
- transition purpose

==================================================
60. FINAL SEQUENCE GATE
==================================================

After all shots are assembled:

VERIFY THE COMPLETE SEQUENCE.

Do not stop after individual shot validation.

The sequence must be:

PHYSICALLY PLAUSIBLE
+
SPATIALLY COHERENT
+
TEMPORALLY COHERENT
+
CHARACTER-COHERENT
+
EDITORIALLY COHERENT
+
CINEMATICALLY PURPOSEFUL.

==================================================
61. FINAL REALISM FIREWALL
==================================================

Reject any result that appears to rely on:

- AI morphing
- image warping
- synthetic perspective
- artificial depth
- fake camera movement
- impossible object motion
- impossible actor movement
- unstable identity
- temporal flicker
- geometry deformation
- arbitrary lens effects
- arbitrary optical artifacts

The solution must be recalculated at the appropriate subsystem.

==================================================
62. NO "NOLAN FILTER"
==================================================

The system must not encode a director-specific visual preset.

It may support sophisticated principles such as:

- controlled continuity
- deliberate discontinuity
- spatial ambiguity
- temporal restructuring
- parallel action
- information withholding
- visual callbacks
- repetition
- restraint
- motivated escalation
- subjective perception
- precise editorial rhythm

But these remain GENERAL CINEMATIC GRAMMAR.

They must not become:

"make every scene look like a specific director."

==================================================
63. NO CINEMATIC CLICHES
==================================================

Never use a convention as a substitute for reasoning.

Forbidden reasoning:

"Movies usually do this."

"That is cinematic."

"That is dramatic."

"That is how a thriller is shot."

"That is how emotional scenes work."

Every decision requires scene-specific justification.

==================================================
64. FINAL ARBITRATION
==================================================

When ANY two valid-looking instructions conflict:

A. identify the conflict
B. identify ownership
C. identify physical constraints
D. identify continuity constraints
E. identify narrative requirement
F. select the higher-priority valid rule
G. record the rejected alternative
H. validate the resulting state

Never silently resolve conflict.

==================================================
65. FINAL ZERO-LOOPHOLE TEST
==================================================

Before accepting ANY grammar decision, ask:

1. What is the physical state?
2. What is the spatial state?
3. What is the temporal state?
4. What is the subject state?
5. What is the current grammar state?
6. What changed?
7. Why did it change?
8. Who owns that change?
9. Is the change physically possible?
10. Is the change narratively justified?
11. Is continuity preserved?
12. If continuity is broken, is the break explicitly classified?
13. Is the break genuinely intentional?
14. Is the audience effect defined?
15. Is the downstream implementation defined?
16. Is any subsystem being overridden?
17. Is any parameter being smuggled through descriptive language?
18. Is the decision relying on a cinematic cliché?
19. Is the decision relying on style as justification?
20. Is the decision adding unnecessary complexity?
21. Does the sequence still work as a whole?
22. Could a simpler physically valid solution communicate the same thing?

If ANY required answer is unresolved:

DO NOT ACCEPT THE DECISION.

==================================================
66. ABSOLUTE FINAL RULE
==================================================

THE GRAMMAR SYSTEM MUST NEVER INVENT A CINEMATIC SOLUTION
JUST BECAUSE IT LOOKS GOOD.

IT MUST DISCOVER THE MOST APPROPRIATE CINEMATIC RELATIONSHIP
FROM:

PHYSICAL REALITY
+
SCENE GEOGRAPHY
+
TIME
+
CHARACTER ACTION
+
INFORMATION
+
NARRATIVE PURPOSE.

THEN:

GRAMMAR
→
EDITORIAL RELATIONSHIP
→
DOWNSTREAM PHYSICAL IMPLEMENTATION
→
VALIDATION.

THE SYSTEM MUST BE CAPABLE OF:

CONTINUITY

AND

DELIBERATE DISCONTINUITY

WITHOUT CONFUSING ONE FOR THE OTHER.

THE SYSTEM MUST BE CAPABLE OF:

STILLNESS

AND

MOVEMENT

WITHOUT PRESCRIBING EITHER.

THE SYSTEM MUST BE CAPABLE OF:

CLASSICAL CONTINUITY

AND

ADVANCED EDITORIAL STRUCTURE

WITHOUT SACRIFICING PHYSICAL REALISM.

THE FINAL RESULT MUST ALWAYS BE CONSISTENT WITH THE
OVERARCHING REQUIREMENT:

IT MUST LOOK LIKE REAL, PROFESSIONALLY PHOTOGRAPHED CINEMA,
NOT AI-GENERATED CINEMA.

==================================================
END OF ZERO-LOOPHOLE HARDENING
==================================================
