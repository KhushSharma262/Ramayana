### FOCUS DISTANCE

Treat focus distance as a physical optical parameter defining the distance at which the selected lens is focused.

Focus distance MUST NOT be treated as an instruction to blur or sharpen selected objects.

The final video must look like real professionally photographed live-action footage captured through a real physical camera and lens.

It must NEVER look AI-generated, digitally masked, computationally blurred, artificially sharpened, or segmented by object identity.

AI_ARTIFACT_TOLERANCE:
none

==================================================
PHOTOREALISM - NON-NEGOTIABLE
==================================================

Maintain:

- physically plausible focus distance
- coherent focal plane
- realistic focus falloff
- realistic depth of field
- realistic subject sharpness
- realistic foreground/background sharpness
- realistic lens behaviour
- realistic focus transitions
- realistic facial detail
- realistic hair detail
- realistic environmental detail
- temporal focus stability

Do NOT create:

- artificial background blur
- object-specific blur masks
- face-aware sharpening
- impossible focal planes
- multiple unrelated focal planes without physical justification
- instant focus changes
- random focus drift
- focus that ignores subject distance
- blur that follows object identity rather than depth
- sharp subjects pasted onto blurred environments
- AI-looking focus boundaries
- frame-to-frame focus flicker
- focus changes without physical cause

When uncertain, choose the physically plausible and less noticeable result.

==================================================
CORE PRINCIPLE
==================================================

Focus distance is the physical object distance at which the lens is focused.

It establishes the focal plane.

Depth of field extends around that focal plane according to the complete optical configuration.

Focus distance must therefore be evaluated together with:

- focal length
- aperture
- sensor format
- active sensor area
- subject distance
- foreground distance
- background distance
- circle of confusion
- camera position
- framing
- lens design

Focus distance is NOT:

- blur strength
- background blur amount
- subject isolation
- a semantic object-selection control
- a digital depth-map value

==================================================
FOCAL PLANE
==================================================

The focal plane must correspond to a physically meaningful distance in the scene.

When focus is placed on a subject:

that subject's relevant surface should lie near the focal plane.

Objects progressively nearer to or farther from the focal plane must transition naturally according to the resulting depth of field.

Do not assign separate arbitrary focus values to individual objects occupying the same physical depth.

Focus is determined by optical distance.

==================================================
SUBJECT DISTANCE
==================================================

Focus distance must remain physically related to the selected primary subject.

For a subject at distance D:

FOCUS_DISTANCE ≈ DISTANCE TO THE INTENDED FOCAL SURFACE

For human subjects, the intended focal surface may commonly be the eyes.

For objects:

focus may be placed on the surface or feature that carries the shot's visual priority.

Do not focus on an arbitrary bounding-box centre.

Do not use semantic object identity as a substitute for physical distance.

==================================================
HUMAN FACES
==================================================

For character close-ups and portraits:

prioritize the intended eye plane when appropriate.

Maintain:

- natural eye sharpness
- realistic eyelashes
- realistic skin texture
- realistic facial contours
- natural hair detail

With shallow depth of field:

- the nearer eye may be sharper
- the farther eye may soften
- ears may soften
- nose or hair may gradually leave the focal plane

Do not make an entire face uniformly sharp when the physical configuration would not permit it.

Do not blur facial regions independently.

Character identity, anatomy, skin, hair, jewelry, and costume must remain stable regardless of focus.

==================================================
MULTIPLE SUBJECTS
==================================================

When multiple subjects are important:

determine whether they can physically occupy the required depth-of-field range.

If necessary:

- use a smaller aperture
- change focal length
- alter camera position
- alter subject blocking
- alter focus distance
- use a physically plausible rack focus

Do not artificially sharpen secondary subjects.

Do not artificially blur subjects merely because they are less narratively important.

Story importance may influence focus selection.

It must not override physical optics.

==================================================
FOREGROUND AND BACKGROUND
==================================================

Evaluate focus distance relative to:

- foreground elements
- primary subject
- secondary subjects
- background elements

Objects closer to the camera than the focal plane may become progressively softer.

Objects farther from the camera than the focal plane may also become progressively softer.

Do not blur only the background.

Do not keep every foreground element artificially sharp.

==================================================
FOCUS DISTANCE AND APERTURE
==================================================

Focus distance and aperture interact through depth of field.

A wide aperture generally produces a narrower acceptable focus range.

A narrow aperture generally produces a wider acceptable focus range.

Do not use aperture as a substitute for selecting the correct focus distance.

Do not use focus distance as a substitute for aperture.

Both must be evaluated as parts of the same optical configuration.

==================================================
FOCUS DISTANCE AND FOCAL LENGTH
==================================================

Focus distance must be evaluated together with focal length.

Focal length affects:

- FOV
- framing
- image magnification
- depth-of-field behaviour

Focus distance determines:

- where the focal plane is located
- how the scene falls relative to that plane

Do not assume that changing focal length automatically changes the intended focus distance.

==================================================
CAMERA POSITION
==================================================

Camera position must be known when determining focus distance.

Moving the camera changes:

- subject distance
- foreground distance
- background relationships
- perspective
- required focus distance

If the camera moves physically toward or away from the subject:

focus distance must be recalculated if continuous subject focus is intended.

Do not maintain an impossible fixed focus distance when camera movement changes the actual subject distance.

==================================================
FOCUS DISTANCE AND FIELD OF VIEW
==================================================

Do not confuse focus distance with field of view.

FOCUS DISTANCE:
where the lens is focused.

FIELD OF VIEW:
how much of the scene is captured.

Changing focal length may change FOV without changing the intended subject's physical distance.

Changing camera position changes subject distance and may require a new focus distance.

==================================================
FOCUS DISTANCE AND DEPTH OF FIELD
==================================================

Focus distance establishes the centre of the acceptable focus region.

Depth of field determines the range around that focal plane that appears acceptably sharp.

Therefore:

FOCUS DISTANCE != DEPTH OF FIELD

Do not use a focus-distance change merely to create more blur.

Do not use depth-of-field changes to conceal an incorrect focal plane.

==================================================
RACK FOCUS
==================================================

A rack focus is a physical change in focus distance during a shot.

When a rack focus is specified:

- move the focal plane continuously
- transition sharpness progressively
- allow the previously focused subject to soften naturally
- allow the newly focused subject to sharpen naturally
- preserve lens-specific focus breathing
- preserve physically plausible exposure and optical behaviour

Do NOT:

- switch focus instantaneously
- blur one object independently
- sharpen another object independently
- use screen-space masks
- make the focal plane jump
- allow unrelated objects to remain artificially sharp

==================================================
FOCUS PULL SPEED
==================================================

Focus-pull speed may respond to:

- story purpose
- emotional intensity
- subject movement
- camera movement
- focus distance change required
- lens characteristics
- shot duration

Fast pulls may suit:

- sudden discoveries
- danger
- action
- rapid attention shifts

Slow pulls may suit:

- revelations
- emotional moments
- contemplation
- gradual attention shifts

The selected speed must remain physically achievable by the modeled focus system.

Do not use story intensity to justify impossible focus acceleration.

==================================================
CONTINUOUS FOCUS
==================================================

If continuous subject focus is required:

the focus distance must track the subject's changing physical distance continuously.

This may occur through:

- a camera operator pulling focus
- a physically modeled autofocus system
- another explicitly defined optical focus mechanism

Do not use semantic segmentation as an invisible substitute for focus mechanics.

The resulting focus behaviour must remain optically coherent.

==================================================
CAMERA MOVEMENT
==================================================

During:

- dolly
- tracking
- crane
- orbit
- push-in
- pull-back

subject distance may change.

If the camera moves relative to the subject:

recalculate focus distance when continuous subject focus is required.

If no focus correction is specified:

allow physically plausible focus drift as the subject moves relative to the focal plane.

Do not automatically keep the subject perfectly sharp regardless of camera movement.

==================================================
SUBJECT MOVEMENT
==================================================

When a subject moves:

its distance from the camera may change.

Therefore it may:

- remain within the depth of field
- approach the edge of acceptable focus
- move outside the focal plane
- naturally become softer

If focus tracking is specified, adjust focus distance continuously according to the subject's actual movement.

Do not independently blur or sharpen the moving subject.

==================================================
ENVIRONMENTAL FOCUS
==================================================

For:

- landscapes
- architecture
- temples
- palaces
- forests
- battlefields
- large environments

focus distance should be selected according to the spatial information required by the shot.

When deep environmental readability is required:

use an appropriate combination of:

- focus distance
- focal length
- aperture
- camera position
- sensor format

Do not simulate environmental focus through global sharpening.

==================================================
HYPERFOCAL / DEEP FOCUS
==================================================

When a deep-focus configuration is required:

select a physically appropriate focus distance and aperture.

Consider:

- focal length
- aperture
- sensor format
- circle of confusion
- foreground distance
- background distance
- required acceptable sharpness

Do not simply sharpen the entire image.

==================================================
ANAMORPHIC INTERACTION
==================================================

If an anamorphic lens is selected:

focus distance must remain a physical parameter of the selected anamorphic system.

Maintain lens-specific:

- focus behaviour
- focus breathing
- depth-of-field rendering
- optical character

Do not use anamorphic selection to justify arbitrary focus effects.

Anamorphic does NOT mean:

- automatic shallow focus
- maximum background blur
- artificial subject isolation

==================================================
LENS CHARACTER
==================================================

Focus distance may interact with lens-specific characteristics such as:

- focus breathing
- field curvature
- spherical aberration
- optical softness
- contrast
- bokeh rendering
- edge behaviour

These characteristics must arise from the selected lens profile.

Do not use lens character as permission for artificial focus effects.

==================================================
FOCUS DISTANCE CONTINUITY
==================================================

Within a continuous shot:

focus distance should remain stable unless:

- the subject moves
- the camera moves
- a rack focus occurs
- focus tracking occurs
- another physically defined focus change occurs

Do not allow random focus-distance drift.

Between shots:

focus distance may change according to shot design.

==================================================
VIDEO TEMPORAL CONSISTENCY
==================================================

This is a VIDEO generation system.

Focus distance must remain temporally stable and physically coherent.

Do NOT allow:

- focus flicker
- random sharpness changes
- focal-plane jumps
- background blur flicker
- face sharpness drift
- hair sharpness instability
- object-specific focus switching
- bokeh popping
- frame-to-frame focus masks
- focus changes without physical cause

If focus changes:

the transition must occur continuously.

==================================================
AI ARTIFACT FIREWALL
==================================================

Never implement focus distance using:

- object masks
- face masks
- semantic segmentation
- screen-space blur
- depth-map painting
- artificial sharpening
- per-object focus controls
- frame-specific blur
- background replacement
- computational portrait blur

Correct causal direction:

PHYSICAL SCENE
->
CAMERA POSITION
->
SUBJECT DISTANCE
->
LENS
->
FOCAL LENGTH
->
APERTURE
->
FOCUS DISTANCE
->
DEPTH OF FIELD
->
DEFOCUS / BOKEH
->
RECORDED IMAGE

Never reverse this relationship.

Do not decide:

"Blur the background."

and then fabricate a focus distance afterward.

==================================================
FOCUS VALIDATION
==================================================

Before accepting a shot, validate:

- focus distance is physically plausible
- primary subject lies at the intended focal distance
- sensor format is compatible
- focal length is valid
- aperture is valid
- subject distance is valid
- foreground/background distances are valid
- resulting depth of field is coherent
- focal plane is coherent
- focus transition is continuous
- lens breathing is consistent
- temporal focus behaviour is stable

If validation fails:

1. identify the earliest invalid physical parameter
2. correct that parameter
3. recalculate dependent values
4. regenerate focus behaviour
5. never digitally patch the resulting image

==================================================
NATURALISM RULE
==================================================

Focus behaviour must be proportional to physical cause.

NO PHYSICAL SUPPORT -> NO ARTIFICIAL FOCUS EFFECT

WEAK PHYSICAL SUPPORT -> SUBTLE

STRONG PHYSICAL SUPPORT -> PHYSICALLY APPROPRIATE

Never exaggerate focus separation because the scene is:

- epic
- dramatic
- emotional
- beautiful
- cinematic
- immersive
- mythological

Story purpose determines what should receive attention.

Physical optics determine how that attention is rendered.

==================================================
DEFAULT RAMAYANA PROFILE
==================================================

Unless the shot specifies otherwise:

FOCUS_DISTANCE:
shot-dependent

FOCUS_TARGET:
physically selected subject surface / focal plane

FOCUS_METHOD:
physically plausible

FOCUS_TRACKING:
only when required

RACK_FOCUS:
only when narratively and physically justified

DIGITAL_FOCUS_MASK:
none

ARTIFICIAL_BLUR:
none

TEMPORAL_FOCUS_STABILITY:
extremely high

OPTICAL_REALISM:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
FINAL DECISION ORDER
==================================================

Determine focus distance in this order:

1. STORY PURPOSE
2. SHOT TYPE
3. PRIMARY SUBJECT
4. SECONDARY SUBJECTS
5. REQUIRED FOCUS PLANE
6. SENSOR FORMAT
7. FOCAL LENGTH
8. CAMERA POSITION
9. SUBJECT DISTANCE
10. BACKGROUND / FOREGROUND DISTANCES
11. APERTURE
12. DEPTH OF FIELD
13. FOCUS BEHAVIOUR
14. FOCUS TRANSITIONS DURING MOTION

Never begin with:

"Blur the background."

Instead determine:

WHAT MUST BE SHARP
->
WHERE THAT SUBJECT IS
->
WHERE THE CAMERA IS
->
WHICH LENS IS USED
->
WHICH APERTURE IS USED
->
WHERE THE FOCAL PLANE SHOULD EXIST
->
WHAT NATURAL DEPTH OF FIELD RESULTS

The final video must look like real professionally photographed live-action footage captured through a real physical lens.

Focus distance must behave as a physical optical parameter, never as an AI-generated blur instruction.

It must never look AI-generated.

