# PERSPECTIVE DISTORTION

## PURPOSE

Control the apparent geometric changes produced by camera viewpoint and subject distance that are commonly described as "perspective distortion."

Perspective distortion is NOT the same thing as optical lens distortion.

It is primarily a consequence of:

CAMERA POSITION
+
SUBJECT DISTANCE
+
SUBJECT DEPTH
+
RELATIVE DISTANCES WITHIN THE SUBJECT.

A lens does not independently create perspective distortion.

The system must distinguish:

- perspective distortion
- lens distortion
- field of view
- focal length
- compression
- magnification
- anamorphic distortion
- depth of field

These must never be treated as interchangeable.

==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage from a real camera positioned in real three-dimensional space.

Perspective distortion must emerge naturally from physical camera geometry.

NEVER create:

- digital face stretching
- artificial perspective warping
- fake wide-angle facial distortion
- synthetic background flattening
- independent background scaling
- artificial foreground enlargement
- digitally exaggerated depth
- fake spatial compression
- depth-map warping
- inconsistent object proportions
- changing perspective between frames without camera movement
- perspective correction artifacts
- geometry morphing
- unstable vanishing points
- AI-generated spatial deformation

When uncertain:

choose the physically plausible and less noticeable result.

REAL CAMERA GEOMETRY ALWAYS TAKES PRIORITY OVER VISUAL EFFECT.

==================================================
DEFINITION
==================================================

Perspective distortion describes the apparent exaggeration or reduction of relative object dimensions caused by the camera being positioned at a particular distance from the subject.

The most noticeable cases occur when:

- the camera is very close to the subject
- the subject has substantial depth
- a wide field of view is used from close range
- different parts of a subject are at substantially different distances from the camera

For example:

a camera very close to a face may place the nose significantly closer to the lens than the ears.

The nose therefore occupies a larger apparent angular size than the ears.

This is perspective geometry.

It is NOT necessarily barrel distortion.

==================================================
PERSPECTIVE DISTORTION VS LENS DISTORTION
==================================================

This distinction is mandatory.

### PERSPECTIVE DISTORTION

Caused primarily by:

- camera position
- subject distance
- subject depth

It changes relative apparent scale.

### LENS DISTORTION

Caused by the optical projection characteristics of the lens.

It may produce:

- barrel distortion
- pincushion distortion
- moustache distortion
- asymmetric/decentering distortion

It bends image geometry.

A wide-angle lens can produce strong perspective distortion with very little geometric lens distortion.

A lens can have strong barrel distortion while the camera is positioned far from a subject.

These are different phenomena.

==================================================
CAMERA POSITION IS PRIMARY
==================================================

Perspective distortion increases as the camera approaches a subject with meaningful depth.

Therefore:

CAMERA CLOSER
→
GREATER RELATIVE DEPTH DIFFERENCE

CAMERA FARTHER
→
REDUCED RELATIVE DEPTH DIFFERENCE

This relationship must be physically derived.

Do not implement:

PERSPECTIVE_DISTORTION = EFFECT_INTENSITY.

Instead calculate it from spatial geometry.

==================================================
SUBJECT DEPTH
==================================================

Perspective distortion depends not only on camera distance but also on how deep the subject is.

A flat subject has little perspective distortion even when photographed closely.

A deep subject can show substantial perspective differences.

Examples:

### FLAT PAINTING

Very little relative depth distortion.

### HUMAN FACE

Moderate depth from nose to ears.

### HUMAN BODY

Greater depth between foreground and background body regions.

### ARCHITECTURE

Large depth relationships can become visually pronounced.

### LONG CORRIDOR

Strong perspective convergence may be visible.

Therefore:

subject depth must be considered explicitly.

==================================================
MATHEMATICAL BASIS
==================================================

For a simplified perspective projection:

IMAGE_SIZE ∝ FOCAL_LENGTH / DISTANCE

Therefore:

objects closer to the camera occupy a larger projected size.

If two parts of the same object are at different distances:

the closer portion is projected larger.

This is the physical basis of perspective distortion.

Do not use a generic visual "distortion strength" without a corresponding spatial explanation.

==================================================
FACE PERSPECTIVE DISTORTION
==================================================

Faces are particularly sensitive.

If the camera is very close:

nearer facial features may appear larger relative to farther features.

Possible effects include:

- enlarged nose
- stronger nose-to-ear size difference
- reduced apparent ear size
- stronger forehead projection
- stronger cheek depth
- more pronounced facial planes

These are legitimate perspective consequences.

However, they must remain anatomically plausible.

Do not exaggerate them simply because a wide lens is selected.

==================================================
WIDE LENS MYTH
==================================================

A wide lens does NOT automatically distort faces.

The characteristic exaggerated facial perspective usually comes from:

WIDE FOV
+
CLOSE CAMERA POSITION.

If a wide lens is used from farther away and the image is cropped or framed appropriately:

perspective may remain relatively natural.

Therefore:

DO NOT IMPLEMENT:

wide lens
→
face distortion.

Instead:

camera distance
+
subject depth
→
perspective relationship.

==================================================
TELEPHOTO MYTH
==================================================

A telephoto lens does NOT inherently flatten perspective.

The familiar compressed appearance usually results from:

LONGER CAMERA-TO-SUBJECT DISTANCE
+
LONGER FOCAL LENGTH TO MAINTAIN FRAMING.

The increased camera distance reduces relative size differences between near and far portions of the scene.

Therefore:

telephoto ≠ compression effect.

Camera position remains the primary variable.

==================================================
SAME CAMERA POSITION
==================================================

If the camera remains at the same physical position:

changing focal length changes:

- FOV
- framing
- magnification

but does not fundamentally change perspective geometry.

Therefore:

FOCAL_LENGTH_CHANGE
WITHOUT
CAMERA_POSITION_CHANGE

must NOT create a new perspective relationship.

==================================================
SAME FRAMING
==================================================

If framing must remain constant while focal length changes:

camera position usually changes.

Example:

WIDER LENS
→
CAMERA MOVES CLOSER

LONGER LENS
→
CAMERA MOVES FARTHER

This changes perspective.

Therefore:

SAME FRAMING
+
DIFFERENT FOCAL LENGTH
→
POSSIBLE PERSPECTIVE CHANGE

because:

CAMERA POSITION CHANGED.

==================================================
FACE PROTECTION
==================================================

When photographing human characters:

prioritize:

- stable identity
- natural facial proportions
- anatomically plausible depth
- consistent eye spacing
- realistic nose projection
- stable ears
- stable jawline
- consistent facial width

If strong perspective is intentionally required:

achieve it through a physically valid camera position.

Do not digitally deform the face.

==================================================
INTIMATE CLOSE-UPS
==================================================

For an intimate close-up:

do not automatically place the camera extremely close.

First determine:

- desired emotional proximity
- framing
- focal length
- camera distance
- facial depth
- acceptable perspective

If a more natural face is desired:

move the camera farther away and use a longer focal length if necessary to preserve framing.

If a more aggressive perspective is desired:

a closer camera position may be appropriate.

The result must follow real geometry.

==================================================
HUMAN BODY
==================================================

Perspective distortion can affect human body proportions when different body parts are at different distances.

For example:

a close low camera may make:

- feet appear larger
- legs appear more prominent
- torso recede

A close high camera may emphasize:

- head
- shoulders
- upper body

These effects must remain physically plausible.

Do not independently scale body parts.

==================================================
GROUPS
==================================================

For multiple characters at different distances:

nearer characters should generally appear larger.

Do not force all characters to the same apparent scale.

If the composition requires equal apparent scale:

camera placement, subject positioning, lens choice, and blocking must be adjusted physically.

==================================================
FOREGROUND OBJECTS
==================================================

Objects extremely close to the camera may appear dramatically enlarged.

Examples:

- leaves
- branches
- weapons
- ornaments
- pillars
- hands
- fabric
- architectural elements

This can be a legitimate compositional technique.

Do not automatically remove it.

However, the geometry must remain physically correct.

==================================================
BACKGROUND SCALE
==================================================

Perspective distortion must never be implemented by independently resizing the background.

If a distant background appears smaller or larger:

that relationship must come from:

- actual distance
- camera position
- subject position
- lens framing

Never:

BACKGROUND_SCALE = ARTIFICIAL_VALUE.

==================================================
SPATIAL COMPRESSION
==================================================

Perspective distortion and spatial compression are related but not identical.

When the camera moves farther away:

relative size differences between near and far objects decrease.

This can produce a flatter or denser spatial appearance.

It is a consequence of camera distance.

Do not create it through:

- digital background enlargement
- depth-map scaling
- layer compression
- artificial focal effects.

==================================================
ARCHITECTURAL PERSPECTIVE
==================================================

Architecture makes perspective distortion highly visible.

Maintain:

- consistent vanishing points
- coherent line convergence
- stable proportions
- correct depth
- physically plausible camera height

Do not warp buildings to create dramatic perspective.

==================================================
VERTICAL CONVERGENCE
==================================================

If the camera is tilted upward or downward:

parallel vertical structures may converge toward vanishing points.

This is perspective projection.

Do not classify all converging lines as lens distortion.

If parallel lines must remain visually parallel:

use an appropriate:

- camera position
- camera orientation
- perspective-control lens

rather than AI warping.

==================================================
WIDE-ANGLE ENVIRONMENTS
==================================================

When using a wide lens close to architecture or landscape elements:

nearby structures may appear significantly larger relative to distant ones.

This can be useful for:

- grandeur
- scale
- immersion
- environmental depth

But it must remain physically believable.

Avoid:

- stretched buildings
- impossible floor geometry
- warped pillars
- melting walls
- exaggerated mountains

==================================================
FISHEYE
==================================================

Fisheye projection is fundamentally different from ordinary rectilinear wide-angle perspective.

Do not create fisheye behaviour unless a fisheye lens/profile is explicitly selected.

If selected:

allow its characteristic curved projection.

If not selected:

do not introduce fisheye curvature.

==================================================
RECTILINEAR WIDE-ANGLE
==================================================

A rectilinear wide lens attempts to preserve straight lines.

It may still produce strong perspective effects when used close to the subject.

Therefore:

STRAIGHT LINES
does not mean
NO PERSPECTIVE DISTORTION.

==================================================
ANAMORPHIC PERSPECTIVE
==================================================

Anamorphic optics do not automatically create perspective distortion.

Maintain the distinction between:

- perspective geometry
- anamorphic squeeze
- lens distortion
- edge character
- bokeh
- flare

If the selected anamorphic lens has specific geometric behaviour:

apply only the behaviour defined by that lens profile.

==================================================
ANAMORPHIC "MUMPING"
==================================================

Some anamorphic systems may exhibit characteristic facial or spatial distortion at certain distances and focal lengths.

If such behaviour exists in the selected lens profile:

it may be reproduced subtly.

Do not automatically create anamorphic facial distortion.

Do not assume:

ANAMORPHIC = MUMPING.

Any such behaviour must be:

- lens-specific
- focal-length dependent
- focus-dependent where appropriate
- distance-dependent
- physically plausible.

==================================================
PERSPECTIVE DISTORTION VS BARREL DISTORTION
==================================================

Example:

A face photographed very close with a rectilinear wide lens:

→ strong perspective differences may appear.

A distant building photographed with a poorly corrected lens:

→ barrel distortion may bend straight lines.

These can coexist.

Do not substitute one for the other.

==================================================
PERSPECTIVE DISTORTION VS FOV
==================================================

A wider FOV allows more of the scene to be captured.

It does not independently create perspective distortion.

Strong perspective typically results when the wider FOV is achieved with a shorter focal length and the camera is placed close to the subject.

Do not apply perspective distortion merely because:

FOV = WIDE.

==================================================
PERSPECTIVE DISTORTION VS DOF
==================================================

DOF controls what appears sharp.

Perspective distortion controls relative spatial geometry.

They are independent.

A shot may have:

strong perspective + deep focus

or:

strong perspective + shallow focus.

Do not use blur to hide incorrect perspective.

==================================================
PERSPECTIVE DISTORTION VS BOKEH
==================================================

Bokeh is the appearance of out-of-focus areas.

It does not create perspective distortion.

Do not use bokeh to imply exaggerated spatial depth.

==================================================
PERSPECTIVE DISTORTION VS MAGNIFICATION
==================================================

Image magnification depends on:

- focal length
- subject distance
- sensor
- projection

Perspective distortion concerns relative magnification between different depth positions.

Do not confuse:

"the subject appears large"

with:

"the subject has strong perspective distortion."

==================================================
CAMERA MOVEMENT
==================================================

Perspective distortion must change continuously during physical camera translation.

### DOLLY IN

As camera approaches:

- perspective differences increase
- near features grow relatively larger
- parallax increases

### DOLLY OUT

As camera retreats:

- relative depth differences decrease
- parallax changes
- subject appears smaller

### LATERAL TRACK

Depth-dependent parallax changes.

### ORBIT

Relative visibility and perspective change as the camera moves around the subject.

==================================================
PAN / TILT
==================================================

Pure rotation does not create the same perspective change as translation.

A pan:

- rotates the viewpoint
- changes framing
- changes vanishing-point positions

but does not move the camera through space.

A tilt:

- changes vertical framing
- changes view direction

but does not create dolly-like perspective change.

Do not add spatial expansion or compression to a pure pan or tilt.

==================================================
PERSPECTIVE DISTORTION DURING FOCUS
==================================================

A focus pull does not normally change perspective.

If framing changes:

that is lens breathing.

Do not introduce perspective distortion merely because focus changes.

==================================================
PERSPECTIVE DISTORTION DURING ZOOM
==================================================

A zoom changes focal length.

If camera position remains fixed:

perspective geometry remains fundamentally stable.

Do not make a zoom behave like a dolly.

==================================================
DOLLY ZOOM
==================================================

A dolly zoom combines:

CAMERA TRANSLATION
+
FOCAL LENGTH CHANGE.

Perspective changes because the camera moves.

Framing is controlled through the focal-length change.

The system must calculate both simultaneously.

Never generate the effect by digitally scaling background elements.

==================================================
PERSPECTIVE DISTORTION AND SENSOR FORMAT
==================================================

Sensor format affects:

- FOV
- framing
- required focal length for equivalent framing

It does not independently create perspective distortion.

If changing sensor format causes the camera to move to maintain framing:

the resulting perspective may change because:

CAMERA POSITION CHANGED.

==================================================
CROP FACTOR
==================================================

Crop factor does not directly alter perspective.

It changes the portion of the lens image captured.

Do not use crop factor as a "perspective distortion" parameter.

==================================================
PERSPECTIVE DISTORTION AND LENS SELECTION
==================================================

Lens selection must follow:

STORY
→
SHOT
→
SPATIAL RELATIONSHIP
→
REQUIRED FRAMING
→
CAMERA POSITION
→
FOCAL LENGTH
→
RESULTING PERSPECTIVE.

Do not select a lens based on:

"more distortion = more cinematic."

==================================================
PERSPECTIVE DISTORTION AND SHOT PURPOSE
==================================================

### NATURAL CHARACTER SHOT

Use camera distance that preserves believable facial/body proportions.

### INTIMATE CLOSE-UP

Camera may be closer, but perspective must remain anatomically plausible.

### HEROIC LOW ANGLE

Use physically low camera placement.

### THREATENING CLOSE SHOT

Closer camera position may increase perspective differences if motivated.

### GRAND ENVIRONMENT

Use camera position and focal length to establish real spatial scale.

### OBSERVATIONAL TELEPHOTO

Use greater camera distance to reduce relative perspective differences.

### MACRO

Use appropriate close-focus optics and accept the strong spatial sensitivity of close camera placement.

==================================================
PERSPECTIVE DISTORTION AND RAMAYANA
==================================================

For the Ramayana:

perspective should help establish believable relationships between:

- Rama
- Sita
- Lakshmana
- Bharata
- Hanuman
- Ravana
- armies
- palaces
- forests
- mountains
- temples
- weapons
- ornaments
- animals
- landscapes

Do not use perspective distortion as a generic "epic" effect.

Epic scale must come from:

- physical camera position
- subject/environment scale
- blocking
- lens selection
- composition
- lighting
- real depth relationships.

==================================================
TEMPORAL CONSISTENCY
==================================================

Perspective distortion must remain stable from frame to frame unless physical movement causes a change.

NEVER allow:

- face proportions changing randomly
- nose size flickering
- background scale flickering
- architectural lines shifting
- vanishing points jumping
- foreground objects resizing
- parallax inconsistencies
- geometry crawling
- spatial morphing
- depth relationships changing without cause

Every perspective change must correspond to:

- camera translation
- camera rotation
- subject movement
- lens change
- physically justified optical behaviour.

==================================================
PERSPECTIVE CONTINUITY
==================================================

Across shots:

maintain coherent:

- camera side
- spatial geography
- camera height
- subject position
- subject distance
- lens language
- perspective logic

When changing focal length:

recalculate camera position if framing changes.

When changing camera position:

recalculate perspective.

Do not preserve the previous perspective artificially.

==================================================
PERSPECTIVE DISTORTION MACHINE-READABLE PARAMETERS
==================================================

perspective_distortion:
  enabled:
  mode:
  camera_position:
    x:
    y:
    z:
  camera_height:
  subject_position:
    x:
    y:
    z:
  subject_distance:
  subject_depth:
  foreground_distance:
  background_distance:
  focal_length:
  sensor_format:
  crop_factor:
  field_of_view:
  perspective_relationship:
  relative_size_difference:
  perspective_strength:
  lens_distortion:
  anamorphic_distortion:
  camera_movement:
  subject_movement:
  perspective_continuity:
  temporal_consistency:

==================================================
PARAMETER DEPENDENCIES
==================================================

CAMERA_POSITION
+
SUBJECT_POSITION
→
SUBJECT_DISTANCE

CAMERA_POSITION
+
SUBJECT_DEPTH
→
PERSPECTIVE_RELATIONSHIPS

SUBJECT_DISTANCE
+
SUBJECT_DEPTH
→
RELATIVE_SIZE_DIFFERENCE

FOCAL_LENGTH
+
SENSOR_FORMAT
→
FIELD_OF_VIEW

FOCAL_LENGTH
+
CAMERA_POSITION
→
FRAMING

CAMERA_POSITION
+
SUBJECT_DEPTH
→
PERSPECTIVE_DISTORTION

CAMERA_TRANSLATION
→
PERSPECTIVE_CHANGE
+
PARALLAX

LENS_DESIGN
→
OPTICAL_LENS_DISTORTION

ANAMORPHIC_DESIGN
→
ANAMORPHIC_OPTICAL_CHARACTER

DO NOT MERGE THESE VARIABLES.

==================================================
PERSPECTIVE DISTORTION CONSTRAINT LOGIC
==================================================

IF:

CAMERA_POSITION = CONSTANT

AND:

FOCAL_LENGTH CHANGES

THEN:

PERSPECTIVE_GEOMETRY = FUNDAMENTALLY CONSTANT

IF:

CAMERA_POSITION MOVES CLOSER

THEN:

RELATIVE_DEPTH_DIFFERENCES GENERALLY INCREASE

IF:

CAMERA_POSITION MOVES FARTHER

THEN:

RELATIVE_DEPTH_DIFFERENCES GENERALLY DECREASE

IF:

SUBJECT_DEPTH ≈ 0

THEN:

PERSPECTIVE_DISTORTION ≈ MINIMAL

IF:

SUBJECT_DEPTH IS LARGE
AND
CAMERA_DISTANCE IS SMALL

THEN:

PERSPECTIVE_DISTORTION CAN BECOME MORE PRONOUNCED

IF:

FOCAL_LENGTH CHANGES
AND
CAMERA_POSITION ALSO CHANGES TO MAINTAIN FRAMING

THEN:

RECALCULATE PERSPECTIVE.

==================================================
DEFAULT RAMAYANA PROFILE
==================================================

PERSPECTIVE_DISTORTION_MODE:
physical

CAMERA_POSITION:
explicit

SUBJECT_DISTANCE:
physically derived

SUBJECT_DEPTH:
physically derived

FOCAL_LENGTH:
shot-dependent

SENSOR_FORMAT:
full-frame reference

ASPECT_RATIO:
16:9

FIELD_OF_VIEW:
physically calculated

PERSPECTIVE:
camera-position derived

RELATIVE_SCALE:
physically derived

LENS_DISTORTION:
lens-dependent

ANAMORPHIC_DISTORTION:
only if lens profile supports it

DIGITAL_PERSPECTIVE_WARP:
none

DIGITAL_FACE_WARP:
none

DIGITAL_BACKGROUND_SCALING:
none

DIGITAL_COMPRESSION:
none

DIGITAL_PARALLAX:
none

ARTIFICIAL_DEPTH:
none

TEMPORAL_CONSISTENCY:
extremely high

OPTICAL_CONSISTENCY:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
VALIDATION
==================================================

Before generating a shot, verify:

1. Where is the physical camera?
2. What is the camera-to-subject distance?
3. How much depth does the subject have?
4. What is the background distance?
5. What focal length is selected?
6. What sensor format is used?
7. What FOV results?
8. Is the framing physically achievable?
9. Is the apparent perspective consistent with camera position?
10. Is any perceived "distortion" actually lens distortion?
11. Is any perceived "compression" actually a camera-distance effect?
12. Is the face anatomically stable?
13. Are foreground objects correctly scaled?
14. Is the background correctly scaled?
15. Are vanishing points coherent?
16. Is parallax physically correct?
17. Is camera movement producing continuous perspective change?
18. Is focus being kept separate from perspective?
19. Is zoom being kept separate from dolly movement?
20. Is anamorphic behaviour being kept separate from perspective?
21. Is there any digital geometric manipulation?
22. Is perspective temporally stable?
23. Does the shot remain physically possible?
24. Does the final result look like genuine live-action footage?

If any answer is NO:

RECALCULATE THE CAMERA/LENS/SCENE GEOMETRY.

==================================================
FINAL DECISION HIERARCHY
==================================================

Determine perspective distortion in this order:

1. STORY PURPOSE
2. SHOT PURPOSE
3. SUBJECT
4. SUBJECT DEPTH
5. ENVIRONMENT
6. SPATIAL RELATIONSHIP
7. COMPOSITION
8. CAMERA HEIGHT
9. CAMERA POSITION
10. SUBJECT DISTANCE
11. BACKGROUND DISTANCE
12. SENSOR FORMAT
13. REQUIRED FIELD OF VIEW
14. FOCAL LENGTH
15. RESULTING PERSPECTIVE
16. RELATIVE SIZE DIFFERENCES
17. PARALLAX
18. LENS DISTORTION
19. ANAMORPHIC CHARACTER
20. CAMERA MOVEMENT
21. SUBJECT MOVEMENT
22. TEMPORAL CONSISTENCY
23. FINAL OPTICAL REALISM

The fundamental rule is:

PERSPECTIVE DISTORTION IS A CONSEQUENCE OF VIEWPOINT GEOMETRY.

Do not tell the system:

"Add perspective distortion."

Tell it:

"Place the physical camera at the distance and position required by the shot, then allow the resulting spatial relationships to emerge naturally."

A wide lens does not automatically mean distorted faces.

A telephoto lens does not automatically mean compressed space.

Anamorphic does not automatically mean facial distortion.

Lens distortion does not equal perspective distortion.

Digital warping is never an acceptable substitute for physical camera geometry.

The correct question is:

"What real camera position, subject distance, lens, and framing would produce this exact spatial relationship?"

Then reproduce that physical configuration.

The final result must look like genuine three-dimensional cinematography captured by a real camera.

No fake perspective.
No artificial facial deformation.
No digital compression.
No background resizing.
No synthetic depth.
No perspective warping.
No unstable geometry.
No spatial flicker.
No AI-generated perspective.

It must never look AI-generated.
