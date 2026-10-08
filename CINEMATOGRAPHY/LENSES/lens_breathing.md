# LENS BREATHING BEHAVIOUR

## PURPOSE

Control the change in apparent framing, magnification, and field of view that can occur when a real lens changes focus distance.

Lens breathing is an optical characteristic of the selected lens.

It is NOT a camera zoom.

It is NOT a digital scaling effect.

It is NOT something that should be added to every focus pull.

The system must determine whether breathing exists, how strong it is, and how it manifests based on the selected physical lens and focus transition.

==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage from a real camera and real physical lens.

It must NEVER look AI-generated.

Lens breathing must remain:

- physically plausible
- lens-dependent
- continuous
- subtle unless the selected lens genuinely has strong breathing
- temporally consistent
- optically coherent
- subordinate to story and composition

NEVER create:

- artificial zoom during focus pulls
- digital push-in/pull-out
- frame scaling
- sudden FOV jumps
- perspective morphing
- background resizing
- geometry warping
- subject stretching
- face distortion
- focus-triggered camera movement
- random breathing
- breathing that appears only for dramatic emphasis
- frame pumping unrelated to focus
- unstable composition
- AI-generated perspective changes

When uncertain, use less noticeable breathing.

PHYSICAL OPTICAL REALISM ALWAYS TAKES PRIORITY OVER VISUAL EFFECT.

==================================================
OPTICAL CAUSALITY / UNKNOWN-PARAMETER RULE
==================================================

Lens breathing must be derived from the selected physical lens and its
focus-dependent optical behaviour.

UNKNOWN does not mean:

- visible breathing
- strong breathing
- weak breathing
- magnification change
- FOV change
- zoom-like movement
- perspective change

If the lens breathing behaviour is unknown, do not invent a visible framing
change.

Use the least noticeable physically plausible behaviour.

NO FOCUS CHANGE
→ NO FOCUS-INDUCED BREATHING

FOCUS CHANGE + NO SUPPORTED BREATHING
→ STABLE FRAMING

FOCUS CHANGE + SUPPORTED BREATHING
→ LENS-DEPENDENT OPTICAL FRAMING CHANGE

==================================================
LENS SELECTION PRECEDENCE
==================================================

The selected lens and lens profile must be established before determining
breathing behaviour.

Order:

LENS SYSTEM
→ LENS TYPE
→ LENS PROFILE
→ SENSOR FORMAT / ACTIVE AREA
→ FOCAL LENGTH
→ FOCUS DISTANCE
→ APERTURE
→ LENS INTERNAL OPTICAL MOVEMENT
→ BREATHING CHARACTER
→ RESULTING APPARENT FRAMING

Do not choose a desired breathing effect and then invent a lens profile to
produce it.

Lens breathing must remain subordinate to the selected lens design.

==================================================
BREATHING AUTHORIZATION
==================================================

Breathing may occur only when supported by the selected optical system.

FORCED:
Explicitly specified by a physically valid lens profile.

DERIVED:
Naturally produced by the selected lens as focus changes.

ALLOWED:
Physically plausible but not necessarily visible.

DISABLED:
The selected lens profile is effectively breathing-compensated or no
visible breathing is supported.

Narrative intent can determine whether an available breathing characteristic
is acceptable, but narrative intent cannot manufacture breathing.

==================================================
PHYSICAL FRAMING RULE
==================================================

Lens breathing affects the complete optical image.

If apparent magnification changes:

- foreground participates
- subject participates
- background participates
- architectural geometry remains coherent
- relative spatial relationships remain physically stable

Never resize individual objects independently.

Never preserve one object at a fixed scale while selectively changing
another.

The result must emerge from one coherent optical image.

==================================================
BREATHING / PERSPECTIVE FIREWALL
==================================================

Lens breathing may alter apparent framing or effective field of view.

It does NOT physically move the camera.

Therefore it must NOT independently create:

- dolly perspective
- changed camera position
- altered relative depth caused by camera movement
- background movement through space
- subject-to-camera distance changes
- parallax associated with physical camera movement

If perspective changes, identify the separate camera-position change that
caused it.

If only focus changes, preserve camera position and physical scene geometry.

==================================================
BREATHING / FOV FIREWALL
==================================================

Breathing may produce an apparent FOV change as a consequence of the lens
changing optical configuration during focus.

Do not model this as an independent digital FOV parameter.

The correct chain is:

FOCUS CHANGE
→ INTERNAL LENS MOVEMENT
→ EFFECTIVE OPTICAL CHANGE
→ APPARENT FRAMING / FOV CHANGE

Never:

FOCUS CHANGE
→ DIGITAL FOV CHANGE
→ IMAGE SCALING

==================================================
BREATHING MAGNITUDE VALIDATION
==================================================

Before allowing visible breathing, evaluate:

1. Selected lens profile.
2. Lens optical design.
3. Starting focus distance.
4. Ending focus distance.
5. Focal length.
6. Focus mechanism.
7. Internal optical movement.
8. Sensor format / active area.
9. Camera position.
10. Subject distance.
11. Background distance.
12. Focus transition speed.
13. Whether breathing compensation is present.

If these dependencies do not support visible breathing, suppress it.

Do not increase breathing merely because the focus-distance change is large.

Focus-distance range is a contributor, not a standalone authorization.

==================================================
BREATHING DIRECTION VALIDATION
==================================================

Do not assume all lenses breathe in the same direction.

The apparent image may:

- magnify slightly
- reduce in magnification
- remain nearly stable

The direction must follow the selected lens profile.

Never reverse breathing direction during a single continuous focus
transition without a physically supported optical reason.

==================================================
CONTINUITY RULE
==================================================

Breathing must remain continuous with the focus transition.

The physical relationship is:

FOCUS POSITION
→ LENS OPTICAL STATE
→ APPARENT FRAMING

Therefore:

- no sudden zoom step
- no FOV jump
- no discontinuous magnification
- no framing snap
- no arbitrary breathing onset
- no arbitrary breathing termination

Every intermediate frame must represent a plausible intermediate optical
state.

==================================================
FOCUS-SPEED COUPLING
==================================================

Breathing progression must follow the physical progression of the focus
mechanism.

A faster focus transition compresses the breathing change into less time.

A slower focus transition distributes the breathing change over more time.

Do not create a separate animation curve for breathing.

Focus curve and breathing response must remain causally coupled.

==================================================
CAMERA-MOVEMENT SEPARATION
==================================================

When camera movement and focus change occur simultaneously, model them as
independent physical processes.

CAMERA MOVEMENT:
changes camera position and perspective.

LENS BREATHING:
changes apparent optical framing during focus.

Both may affect the final image simultaneously.

Never use breathing to replace missing camera movement.

Never use camera movement to manufacture lens breathing.

==================================================
BREATHING COMPENSATION RULE
==================================================

If the selected lens or camera system is designed to minimize or compensate
for focus breathing:

VISIBLE BREATHING
→ NONE or MINIMAL

Do not reintroduce breathing because a rack focus is present.

A breathing-compensated lens must remain visually stable according to its
actual optical profile.

==================================================
CHARACTER / GEOMETRY FIREWALL
==================================================

Lens breathing must never become subject morphing.

Faces must maintain:

- identity
- facial proportions
- eye spacing
- nose geometry
- jaw geometry
- hairline
- skin texture

Architecture must maintain:

- straight lines
- stable windows
- stable columns
- stable structural proportions
- coherent perspective

Objects must not stretch, bend, or morph as apparent magnification changes.

==================================================
AI ARTIFACT FIREWALL
==================================================

The physical chain must always be:

FOCUS CHANGE
→ INTERNAL LENS MOVEMENT
→ EFFECTIVE OPTICAL GEOMETRY
→ APPARENT FRAMING CHANGE
→ FINAL IMAGE

Never:

DESIRED CINEMATIC ZOOM
→ DIGITAL SCALING
→ BACKGROUND RESIZING
→ SUBJECT RESIZING
→ FINAL IMAGE

Never simulate breathing using:

- digital zoom
- image scaling
- cropping
- perspective warping
- depth-map scaling
- subject-specific magnification
- background resizing
- compositing
- AI interpolation

The system must not infer lens breathing from the desired visual appearance.

==================================================
TEMPORAL VALIDATION
==================================================

Every change in apparent framing must have a physical cause.

Reject:

- frame pumping
- breathing flicker
- random zooming
- sudden FOV jumps
- magnification oscillation
- background resizing
- foreground resizing
- geometry morphing
- face distortion
- breathing reversal without cause
- unstable edge behaviour

The entire image must remain temporally coherent.

==================================================
MINIMUM OPTICAL INTERVENTION
==================================================

When multiple physically valid outcomes are possible, select the least
conspicuous breathing behaviour.

Do not maximize:

- magnification change
- FOV change
- framing movement
- breathing visibility
- lens character

unless the selected lens naturally produces it.

A focus pull with effectively invisible breathing is a valid and often
preferred result.

==================================================
FINAL BREATHING REALISM RULE
==================================================

Lens breathing is successful only when it appears to be a natural
consequence of the selected physical lens changing focus.

The viewer should perceive:

"the lens is changing focus"

not:

"the camera is digitally zooming."

REAL OPTICAL CAUSALITY
>
OPTICAL CONSISTENCY
>
TEMPORAL CONSISTENCY
>
CINEMATIC COMPOSITION
>
VISIBLE BREATHING

The final result must remain indistinguishable from real optical capture.


==================================================
WHAT LENS BREATHING IS
==================================================

Lens breathing is the apparent change in framing or field of view that occurs as the lens changes focus distance.

During a focus pull:

FOCUS DISTANCE CHANGES
â†’ INTERNAL OPTICAL ELEMENTS MOVE
â†’ EFFECTIVE OPTICAL GEOMETRY CHANGES
â†’ APPARENT MAGNIFICATION / FIELD OF VIEW MAY CHANGE

The image can therefore appear to:

- slightly push in
- slightly pull out
- change apparent framing
- change apparent magnification
- alter edge relationships

The camera itself has not necessarily moved.

Do not model this as a physical dolly.

==================================================
BREATHING VS ZOOM
==================================================

These must remain separate.

### LENS BREATHING

Caused by:

- focus change
- internal lens movement
- lens optical design

### ZOOM

Caused by:

- changing focal length

### DOLLY

Caused by:

- physically moving the camera

They can occur simultaneously, but they are different physical processes.

Never simulate lens breathing by applying a digital zoom.

==================================================
BREATHING VS PERSPECTIVE
==================================================

Lens breathing can change apparent framing and field of view.

It does not mean the camera physically moved through space.

Therefore, do not automatically reproduce the perspective transformation of a dolly.

Maintain stable physical relationships between objects.

Do not make the background appear to physically move closer simply because the lens is breathing.

==================================================
LENS DEPENDENCE
==================================================

Breathing varies substantially between lens designs.

### MODERN CINE LENS

Typically:

- low breathing
- highly controlled framing
- smooth focus behaviour
- stable composition

### PHOTO / STILL LENS

May exhibit:

- moderate breathing
- noticeable framing change
- varying behaviour depending on lens design

### VINTAGE / CHARACTER LENS

May exhibit:

- stronger breathing
- more noticeable magnification changes
- less corrected optical behaviour

However:

VINTAGE does NOT automatically mean strong breathing.

Always follow the selected lens profile.

==================================================
FOCUS PULL RELATIONSHIP
==================================================

Lens breathing should occur only when focus changes enough to produce it.

No focus movement:

â†’ no focus-induced breathing.

Small focus movement:

â†’ generally small breathing.

Large focus-distance change:

â†’ potentially more noticeable breathing.

The magnitude depends on the lens.

Do not apply the same breathing percentage to every focus transition.

==================================================
BREATHING DIRECTION
==================================================

Different lenses may exhibit different apparent behaviour.

During a focus pull, the image may appear to:

- slightly magnify
- slightly reduce in magnification
- remain almost constant

Determine this from the lens profile.

Never assume that all lenses breathe in the same direction.

==================================================
BREATHING MAGNITUDE
==================================================

Breathing should normally be subtle.

The audience should generally perceive:

"the lens is changing focus"

rather than:

"the camera is zooming."

Avoid dramatic framing changes unless the selected lens is specifically known for strong breathing.

Default hierarchy:

MINIMAL
â†’ LOW
â†’ MODERATE
â†’ STRONG

Use STRONG only when justified by:

- selected lens
- focus-distance range
- lens design
- explicit cinematographic requirement

Do not increase breathing simply to make a rack focus more dramatic.

==================================================
FOCUS DISTANCE RANGE
==================================================

Breathing may become more noticeable across large changes in focus distance.

For example:

very close subject
â†’ distant subject

may produce a larger apparent framing change than:

near subject
â†’ slightly farther subject.

However, the lens design remains the dominant factor.

Do not infer breathing solely from focus-distance difference.

==================================================
FOCUS TRANSITION
==================================================

Breathing must evolve continuously throughout the focus transition.

Example:

START:
stable framing

FOCUS BEGINS:
very small framing change

MID-TRANSITION:
breathing gradually increases

FOCUS APPROACHES TARGET:
breathing gradually settles

END:
stable new framing

Never:

START
â†’ sudden zoom
â†’ END

The change must be optically continuous.

==================================================
FOCUS PULL SPEED
==================================================

Breathing speed follows the focus transition.

Fast focus pull:

â†’ breathing occurs more quickly.

Slow focus pull:

â†’ breathing occurs more gradually.

Do not alter breathing speed independently from the focus movement.

==================================================
EASE-IN / EASE-OUT
==================================================

If the focus pull accelerates or decelerates:

the apparent breathing response should follow the same physical focus progression.

Do not create a separate digital zoom curve.

The framing change should emerge naturally from the focus movement.

==================================================
STATIC SHOT
==================================================

If the camera is locked off and the lens performs a rack focus:

any framing change should come from lens breathing alone.

The camera position must remain unchanged.

Do not simulate breathing by moving the camera.

==================================================
CAMERA MOVEMENT
==================================================

When focus transition occurs simultaneously with:

- dolly
- tracking
- crane
- orbit
- handheld
- push-in
- pull-out

separate the effects.

CAMERA MOVEMENT:
changes camera position and perspective.

LENS BREATHING:
changes apparent optical framing during focus.

Both may contribute to the final composition.

Do not let one effect incorrectly replace the other.

==================================================
DOLLY + FOCUS
==================================================

When a camera moves toward a subject while maintaining focus:

two independent effects may occur:

1. perspective changes because the camera moves
2. framing may change because the lens breathes

Model both independently.

Do not attribute all apparent magnification to lens breathing.

==================================================
RACK FOCUS BETWEEN DEPTH PLANES
==================================================

For:

foreground subject
â†’ background subject

the system must determine:

- starting focus distance
- ending focus distance
- focus transition
- lens breathing
- resulting framing change

The background should become sharp progressively.

The framing may change subtly according to the lens.

Do not resize the background artificially.

==================================================
FACES
==================================================

Lens breathing must never alter character identity.

During a focus pull involving a face:

maintain:

- stable facial proportions
- stable eye spacing
- stable nose shape
- stable jaw geometry
- stable hairline
- stable skin texture

Any apparent magnification change must be optically coherent.

Do not allow breathing to become face morphing.

==================================================
ARCHITECTURE
==================================================

Architecture must remain geometrically stable.

During lens breathing:

- lines remain physically consistent
- structures do not bend
- windows do not change shape
- columns do not stretch
- buildings do not morph

Only the apparent optical framing may change.

==================================================
BACKGROUND
==================================================

Background elements should change apparent scale consistently with the optical breathing.

Do not selectively resize individual objects.

If the entire frame experiences slight magnification:

all scene elements must participate coherently.

==================================================
FOREGROUND
==================================================

Foreground elements must also respond consistently.

Do not allow foreground objects to remain fixed while background objects resize.

Lens breathing affects the complete optical image.

==================================================
FIELD OF VIEW
==================================================

Breathing can produce a small effective FOV change during focusing.

However:

this does not mean the system should explicitly "zoom the FOV."

Instead:

the selected lens profile determines how focus changes alter apparent framing.

The result should emerge from the optical model.

==================================================
ANAMORPHIC LENSES
==================================================

Anamorphic lenses can exhibit distinctive breathing behaviour.

Depending on the design:

focus changes may affect:

- apparent magnification
- field of view
- edge rendering
- spatial compression
- bokeh geometry
- close-focus rendering

However:

anamorphic does NOT automatically mean strong breathing.

Do not introduce exaggerated frame movement merely because an anamorphic lens is selected.

Follow the specific lens profile.

==================================================
SPHERICAL LENSES
==================================================

Spherical lenses should exhibit breathing according to their optical construction.

Do not give every spherical lens identical breathing.

Modern cinema spherical lenses may have extremely low breathing.

Vintage spherical lenses may have more noticeable breathing.

==================================================
FOCUS BREATHING AND BOKEH
==================================================

As focus changes:

bokeh may change because the focal plane changes.

Lens breathing may simultaneously alter apparent framing.

Keep these phenomena separate.

Do not create a framing change merely because bokeh changes.

Do not enlarge bokeh artificially to simulate breathing.

==================================================
FOCUS BREATHING AND DEPTH OF FIELD
==================================================

Lens breathing does not itself determine depth of field.

Depth of field remains dependent on:

- focal length
- aperture
- focus distance
- sensor format
- subject distance
- background distance

Breathing is an optical framing characteristic.

Do not use breathing as a substitute for correct DOF calculation.

==================================================
FOCUS BREATHING AND FLARE
==================================================

Focus breathing does not automatically produce lens flare.

If a strong light source is present:

flare behaviour must be calculated independently.

Do not add flare simply because focus is changing.

==================================================
FOCUS BREATHING AND GHOSTING
==================================================

Ghosting is an internal-reflection phenomenon.

Breathing does not automatically produce ghosting.

If the source and optical geometry cause ghosting to change during focus:

allow it to change naturally.

Do not force ghosting to move simply because breathing occurs.

==================================================
FOCUS BREATHING AND CHROMATIC ABERRATION
==================================================

Chromatic aberration may change subtly during focus depending on the lens.

However:

do not introduce RGB shifts simply because focus changes.

Any chromatic behaviour must follow the selected lens profile.

==================================================
TEMPORAL CONSISTENCY
==================================================

Lens breathing must remain perfectly coherent throughout the video.

NEVER allow:

- frame pumping
- random zooming
- sudden FOV jumps
- breathing reversal without optical cause
- background resizing
- foreground resizing independently
- geometry morphing
- face distortion
- breathing flicker
- unstable edge behaviour
- inconsistent magnification

Every change must correspond to actual focus movement or camera/lens behaviour.

==================================================
NO DIGITAL SIMULATION
==================================================

Do not simulate breathing using:

- digital zoom
- image scaling
- cropping
- AI frame interpolation
- perspective warping
- depth-map scaling
- subject-specific magnification
- background resizing
- compositing

The result must behave as though the physical lens itself changed its optical configuration.

==================================================
COMPOSITION PROTECTION
==================================================

Breathing must not destroy intentional composition.

If the selected lens has low breathing:

preserve framing strongly.

If the selected lens has moderate or strong breathing:

allow the composition to change naturally.

Do not artificially correct every breathing change unless the selected lens profile explicitly represents a focus-breathing-compensated cinema lens.

==================================================
BREATHING COMPENSATION
==================================================

Some cinema lenses and camera systems are designed to minimize or compensate for focus breathing.

When such a profile is selected:

maintain extremely stable framing during focus transitions.

Do not add visible breathing simply because focus changes.

==================================================
REAL CINEMATOGRAPHER BEHAVIOUR
==================================================

The system should behave as though a cinematographer selected a real lens knowing its breathing characteristics.

The cinematographer may:

- accept subtle breathing
- choose a low-breathing lens
- avoid a lens for a critical rack focus
- use breathing as part of lens character
- maintain stable composition when necessary

Lens selection comes before lens breathing.

Do not choose a lens based solely on how much breathing it produces.

==================================================
DEFAULT RAMAYANA PROFILE
==================================================

Unless otherwise specified:

LENS_BREATHING:
subtle / lens-dependent

DEFAULT_MODERN_CINE_LENS:
very low

DEFAULT_CHARACTER_LENS:
low to moderate

FOCUS_RESPONSE:
continuous

FRAMING_CHANGE:
minimal unless lens profile specifies otherwise

DIGITAL_ZOOM:
none

DIGITAL_SCALING:
none

PERSPECTIVE_MORPHING:
none

GEOMETRY_CHANGE:
none

FACE_DISTORTION:
none

TEMPORAL_CONSISTENCY:
extremely high

OPTICAL_REALISM:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
DECISION HIERARCHY
==================================================

Determine lens breathing in this order:

1. STORY PURPOSE
2. SHOT PURPOSE
3. FOCUS TRANSITION
4. STARTING FOCUS DISTANCE
5. ENDING FOCUS DISTANCE
6. SELECTED LENS TYPE
7. LENS OPTICAL DESIGN
8. LENS BREATHING PROFILE
9. FOCAL LENGTH
10. APERTURE
11. SENSOR FORMAT
12. CAMERA POSITION
13. SUBJECT / BACKGROUND DISTANCES
14. RESULTING APPARENT FRAMING CHANGE
15. TEMPORAL CONSISTENCY
16. FINAL OPTICAL REALISM

Never begin with:

"Add a zoom during the focus pull."

Instead determine:

IS FOCUS CHANGING?
â†’ WHAT LENS IS BEING USED?
â†’ HOW DOES THAT LENS RESPOND TO FOCUS?
â†’ HOW MUCH DOES ITS APPARENT FRAMING CHANGE?
â†’ HOW DOES THAT CHANGE PROGRESS THROUGH THE FOCUS PULL?
â†’ HOW DOES CAMERA MOVEMENT INTERACT WITH IT?
â†’ DOES THE RESULT REMAIN PHYSICALLY PLAUSIBLE?

Lens breathing must be a consequence of real optical lens design.

It must never be a digital zoom disguised as focus behaviour.

The final result must look like a real physical lens changing focus during real cinematography.

It must never look AI-generated.

