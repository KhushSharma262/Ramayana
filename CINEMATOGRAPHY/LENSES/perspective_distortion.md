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
OPTICAL CAUSALITY / UNKNOWN-PARAMETER RULE
==================================================

Perspective distortion must be treated as a consequence of real
three-dimensional camera geometry.

UNKNOWN does not mean:

- wide-angle distortion
- facial exaggeration
- compression
- lens distortion
- increased depth
- reduced depth
- cinematic perspective

If the required spatial parameters are unknown:

do not invent an exact perspective-distortion value.

Use only explicitly established:

- camera position
- subject distance
- subject depth
- relative distances
- lens projection

Never infer perspective distortion solely from:

- focal length
- sensor format
- crop factor
- field of view
- lens category
- cinematic intent

==================================================
PERSPECTIVE-DISTORTION VALIDATION PRECEDENCE
==================================================

Resolve perspective distortion in this order:

CAMERA POSITION
→ SUBJECT DISTANCE
→ SUBJECT DEPTH
→ RELATIVE DEPTH DIFFERENCES
→ SENSOR / PROJECTION
→ FOCAL LENGTH / FRAMING
→ RESULTING PERSPECTIVE
→ RELATIVE SCALE
→ FINAL IMAGE

Perspective distortion must be derived after physical camera geometry
is established.

Never select an "amount of distortion" first and construct the camera
around that desired effect.

==================================================
PERSPECTIVE-DISTORTION FIREWALL
==================================================

Perspective distortion is not an independent image effect.

It emerges from:

CAMERA
→ SUBJECT
→ SUBJECT DEPTH
→ RELATIVE DISTANCES
→ PERSPECTIVE PROJECTION

Therefore:

do not implement:

PERSPECTIVE_DISTORTION = EFFECT_INTENSITY

Instead derive the apparent relative scale of different parts of the
scene from their actual distances to the camera.

==================================================
CAMERA-POSITION FIREWALL
==================================================

When camera position changes:

recalculate:

- subject distance
- foreground distance
- background distance
- relative depth
- apparent scale
- perspective
- parallax
- occlusion
- framing

Do not preserve the previous perspective digitally after moving the
camera.

==================================================
SUBJECT-DEPTH FIREWALL
==================================================

Perspective distortion depends on depth variation within the subject.

A shallow subject may show little relative perspective change.

A deep subject may show stronger relative scale differences.

Therefore:

do not assign the same perspective-distortion behaviour to:

- flat artwork
- human faces
- human bodies
- architecture
- deep objects

without considering their actual three-dimensional depth.

==================================================
FOCAL-LENGTH FIREWALL
==================================================

Focal length does not independently create perspective distortion.

From a fixed camera position:

changing focal length primarily changes:

- field of view
- framing
- image scale

The underlying perspective geometry remains fundamentally determined
by camera position.

If focal-length changes require camera repositioning to maintain
framing:

the resulting perspective change must be attributed to the camera
repositioning.

Never encode:

LONG FOCAL LENGTH = AUTOMATICALLY LESS PERSPECTIVE DISTORTION

or:

SHORT FOCAL LENGTH = AUTOMATICALLY MORE PERSPECTIVE DISTORTION

without considering camera position.

==================================================
LENS-DISTORTION SEPARATION FIREWALL
==================================================

Perspective distortion and optical lens distortion must remain
separate systems.

PERSPECTIVE DISTORTION:

changes relative apparent scale because of viewpoint geometry.

LENS DISTORTION:

changes image geometry because of the optical projection of the lens.

Never use:

- barrel distortion
- pincushion distortion
- moustache distortion
- decentering distortion

to simulate perspective.

Never use camera repositioning to describe optical lens distortion.

==================================================
WIDE-ANGLE FIREWALL
==================================================

A wide field of view does not automatically create facial distortion.

Strong facial perspective effects require sufficiently close camera
placement relative to facial depth.

Therefore:

WIDE FOV
does not equal
PERSPECTIVE DISTORTION.

The system must evaluate:

CAMERA DISTANCE
+
FACIAL DEPTH
+
REQUIRED FRAMING

before determining the resulting facial proportions.

==================================================
FACE-PERSPECTIVE FIREWALL
==================================================

For faces:

the system must preserve physically plausible relationships between:

- nose
- eyes
- ears
- forehead
- cheeks
- chin
- facial depth

If the camera approaches closely:

nearer facial structures may appear proportionally larger.

This is physically valid.

Do not correct this by:

- facial reshaping
- digital perspective correction
- geometry warping
- synthetic facial scaling

unless the actual physical camera configuration has changed.

==================================================
FOREGROUND / BACKGROUND FIREWALL
==================================================

Objects at different distances must retain physically consistent
relative scale.

A nearby foreground object may become very large in frame.

A distant background object may appear relatively small.

This relationship must emerge from camera geometry.

Never independently resize:

- foreground
- subject
- background

to create a desired perspective effect.

==================================================
COMPRESSION FIREWALL
==================================================

Perspective distortion must not be confused with spatial compression.

Compression is strongly influenced by:

- camera position
- subject distance
- background distance
- framing

A long focal length does not create compression independently.

Do not add artificial flattening because a telephoto lens is selected.

==================================================
ANAMORPHIC FIREWALL
==================================================

Anamorphic optical characteristics are separate from perspective
geometry.

Anamorphic lenses may introduce:

- squeeze
- lens-specific distortion
- edge behaviour
- bokeh characteristics
- flare
- breathing

These must not be used to manufacture perspective distortion.

First establish:

CAMERA POSITION
→ PERSPECTIVE

Then establish:

LENS SYSTEM
→ OPTICAL CHARACTER

==================================================
PERSPECTIVE-DISTORTION / DOF FIREWALL
==================================================

Depth of field does not create perspective distortion.

Perspective distortion comes from:

CAMERA GEOMETRY.

Depth of field comes from:

OPTICAL CONFIGURATION.

Do not use:

- blur
- bokeh
- focus
- depth maps

to simulate perspective.

==================================================
PERSPECTIVE-DISTORTION / MOVEMENT VALIDATION
==================================================

During camera movement, perspective distortion must evolve continuously.

If the camera approaches the subject:

recalculate relative depth and apparent scale.

If the camera moves laterally:

recalculate parallax and occlusion.

If the camera moves away:

recalculate the reduction in relative depth differences.

Never resize or warp objects frame-by-frame to maintain a desired
perspective appearance.

==================================================
TEMPORAL PERSPECTIVE-DISTORTION VALIDATION
==================================================

Within a continuous shot:

perspective distortion must remain stable unless physical camera or
subject geometry changes.

NEVER allow:

- facial proportion flicker
- changing nose/ear relationships without camera movement
- background scale jumps
- foreground scale jumps
- spatial compression flicker
- perspective warping
- geometry morphing
- unstable vanishing points
- frame-to-frame depth changes without physical cause

Every change must have a physical cause.

==================================================
PERSPECTIVE-DISTORTION / AI ARTIFACT FIREWALL
==================================================

The causal direction must remain:

REAL CAMERA POSITION
→ REAL SUBJECT DISTANCE
→ REAL SUBJECT DEPTH
→ PERSPECTIVE PROJECTION
→ APPARENT RELATIVE SCALE

Never:

DESIRED DISTORTION
→ DIGITAL WARP
→ IMAGE

Prohibited:

- digital facial stretching
- synthetic wide-angle faces
- background warping
- artificial foreground enlargement
- independent background scaling
- depth-map deformation
- perspective filters
- frame-to-frame geometry correction
- subject reshaping
- artificial compression
- synthetic spatial expansion

==================================================
VALIDATION FAILURE HANDLING
==================================================

If perspective-distortion validation fails:

1. identify the failed spatial relationship
2. identify the earliest incorrect camera/scene parameter
3. correct that physical parameter
4. recalculate subject distances
5. recalculate relative depth
6. recalculate perspective
7. recalculate framing
8. recalculate parallax and occlusion
9. validate temporal consistency
10. validate final spatial realism

Never repair perspective distortion after image formation.

==================================================
MINIMUM PERSPECTIVE INTERVENTION
==================================================

When multiple physical configurations can produce the required shot:

prefer the configuration requiring the fewest unnecessary changes to:

- camera position
- subject distance
- focal length
- framing
- lens system

Do not move the camera closer solely to exaggerate perspective.

Do not move it farther away solely to suppress perspective.

The camera position must serve the actual spatial and story
requirements.

==================================================
FINAL PERSPECTIVE-DISTORTION REALISM RULE
==================================================

Every perspective-distortion decision must be explainable through a
real camera occupying a real position relative to a real
three-dimensional subject.

The system must establish:

- camera position
- subject distance
- subject depth
- relative distances
- required framing
- focal length
- sensor/projection
- resulting perspective
- resulting relative scale
- temporal behaviour

If the desired appearance cannot be produced by the physical
configuration:

RECONFIGURE THE CAMERA/LENS/SCENE GEOMETRY.

Never fake perspective distortion digitally.

==================================================
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
â†’
GREATER RELATIVE DEPTH DIFFERENCE

CAMERA FARTHER
â†’
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

IMAGE_SIZE âˆ FOCAL_LENGTH / DISTANCE

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
â†’
face distortion.

Instead:

camera distance
+
subject depth
â†’
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

telephoto â‰  compression effect.

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
â†’
CAMERA MOVES CLOSER

LONGER LENS
â†’
CAMERA MOVES FARTHER

This changes perspective.

Therefore:

SAME FRAMING
+
DIFFERENT FOCAL LENGTH
â†’
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

â†’ strong perspective differences may appear.

A distant building photographed with a poorly corrected lens:

â†’ barrel distortion may bend straight lines.

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
â†’
SHOT
â†’
SPATIAL RELATIONSHIP
â†’
REQUIRED FRAMING
â†’
CAMERA POSITION
â†’
FOCAL LENGTH
â†’
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
â†’
SUBJECT_DISTANCE

CAMERA_POSITION
+
SUBJECT_DEPTH
â†’
PERSPECTIVE_RELATIONSHIPS

SUBJECT_DISTANCE
+
SUBJECT_DEPTH
â†’
RELATIVE_SIZE_DIFFERENCE

FOCAL_LENGTH
+
SENSOR_FORMAT
â†’
FIELD_OF_VIEW

FOCAL_LENGTH
+
CAMERA_POSITION
â†’
FRAMING

CAMERA_POSITION
+
SUBJECT_DEPTH
â†’
PERSPECTIVE_DISTORTION

CAMERA_TRANSLATION
â†’
PERSPECTIVE_CHANGE
+
PARALLAX

LENS_DESIGN
â†’
OPTICAL_LENS_DISTORTION

ANAMORPHIC_DESIGN
â†’
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

SUBJECT_DEPTH â‰ˆ 0

THEN:

PERSPECTIVE_DISTORTION â‰ˆ MINIMAL

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

