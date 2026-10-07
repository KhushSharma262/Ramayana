# MINIMUM FOCUS DISTANCE

## PURPOSE

Control the physical focusing limit of the selected lens.

Minimum Focus Distance (MFD) defines the closest subject distance at which the selected lens can form a usable focused image.

MFD is a physical property of the lens and focusing system.

It is NOT:

- a digital zoom parameter
- a blur parameter
- a macro switch
- an arbitrary camera constraint
- a cinematic effect

The system must use MFD to determine whether the selected lens can physically focus on the intended subject from the intended camera position.

==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage through a real camera and physical lens.

MFD must remain physically plausible.

NEVER allow the system to:

- focus closer than the selected lens permits
- create perfect focus below MFD
- digitally enlarge the subject to compensate for insufficient focus distance
- fake macro capability
- artificially blur the background to disguise an invalid focus configuration
- move the focal plane independently of the physical lens
- change lens characteristics merely to achieve focus
- morph subject geometry to fit the focus plane
- create impossible focus transitions
- create focus snapping when MFD is reached
- silently switch lenses to solve an MFD violation

When the requested composition cannot be achieved within the selected lens's MFD:

RECONFIGURE THE CAMERA/LENS SYSTEM.

Do not violate the physical constraint.

==================================================
DEFINITION
==================================================

Minimum Focus Distance is the shortest distance at which the lens can focus on a subject.

For most camera systems, the manufacturer's stated MFD is measured from the:

LENS / OPTICAL SYSTEM
to
SUBJECT

However, some lens specifications define focusing distance relative to the:

SENSOR PLANE.

Therefore the system must distinguish:

SUBJECT DISTANCE
from
SENSOR-PLANE FOCUS DISTANCE
from
WORKING DISTANCE.

Do not treat these as interchangeable.

==================================================
MFD VS WORKING DISTANCE
==================================================

These are different measurements.

### MINIMUM FOCUS DISTANCE

The closest subject distance at which the lens can focus.

### WORKING DISTANCE

The physical distance between the front of the lens and the subject.

Working distance is generally shorter than the lens-to-subject focus distance.

Therefore:

MFD ≠ working distance.

For close-up and macro photography, working distance is especially important.

==================================================
FOCUS DISTANCE REFERENCE
==================================================

The system must identify what reference point the selected lens uses.

Possible reference:

- sensor plane
- focal plane
- optical reference specified by lens design

If lens specifications are available:

use the lens's actual stated measurement convention.

Do not invent a conversion.

==================================================
MFD AS A HARD PHYSICAL LIMIT
==================================================

If:

SUBJECT_DISTANCE < MINIMUM_FOCUS_DISTANCE

then:

FOCUS = INVALID

The system must not compensate through:

- digital sharpening
- artificial depth maps
- synthetic blur
- digital zoom
- image scaling
- AI reconstruction
- computational focus
- subject deformation

Instead choose one or more physically valid solutions:

- move camera farther away
- select a closer-focusing lens
- use a macro lens
- use a close-focus configuration
- reduce required magnification
- change framing
- change focal length
- change camera position
- change shot design

==================================================
LENS SELECTION AND MFD
==================================================

MFD must be considered during lens selection.

Lens selection sequence:

STORY
→ SHOT PURPOSE
→ SUBJECT
→ REQUIRED FRAMING
→ REQUIRED CAMERA POSITION
→ REQUIRED FOCUS DISTANCE
→ LENS MFD
→ LENS SELECTION
→ FOCAL LENGTH
→ APERTURE
→ DOF
→ FINAL OPTICAL RESULT

Do not select a lens based only on focal length.

Two lenses with identical focal lengths may have different:

- MFD
- magnification
- working distance
- focus throw
- breathing
- distortion
- bokeh
- optical character

==================================================
MFD AND FOCAL LENGTH
==================================================

Do not assume:

longer focal length = longer MFD

or:

shorter focal length = shorter MFD.

MFD is lens-design dependent.

A 50 mm lens may focus closer than another 50 mm lens.

A 100 mm lens may focus relatively close.

A specialized macro lens may provide substantially closer focusing capability.

Therefore always treat MFD as an explicit lens parameter when known.

==================================================
MFD AND FRAMING
==================================================

If the subject must occupy a particular portion of the frame:

the system must determine whether that framing is achievable while respecting MFD.

If not:

do not move the camera arbitrarily closer.

Instead consider:

- longer focal length
- shorter focal length
- macro lens
- different camera position
- different sensor format
- different magnification
- different shot size

The resulting perspective must remain physically consistent with the new camera position.

==================================================
MFD AND PERSPECTIVE
==================================================

Moving the camera to satisfy MFD changes perspective.

Therefore:

MFD correction cannot be treated as a neutral framing adjustment.

If the camera moves farther away:

- foreground/background relationships change
- perspective changes
- apparent subject proportions change
- parallax changes

The system must recalculate the complete camera configuration.

Do not preserve the original perspective artificially after moving the camera.

==================================================
MFD AND FOCAL LENGTH
==================================================

If the camera must move farther away because of MFD:

a longer focal length may be used to recover framing.

However:

changing focal length and camera position changes the spatial relationship.

The system must calculate:

CAMERA POSITION
+
FOCAL LENGTH
+
SUBJECT DISTANCE
+
BACKGROUND DISTANCE

together.

Do not simulate this through digital cropping.

==================================================
MFD AND MACRO
==================================================

MFD is particularly important for macro photography.

If a normal lens cannot focus close enough:

do not simply increase magnification digitally.

Use:

- macro lens
- close-focus lens
- extension system
- appropriate specialized optical configuration

Macro behaviour must remain consistent with the selected lens's actual focusing capability.

==================================================
MFD AND MAGNIFICATION
==================================================

Closer focusing can increase image magnification.

However, magnification is not determined by MFD alone.

It also depends on:

- focal length
- optical design
- focus position
- sensor format
- lens construction

Therefore:

DO NOT infer exact magnification solely from MFD.

Use explicit magnification data when available.

==================================================
MFD AND DEPTH OF FIELD
==================================================

MFD itself does not directly define DOF.

DOF depends on the complete optical configuration:

- focal length
- aperture
- focus distance
- sensor format
- subject distance
- magnification
- circle of confusion
- final viewing conditions

However, focusing very close often produces a shallower usable depth of field.

The system must derive DOF physically.

==================================================
MFD AND APERTURE
==================================================

Aperture does not change the lens's fundamental MFD.

Changing aperture changes:

- DOF
- diffraction
- bokeh
- optical rendering

It must NOT be used to falsely make a subject focusable below MFD.

If the subject is too close:

changing aperture does not solve the problem.

==================================================
MFD AND FOCUS RING
==================================================

When focus reaches the closest physical focusing limit:

the focus mechanism must stop.

Do not allow:

- infinite focus-ring travel beyond the physical limit
- focus continuation into impossible distances
- artificial sharpness recovery
- sudden digital refocusing

If the subject moves closer than MFD:

the subject should become progressively out of focus unless the camera/lens physically changes.

==================================================
MFD AND MOVING SUBJECTS
==================================================

For a moving subject:

the system must continuously evaluate subject distance.

If:

SUBJECT_DISTANCE > MFD

focus may be maintained.

If:

SUBJECT_DISTANCE approaches MFD

focus tolerance decreases.

If:

SUBJECT_DISTANCE < MFD

the selected lens cannot maintain focus.

The system must not magically track the subject below the focusing limit.

==================================================
MFD AND CAMERA MOVEMENT
==================================================

During:

- dolly-in
- push-in
- tracking
- handheld movement
- crane movement

the subject distance changes.

The system must continuously validate MFD.

Example:

camera begins at a valid focus distance
→ camera moves toward subject
→ subject distance decreases
→ camera approaches MFD
→ focus reaches physical limit
→ further movement requires lens/camera adjustment or controlled defocus.

Do not allow the camera to pass through the optical focusing limit while maintaining perfect focus.

==================================================
MFD DURING PUSH-IN SHOTS
==================================================

A push-in toward a subject must account for the final camera position.

Before generating the shot:

calculate whether the intended endpoint remains beyond MFD.

If not:

choose one of:

- stop the camera before MFD
- pull focus appropriately
- change lens
- redesign the movement
- switch to a macro/close-focus configuration

Do not allow the final frames to contain impossible sharpness.

==================================================
MFD AND RACK FOCUS
==================================================

Rack focus must remain within the lens's physical focus range.

If the target focal plane lies beyond the minimum focusing limit:

the rack focus is invalid.

The system must:

- select a suitable lens
- move the camera
- modify target distance
- change shot design

Do not create a digital focus transition beyond MFD.

==================================================
MFD AND FOCUS THROW
==================================================

MFD and focus throw are separate.

MFD determines:

HOW CLOSE THE LENS CAN FOCUS.

Focus throw determines:

HOW MUCH FOCUS RING MOVEMENT IS REQUIRED TO TRAVEL THROUGH THE FOCUS RANGE.

A cinema lens may have:

- longer focus throw
- more precise manual control
- controlled focus behaviour

A stills lens may have:

- shorter focus throw
- different focus response

Do not infer focus throw from MFD.

==================================================
MFD AND LENS BREATHING
==================================================

Near MFD, focus movement may produce noticeable framing changes depending on lens design.

Breathing must remain:

- lens-specific
- continuous
- physically plausible

Do not exaggerate breathing merely because the subject is close.

Do not simulate breathing through digital scaling.

==================================================
MFD AND DISTORTION
==================================================

Close camera placement can make perspective effects more noticeable.

This must not be confused with lens distortion.

Maintain the distinction between:

- perspective
- lens distortion
- magnification
- MFD
- FOV

Do not add geometric distortion simply because the camera is near the subject.

==================================================
MFD AND BOKEH
==================================================

MFD does not automatically mean:

"strong bokeh."

Bokeh depends on:

- lens design
- aperture
- focus distance
- subject/background distance
- magnification
- background structure

If the lens is near MFD but the aperture is stopped down or background distances are appropriate:

bokeh may remain restrained.

==================================================
MFD AND FOREGROUND ELEMENTS
==================================================

A foreground element closer than MFD cannot be rendered perfectly sharp through the selected lens.

If intentionally included:

it may remain naturally out of focus.

Do not use AI segmentation to make the foreground element sharp.

==================================================
MFD AND BACKGROUND
==================================================

The background must remain geometrically and optically consistent with the actual camera position.

If the camera moves to satisfy MFD:

recalculate:

- background perspective
- background scale
- parallax
- DOF
- bokeh
- spatial compression

Do not preserve the old background through digital compositing.

==================================================
MFD AND ARCHITECTURE
==================================================

For architectural details:

respect MFD when using close-up lenses.

If photographing:

- carvings
- inscriptions
- temple details
- ornaments
- statues
- architectural surfaces

maintain:

- stable geometry
- physically correct focus
- appropriate working distance
- natural perspective

Do not push the lens unrealistically into the surface.

==================================================
MFD AND HUMAN FACES
==================================================

For close human shots:

do not force a normal lens below its MFD to obtain an extreme close-up.

If an extreme facial detail is required:

use an appropriate close-focus or macro configuration.

Preserve:

- facial geometry
- eye anatomy
- skin texture
- perspective
- natural focus falloff

Do not use digital enlargement to simulate physical proximity.

==================================================
MFD AND EYES
==================================================

Eye macro shots require particular care.

If the intended framing requires extreme magnification:

select a lens capable of the required focusing distance and magnification.

The iris, cornea, eyelashes and surrounding skin must remain:

- geometrically stable
- temporally consistent
- optically plausible

Do not hallucinate microscopic eye detail.

==================================================
MFD AND REFLECTIVE SUBJECTS
==================================================

For:

- jewelry
- metal
- gemstones
- glass
- water
- polished surfaces

the camera must remain at a physically valid distance.

Reflections must update according to:

- camera position
- lens position
- subject geometry
- lighting

Do not move the apparent camera closer without changing reflections.

==================================================
MFD AND LIGHTING
==================================================

Very close camera placement can physically obstruct light.

Therefore:

lighting must account for:

- lens position
- camera size
- working distance
- subject geometry
- light direction

Do not illuminate a macro subject from impossible directions simply to preserve exposure.

==================================================
MFD AND PARALLAX
==================================================

Close camera positions can create strong parallax.

If the camera moves:

nearby elements may shift substantially relative to distant elements.

This must remain physically coherent.

Do not generate artificial 2D parallax.

==================================================
MFD AND SENSOR FORMAT
==================================================

MFD is primarily a lens/focusing-system property.

Changing sensor format does not magically change the lens's physical minimum focus distance.

However, sensor format affects:

- FOV
- framing
- crop
- final composition

Do not use crop factor as a substitute for a closer-focusing lens.

==================================================
MFD AND CROP FACTOR
==================================================

Crop factor does NOT:

- shorten MFD
- increase true optical magnification
- create macro capability
- allow impossible focusing

A smaller sensor may change framing, but the physical lens still has the same focusing mechanism.

==================================================
MFD AND ANAMORPHIC LENSES
==================================================

Anamorphic lenses may have their own focusing limits.

Do not assume:

anamorphic = long MFD
or
anamorphic = short MFD.

Treat MFD as lens-profile dependent.

If an anamorphic configuration cannot achieve the required focus distance:

use an appropriate lens rather than forcing the optical system.

==================================================
MFD AND ZOOM LENSES
==================================================

Zoom lenses may have different close-focus behaviour across the zoom range.

Do not assume MFD remains optically equivalent throughout every focal length.

If the selected zoom lens has:

- variable MFD
- close-focus mode
- macro mode
- magnification changes across zoom range

respect the actual lens profile.

Do not invent a universal zoom MFD.

==================================================
MFD AND DIGITAL ZOOM
==================================================

Digital zoom is prohibited as an MFD workaround.

If:

SUBJECT TOO CLOSE

the system must not respond:

DIGITAL_ZOOM ↑

Instead:

LENS_CONFIGURATION → CHANGE

==================================================
MFD AND FOCUS HUNTING
==================================================

When a subject approaches MFD:

do not create rapid focus hunting.

A real focus system may reach its focusing limit.

The system should produce:

- stable focus
- controlled loss of focus
- deliberate camera/lens adjustment

rather than random focus oscillation.

==================================================
MFD AND TEMPORAL CONSISTENCY
==================================================

MFD must remain stable throughout a shot unless the physical lens configuration changes.

NEVER allow:

- focus distance flickering
- sudden changes in MFD
- lens identity changes
- random magnification changes
- impossible focus recovery
- subject geometry changes
- artificial sharpness appearing below MFD

Every change must have a physical cause.

==================================================
MFD VALIDATION
==================================================

Before generating a shot, verify:

1. What lens is selected?
2. What is its actual MFD?
3. What reference convention defines that MFD?
4. What is the intended subject distance?
5. Is subject distance greater than or equal to MFD?
6. Is working distance physically plausible?
7. Is the required framing achievable?
8. Is the required magnification achievable?
9. Is the camera position physically accessible?
10. Does changing camera position alter perspective?
11. Does focal length need to change?
12. Does the new focal length remain compatible with the shot?
13. Is the selected aperture appropriate?
14. Is DOF physically plausible?
15. Is focus movement within the lens's range?
16. Is the lens capable of the intended rack focus?
17. Is camera movement compatible with MFD?
18. Is breathing consistent with the lens?
19. Is macro actually required?
20. Is any digital manipulation being used to hide an MFD violation?

If any answer is NO:

RECONFIGURE THE OPTICAL SYSTEM.

==================================================
MFD MACHINE-READABLE PARAMETERS
==================================================

minimum_focus_distance:
  value:
  unit:
  reference:
  confidence:

subject_distance:
  value:
  unit:
  reference:

working_distance:
  value:
  unit:

focus_valid:
  value:

focus_margin:
  value:
  unit:

magnification:
  value:
  unit:

lens_type:
  value:

lens_profile:
  value:

focal_length:
  value:
  unit:

sensor_format:
  value:

crop_factor:
  value:

focus_range:
  minimum:
  maximum:

focus_transition:
  enabled:
  start_distance:
  end_distance:

mfd_constraint:
  status:
  violation_action:

==================================================
MFD CONSTRAINT LOGIC
==================================================

Conceptual logic:

IF
    SUBJECT_DISTANCE >= MINIMUM_FOCUS_DISTANCE
THEN
    FOCUS_VALID = TRUE

IF
    SUBJECT_DISTANCE < MINIMUM_FOCUS_DISTANCE
THEN
    FOCUS_VALID = FALSE
    DO_NOT_DIGITALLY_COMPENSATE
    RECONFIGURE_LENS_OR_CAMERA

If camera movement decreases subject distance:

CONTINUOUSLY VALIDATE MFD.

If focus target crosses MFD:

DO NOT CONTINUE PHYSICAL FOCUS BEYOND THE LENS LIMIT.

==================================================
DEFAULT RAMAYANA PROFILE
==================================================

MFD_MODE:
strict physical constraint

FOCUS_REFERENCE:
use actual lens specification

SUBJECT_DISTANCE:
physically measured

WORKING_DISTANCE:
physically plausible

MFD_VIOLATION:
never permitted

DIGITAL_COMPENSATION:
none

DIGITAL_ZOOM:
none

DIGITAL_FOCUS:
none

MACRO_SUBSTITUTION:
only when physically justified

FOCUS:
manual / cinematographer-controlled

FOCUS_TRANSITION:
optical and physically bounded

FOCUS_BREATHING:
lens-dependent

DEPTH_OF_FIELD:
physically derived

PERSPECTIVE:
camera-position dependent

MAGNIFICATION:
optically derived

TEMPORAL_CONSISTENCY:
extremely high

OPTICAL_REALISM:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
FINAL DECISION HIERARCHY
==================================================

Determine minimum-focus behaviour in this order:

1. STORY PURPOSE
2. SHOT PURPOSE
3. SUBJECT
4. REQUIRED FRAMING
5. REQUIRED MAGNIFICATION
6. CAMERA POSITION
7. SUBJECT DISTANCE
8. SELECTED LENS
9. LENS MINIMUM FOCUS DISTANCE
10. WORKING DISTANCE
11. FOCAL LENGTH
12. SENSOR FORMAT
13. FOCUS RANGE
14. APERTURE
15. DEPTH OF FIELD
16. CAMERA MOVEMENT
17. FOCUS MOVEMENT
18. LENS BREATHING
19. PERSPECTIVE
20. TEMPORAL CONSISTENCY
21. FINAL OPTICAL REALISM

The fundamental rule is:

A REAL LENS CANNOT FOCUS CLOSER THAN ITS PHYSICAL MINIMUM FOCUS DISTANCE.

If the desired shot violates that constraint, change the physical camera/lens configuration.

Never fake the solution digitally.

The final result must look as though a real cinematographer selected a physically appropriate lens and camera position to capture the shot.

No impossible focus.
No digital macro.
No artificial enlargement.
No fake focus.
No hidden MFD violations.
No AI-generated optical behaviour.

It must never look AI-generated.
