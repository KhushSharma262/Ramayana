# PERSPECTIVE

## PURPOSE

Control the physical spatial perspective produced by the camera position, subject distance, background distance, focal length, sensor format, and camera movement.

Perspective determines how objects at different distances appear relative to one another in the captured image.

Perspective is primarily a consequence of:

CAMERA POSITION
+
SUBJECT DISTANCE
+
RELATIVE DEPTH
+
CAMERA ORIENTATION

Focal length affects framing and field of view, but does NOT independently create perspective.

This distinction is fundamental.

The system must never treat:

- focal length
- field of view
- lens compression
- depth of field
- distortion

as interchangeable with perspective.

==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage from a real physical camera positioned in real three-dimensional space.

Perspective must be physically coherent.

NEVER create:

- artificial perspective
- digital perspective warping
- background resizing
- fake lens compression
- fake spatial expansion
- inconsistent object scale
- unstable vanishing points
- changing geometry between frames
- AI-generated parallax
- impossible depth relationships
- perspective that changes without camera movement
- subject proportions that change without physical cause
- digitally simulated camera movement

Every spatial relationship must be explainable by:

- camera position
- camera orientation
- lens projection
- subject geometry
- subject distance
- background distance
- camera movement
- subject movement

When uncertain:

choose the physically plausible and less exaggerated perspective.

PHYSICAL SPACE ALWAYS TAKES PRIORITY OVER CINEMATIC EFFECT.

==================================================
WHAT PERSPECTIVE IS
==================================================

Perspective is the visual representation of three-dimensional spatial relationships on a two-dimensional image plane.

It determines how apparent size changes with distance.

For example:

a nearby object
appears larger

while:

a distant object
appears smaller.

The amount of this apparent size difference is strongly controlled by camera position relative to the scene.

Perspective is therefore primarily a geometric consequence of the camera's viewpoint.

==================================================
CAMERA POSITION IS THE PRIMARY VARIABLE
==================================================

Changing camera position changes perspective.

If the camera moves closer to a subject:

- nearby features become relatively larger
- distant features become relatively smaller
- depth relationships become more pronounced
- foreground/background size differences increase
- parallax increases

If the camera moves farther away:

- relative size differences reduce
- spatial relationships can appear flatter
- foreground/background size differences decrease
- parallax decreases

This must occur naturally.

Do not simulate these changes digitally.

==================================================
FOCAL LENGTH DOES NOT DIRECTLY CREATE PERSPECTIVE
==================================================

A critical rule:

FOCAL LENGTH ≠ PERSPECTIVE.

At the same camera position:

changing focal length primarily changes:

- field of view
- framing
- magnification

The underlying perspective geometry remains determined by the same camera position.

However:

if focal length changes and the camera is moved to preserve framing:

camera position changes
→ perspective changes.

This distinction must always be preserved.

==================================================
SAME CAMERA POSITION
==================================================

If:

CAMERA_POSITION = CONSTANT

and:

FOCAL_LENGTH = CHANGED

then:

PERSPECTIVE_GEOMETRY = FUNDAMENTALLY UNCHANGED

while:

FOV = CHANGED
FRAMING = CHANGED
IMAGE_SCALE = CHANGED

Do not generate new perspective merely because the focal length changed.

==================================================
SAME FRAMING
==================================================

If:

FRAMING = CONSTANT

and:

FOCAL_LENGTH = CHANGED

then the camera generally must move.

For example:

wide lens
→ camera closer

longer lens
→ camera farther away

This camera repositioning changes perspective.

Therefore:

SAME_FRAMING + DIFFERENT_FOCAL_LENGTH
≠
SAME_PERSPECTIVE.

==================================================
PERSPECTIVE AND SUBJECT PROPORTIONS
==================================================

Perspective determines apparent relative scale within a three-dimensional subject.

For a human face:

moving the camera closer can make nearer features appear relatively larger than farther features.

For example:

- nose may appear larger relative to ears
- forehead may appear more prominent
- cheeks may show stronger depth differences

This is caused primarily by camera distance.

Do not incorrectly attribute this entirely to lens distortion.

==================================================
FACE PROTECTION
==================================================

Human faces are extremely sensitive to perspective changes.

Maintain:

- stable facial identity
- coherent head geometry
- physically plausible nose/ear relationships
- stable eye spacing
- realistic facial depth
- natural proportions

Do not use artificial perspective manipulation to make faces more dramatic.

If a perspective effect is required:

achieve it through a physically valid camera position and lens configuration.

==================================================
WIDE-LENS PERSPECTIVE
==================================================

Wide lenses do not inherently create exaggerated perspective.

The common dramatic wide-angle perspective effect usually results from:

WIDE FOV
+
CAMERA CLOSE TO SUBJECT.

When a wide lens is placed close:

- foreground features can appear much larger
- distant features appear relatively smaller
- depth becomes visually pronounced
- spatial relationships become expansive

This is physically valid.

Do not automatically create strong perspective merely because a wide lens is selected.

==================================================
TELEPHOTO PERSPECTIVE
==================================================

Telephoto lenses do not inherently flatten perspective.

The familiar "compressed" appearance usually results because a longer focal length is used from a greater camera distance to maintain framing.

The increased camera distance reduces relative size differences between foreground and background.

Therefore:

TELEPHOTO
+
FARTHER CAMERA POSITION
→
REDUCED APPARENT PERSPECTIVE DIFFERENCE.

Do not simulate this by digitally enlarging the background.

==================================================
PERSPECTIVE VS COMPRESSION
==================================================

"Compression" is a descriptive term for the appearance of reduced relative depth differences.

It is not a separate optical force.

The effect primarily comes from:

camera position
+
subject/background distances
+
framing requirements.

Do not implement compression as a post-processing effect.

==================================================
PERSPECTIVE VS FIELD OF VIEW
==================================================

FIELD OF VIEW determines:

HOW MUCH OF THE SCENE IS CAPTURED.

PERSPECTIVE determines:

HOW SPATIAL RELATIONSHIPS ARE REPRESENTED.

A wide FOV can be obtained from:

- short focal length
- larger sensor
- different camera format

but the perspective still depends on camera position.

Do not infer camera distance from FOV alone.

==================================================
PERSPECTIVE VS LENS DISTORTION
==================================================

Perspective is not lens distortion.

### PERSPECTIVE

Caused by viewpoint and three-dimensional geometry.

### LENS DISTORTION

Caused by optical projection imperfections.

A rectilinear wide lens can produce strong perspective while maintaining relatively straight lines.

A distorted lens can bend lines even when camera position is unchanged.

Never use lens distortion to simulate perspective.

==================================================
PERSPECTIVE VS ANAMORPHIC SQUEEZE
==================================================

Anamorphic squeeze is an optical transformation of the image.

Perspective is a spatial consequence of camera position.

They are separate.

Anamorphic selection must not automatically alter perspective.

Any apparent spatial character must arise from the actual lens geometry and camera configuration.

==================================================
PERSPECTIVE AND CAMERA ORIENTATION
==================================================

Camera orientation affects how perspective is presented.

Changes in:

- pan
- tilt
- roll
- yaw
- pitch

change the image's relationship to vanishing points and architectural lines.

Do not confuse:

camera orientation
with
camera position.

A camera can rotate while remaining at the same spatial location.

This changes framing and orientation but does not create the same perspective change as physically moving the camera.

==================================================
PERSPECTIVE AND PAN
==================================================

A pure pan:

- rotates the camera around its position
- changes what portion of the scene is visible
- does not produce the same perspective change as a dolly

Objects may shift through the frame, but their underlying spatial relationships remain consistent.

Do not simulate a pan as lateral camera movement.

==================================================
PERSPECTIVE AND TILT
==================================================

A pure tilt:

- rotates the camera vertically
- changes framing
- changes the orientation of vertical/horizontal scene features relative to the image

It does not move the camera through space.

Do not artificially alter object depth relationships during a tilt.

==================================================
PERSPECTIVE AND DOLLY
==================================================

A dolly changes camera position.

Therefore it changes perspective.

During a dolly:

- foreground and background shift relative to each other
- parallax develops
- subject scale changes
- spatial relationships evolve continuously

This is one of the most important physical distinctions in cinematography.

Never simulate a dolly by digitally scaling the image.

==================================================
PERSPECTIVE AND TRACKING
==================================================

Lateral tracking produces parallax.

Nearby objects move across the frame more rapidly than distant objects.

This difference must depend on actual depth.

Do not move all scene layers at the same artificial speed.

==================================================
PERSPECTIVE AND CRANE / JIB
==================================================

Vertical camera movement changes viewpoint.

As the camera rises or falls:

- foreground/background relationships change
- visible surfaces change
- horizon relationship changes
- parallax changes

The scene must update as a genuine three-dimensional environment.

Do not use 2D layer translation.

==================================================
PERSPECTIVE AND ORBIT
==================================================

A camera orbit changes the camera's position around the subject.

Therefore:

perspective changes continuously.

During an orbit:

- visible sides of objects change
- foreground/background relationships change
- parallax changes
- occlusion changes

Do not rotate a flat image around a subject.

==================================================
PERSPECTIVE AND SUBJECT MOVEMENT
==================================================

Perspective changes can also result from subject movement.

If a subject moves toward the camera:

- apparent size increases
- nearby features become more prominent
- background relationship changes

If a subject moves away:

- apparent size decreases
- spatial separation changes

The camera must not be moved artificially to compensate unless explicitly specified.

==================================================
PERSPECTIVE AND PARALLAX
==================================================

Parallax is one of the strongest indicators of real three-dimensional camera movement.

When the camera moves:

near objects generally shift more relative to the frame than distant objects.

The amount depends on:

- camera translation
- object distance
- relative depth
- direction of movement

Parallax must be physically derived.

Never create:

- flat-layer parallax
- arbitrary depth offsets
- disconnected foreground motion
- background sliding independently

==================================================
PERSPECTIVE AND OCCLUSION
==================================================

As the camera moves, objects may:

- reveal hidden surfaces
- cover other objects
- uncover background
- become occluded

Occlusion changes must follow actual three-dimensional geometry.

Do not maintain an object's visibility through a camera movement if it should physically become hidden.

==================================================
PERSPECTIVE AND VANISHING POINTS
==================================================

Parallel lines in three-dimensional space may converge toward vanishing points in the image.

Perspective must maintain coherent vanishing-point behaviour.

For architectural environments:

- parallel structures should converge consistently
- perspective lines should not randomly change direction
- vanishing points should move coherently when the camera moves or rotates

Never allow vanishing points to flicker.

==================================================
ARCHITECTURE
==================================================

Architecture is highly sensitive to perspective.

Maintain:

- coherent verticals
- stable horizontal relationships
- physically correct convergence
- consistent scale
- stable structural geometry

Camera tilt may cause vertical convergence.

Do not automatically correct it unless the camera/lens workflow explicitly includes perspective correction.

==================================================
PERSPECTIVE CONTROLLED LENSES
==================================================

If a tilt-shift or perspective-control lens is explicitly selected:

perspective correction may occur through physical lens movement.

This must remain distinct from:

- ordinary lens distortion
- digital warping
- camera position

Use only when the shot requires it.

==================================================
PERSPECTIVE AND ARCHITECTURAL VERTICALS
==================================================

If the camera points upward from below a structure:

vertical lines may converge.

This is physically correct.

If the cinematographic intention requires parallel verticals:

use an appropriate:

- camera position
- camera height
- lens
- tilt-shift/perspective-control configuration

Do not arbitrarily straighten geometry with AI image manipulation.

==================================================
PERSPECTIVE AND LANDSCAPES
==================================================

For landscapes:

preserve physically plausible relationships between:

- foreground
- midground
- background
- mountains
- trees
- structures
- atmospheric layers

Do not enlarge distant mountains artificially.

Do not flatten the landscape because a telephoto lens is selected.

The appearance must emerge from camera position and lens framing.

==================================================
PERSPECTIVE AND MOUNTAINS
==================================================

Distant mountains may appear large when photographed with a long focal length from a distant camera position.

This is not digital magnification of the mountains.

The system must preserve:

- atmospheric perspective
- haze
- relative scale
- foreground/background depth
- natural parallax

Do not make mountains appear unnaturally huge.

==================================================
PERSPECTIVE AND CROWDS
==================================================

For crowds:

camera position and focal length determine how densely people appear arranged.

A distant camera with a longer focal length can make a crowd appear visually dense.

Maintain:

- individual body scale
- natural depth ordering
- correct occlusion
- consistent spacing
- realistic parallax

Do not digitally compress the crowd.

==================================================
PERSPECTIVE AND GROUP SHOTS
==================================================

For multiple characters:

avoid placing some subjects unnaturally close to the camera unless intentionally motivated.

Perspective must preserve:

- relative body proportions
- spatial order
- realistic depth
- coherent scale

Characters at different distances should not have identical apparent sizes unless their physical sizes and distances justify it.

==================================================
PERSPECTIVE AND HUMAN HEIGHT
==================================================

Camera height affects perceived viewpoint.

Possible viewpoints include:

- eye level
- low angle
- high angle
- ground level
- elevated
- overhead

Camera height should be physically established.

Do not simulate low/high viewpoints by digitally stretching the image.

==================================================
EYE-LEVEL PERSPECTIVE
==================================================

Eye-level perspective is achieved by positioning the camera at an appropriate height relative to the subject.

It is not a filter.

For a standing adult:

camera height may be approximately around eye level depending on the intended viewpoint.

For seated characters:

camera height should be adjusted accordingly.

Do not force every scene into a generic eye-level viewpoint.

==================================================
LOW-ANGLE PERSPECTIVE
==================================================

A low camera position can produce:

- stronger upward spatial relationships
- increased apparent scale of nearby subjects
- more visible underside surfaces
- stronger vertical convergence depending on orientation

The effect must come from real camera placement.

Do not enlarge the character digitally.

==================================================
HIGH-ANGLE PERSPECTIVE
==================================================

A high camera position can reveal:

- top surfaces
- ground relationships
- spatial layout
- surrounding environment

The viewpoint must be physically plausible.

==================================================
OVERHEAD PERSPECTIVE
==================================================

An overhead shot requires a physically elevated camera position or an appropriate rig.

Do not simulate overhead perspective by rotating a flat image.

Maintain:

- ground geometry
- occlusion
- shadows
- object scale
- realistic spatial relationships

==================================================
PERSPECTIVE AND DEPTH OF FIELD
==================================================

Perspective and DOF are independent.

A scene can have:

- strong perspective + deep focus
- strong perspective + shallow focus
- weak perspective + shallow focus
- weak perspective + deep focus

Do not use blur to simulate depth.

Perspective comes from geometry.

DOF comes from the optical configuration.

==================================================
PERSPECTIVE AND BOKEH
==================================================

Bokeh does not create perspective.

Background blur may make depth easier to perceive, but it must not replace actual spatial geometry.

Do not use background blur to fake:

- distant objects
- foreground separation
- depth layering

==================================================
PERSPECTIVE AND FOCUS
==================================================

Focus determines which depth plane appears sharp.

Perspective determines how the scene's spatial relationships are represented.

They must remain independent.

A focus pull does not automatically change perspective.

If apparent framing changes during focus:

that must come from actual lens breathing.

==================================================
PERSPECTIVE AND LENS BREATHING
==================================================

Lens breathing can alter apparent framing during focus changes.

It does NOT constitute a perspective change equivalent to moving the camera.

If breathing occurs:

- framing may shift subtly
- subject scale may change slightly
- FOV may appear to change

but the underlying camera position remains unchanged.

Do not simulate perspective movement through breathing.

==================================================
PERSPECTIVE AND ZOOM
==================================================

A zoom changes focal length.

It changes:

- FOV
- framing
- image scale

It does not inherently change camera position or perspective.

Therefore:

ZOOM ≠ DOLLY.

If a zoom is performed from a fixed camera position:

perspective geometry remains fundamentally stable.

==================================================
PERSPECTIVE AND DOLLY ZOOM
==================================================

A dolly zoom combines:

CAMERA TRANSLATION
+
FOCAL-LENGTH CHANGE.

The camera movement changes perspective.

The focal-length change maintains or modifies framing.

This can create the characteristic relationship where:

subject size remains relatively stable
while
background spatial scale changes.

This must be physically derived.

Never generate a dolly zoom through digital perspective warping.

==================================================
PERSPECTIVE AND CROP FACTOR
==================================================

Crop factor affects the portion of the lens image captured and therefore affects FOV/framing.

Crop factor does NOT directly alter perspective.

If framing is changed by moving the camera to compensate:

camera position changes
→ perspective changes.

Therefore:

CROP FACTOR ≠ PERSPECTIVE CONTROL.

==================================================
PERSPECTIVE AND SENSOR FORMAT
==================================================

Sensor format affects:

- FOV
- image coverage
- required focal length for equivalent framing

Perspective remains determined by camera position.

Do not claim that a smaller sensor inherently "flattens" or "expands" perspective.

Any resulting perspective difference comes from the camera repositioning used to achieve equivalent framing.

==================================================
PERSPECTIVE AND ANAMORPHIC
==================================================

Anamorphic optics may introduce:

- squeeze
- lens-specific distortion
- characteristic edge rendering
- bokeh behaviour
- flare
- breathing

These are separate from basic perspective geometry.

Do not create anamorphic perspective merely because anamorphic optics are selected.

==================================================
PERSPECTIVE AND SUBJECT DISTANCE
==================================================

Subject distance is one of the most important variables.

As camera-to-subject distance decreases:

relative depth differences become more pronounced.

As camera-to-subject distance increases:

relative depth differences decrease.

This is particularly important for:

- faces
- groups
- foreground objects
- architecture
- environmental portraits

==================================================
PERSPECTIVE AND BACKGROUND DISTANCE
==================================================

Background distance affects how large the background appears relative to the subject.

When the camera position and framing are changed:

background scale relationships may change significantly.

The system must preserve actual background geometry.

Do not scale backgrounds independently.

==================================================
PERSPECTIVE AND SUBJECT/BACKGROUND RELATIONSHIP
==================================================

The appearance of depth depends strongly on:

CAMERA
→ SUBJECT
→ BACKGROUND

distances.

For a subject near the camera and background far away:

strong depth separation may appear.

For subject and background at similar distances:

spatial compression may appear stronger.

Do not force one result through post-processing.

==================================================
PERSPECTIVE AND FOREGROUND OBJECTS
==================================================

Foreground objects can become dramatically larger when close to the camera.

This is physically valid.

For example:

a branch close to the lens
may occupy a large portion of the frame
while a character several meters away appears smaller.

Do not automatically remove such effects.

They can be valuable compositional tools when physically motivated.

==================================================
PERSPECTIVE AND FRAME EDGES
==================================================

Objects near the edge of a wide-angle frame may appear visually exaggerated because of their position and perspective.

Do not automatically interpret this as lens distortion.

Maintain the distinction between:

perspective
+
projection
+
lens distortion.

==================================================
PERSPECTIVE AND CAMERA ROTATION
==================================================

A rotating camera changes the direction of view.

Perspective relationships within the three-dimensional scene remain coherent.

The image must not independently deform as the camera rotates.

Maintain:

- stable object geometry
- stable relative depth
- coherent vanishing points
- correct parallax

==================================================
PERSPECTIVE AND CAMERA ROLL
==================================================

Camera roll rotates the image plane.

It does not independently change the three-dimensional perspective of the scene.

Maintain geometric consistency.

Do not introduce artificial spatial distortion during roll.

==================================================
PERSPECTIVE AND MOVING SUBJECTS
==================================================

Moving subjects must retain consistent perspective relative to:

- camera
- environment
- other subjects

If a character approaches the camera:

their apparent scale should increase continuously.

If they move laterally:

parallax and occlusion should update naturally.

No frame-to-frame resizing.

==================================================
PERSPECTIVE AND MOTION BLUR
==================================================

Motion blur does not change perspective.

It is determined by:

- shutter speed
- movement
- exposure time

Maintain perspective geometry underneath the blur.

Do not use blur to hide perspective inconsistencies.

==================================================
PERSPECTIVE AND OPTICAL DISTORTION
==================================================

If the selected lens has distortion:

the distortion must remain attached to the lens projection.

As subjects move through the frame:

their geometry should change smoothly according to their position within the lens's distortion field.

Do not make distortion appear/disappear randomly.

==================================================
PERSPECTIVE AND TEMPORAL CONSISTENCY
==================================================

Perspective must remain temporally stable.

NEVER allow:

- background scale flicker
- vanishing-point jumps
- object-size jumps
- changing depth relationships
- unstable parallax
- geometry morphing
- artificial camera movement
- inconsistent occlusion
- spatial layer sliding
- facial perspective changes without camera movement

Every perspective change must have a physical cause.

==================================================
PERSPECTIVE CONTINUITY
==================================================

Across shots in the same sequence, maintain coherent:

- camera height
- camera side
- subject position
- spatial orientation
- lens language
- perspective logic
- 180-degree continuity

Lens changes may occur, but the resulting perspective must remain consistent with the new camera position.

==================================================
180-DEGREE RULE
==================================================

For conventional dialogue coverage:

maintain the established camera side of the action axis unless an intentional crossing is motivated.

A sudden perspective reversal can make screen direction confusing.

Perspective continuity must support:

- character orientation
- eyelines
- movement direction
- spatial geography

==================================================
PERSPECTIVE AND EYELINES
==================================================

Character eyelines must correspond to actual spatial relationships.

If two characters are facing one another:

their eyelines should converge toward the appropriate spatial region.

Do not independently manipulate eyes to fake perspective.

==================================================
PERSPECTIVE AND SACRED / DIVINE MOMENTS
==================================================

Even when a scene is visually extraordinary:

perspective must remain physically coherent.

A divine or monumental moment may use:

- unusual camera height
- wide perspective
- long-lens observation
- large-scale spatial composition
- dramatic movement

but the spatial geometry must remain believable.

Do not create supernatural perspective merely to make a scene feel divine unless the story explicitly requires a physically impossible visual phenomenon.

==================================================
PERSPECTIVE AND RAMAYANA
==================================================

Perspective should communicate the physical scale and spatial relationship of:

- characters
- forests
- palaces
- battlefields
- mountains
- temples
- rivers
- armies
- cities
- sacred spaces

Examples:

### INTIMATE CHARACTER MOMENT

Use physically appropriate camera distance to create natural facial perspective.

### GRAND PALACE

Preserve architectural geometry and believable scale.

### FOREST

Use real depth layering and parallax.

### BATTLEFIELD

Use camera position and focal length to determine spatial density.

### MOUNTAIN LANDSCAPE

Use physically plausible distance and atmospheric perspective.

### ARMY / CROWD

Use real three-dimensional spacing rather than 2D compression.

==================================================
PERSPECTIVE VALIDATION
==================================================

Before generating a shot, verify:

1. Where is the physical camera?
2. What is the camera height?
3. What direction is the camera facing?
4. What is the subject distance?
5. What is the background distance?
6. What focal length is selected?
7. What sensor format is being used?
8. What FOV results?
9. What perspective results from the camera position?
10. Is the desired framing achievable?
11. If focal length changes, does camera position also change?
12. If camera position changes, has perspective been recalculated?
13. Is parallax physically consistent?
14. Are vanishing points coherent?
15. Are facial proportions physically plausible?
16. Is architecture geometrically stable?
17. Are foreground/background relationships correct?
18. Is subject scale consistent?
19. Is camera movement producing the correct perspective evolution?
20. Is lens distortion being kept separate from perspective?
21. Is DOF being kept separate from perspective?
22. Is compression being treated as a spatial consequence rather than an effect?
23. Is there any digital perspective manipulation?
24. Is temporal perspective consistency maintained?
25. Does the final image look like real three-dimensional cinematography?

If any answer is NO:

RECALCULATE THE CAMERA POSITION AND OPTICAL CONFIGURATION.

==================================================
PERSPECTIVE MACHINE-READABLE PARAMETERS
==================================================

perspective:
  camera_position:
    x:
    y:
    z:
  camera_height:
  camera_orientation:
    pan:
    tilt:
    roll:
  subject_position:
    x:
    y:
    z:
  subject_distance:
  background_distance:
  foreground_distance:
  focal_length:
  sensor_format:
  crop_factor:
  field_of_view:
    horizontal:
    vertical:
    diagonal:
  perspective_strength:
  spatial_compression:
  parallax:
  vanishing_points:
  camera_movement:
  subject_movement:
  lens_distortion:
  perspective_control:
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
SUBJECT_DISTANCE
+
BACKGROUND_DISTANCE
→
PERSPECTIVE_RELATIONSHIPS

CAMERA_POSITION
+
FOCAL_LENGTH
+
SENSOR_FORMAT
→
FRAMING / FIELD_OF_VIEW

FOCAL_LENGTH
+
SENSOR_FORMAT
→
FIELD_OF_VIEW

CAMERA_TRANSLATION
→
PERSPECTIVE_CHANGE / PARALLAX

CAMERA_ROTATION
→
VIEW_DIRECTION / VANISHING_POINT_POSITION

CAMERA_POSITION
+
FOCAL_LENGTH
+
FRAMING_REQUIREMENT
→
PERSPECTIVE_CONFIGURATION

LENS_DESIGN
→
DISTORTION

FOCUS_DISTANCE
+
APERTURE
+
FOCAL_LENGTH
+
SENSOR
→
DEPTH_OF_FIELD

DO NOT CONFUSE THESE DEPENDENCIES.

==================================================
PERSPECTIVE CONSTRAINT LOGIC
==================================================

IF:

CAMERA_POSITION = CONSTANT

AND:

FOCAL_LENGTH CHANGES

THEN:

PERSPECTIVE_GEOMETRY REMAINS FUNDAMENTALLY CONSTANT.

IF:

CAMERA_POSITION CHANGES

THEN:

RECALCULATE PERSPECTIVE.

IF:

CAMERA_POSITION CHANGES
+
SUBJECT/BACKGROUND DISTANCES CHANGE

THEN:

RECALCULATE:

- perspective
- parallax
- apparent scale
- occlusion
- framing
- spatial relationships

IF:

FRAMING MUST REMAIN CONSTANT
+
FOCAL_LENGTH CHANGES

THEN:

CALCULATE REQUIRED CAMERA REPOSITIONING
→
RECALCULATE PERSPECTIVE.

==================================================
DEFAULT RAMAYANA PERSPECTIVE PROFILE
==================================================

PERSPECTIVE_MODE:
physical

CAMERA_POSITION:
explicit

CAMERA_HEIGHT:
shot-dependent

CAMERA_ORIENTATION:
shot-dependent

SUBJECT_DISTANCE:
physically derived

BACKGROUND_DISTANCE:
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

COMPRESSION:
camera-position derived

PARALLAX:
physically derived

VANISHING_POINTS:
physically derived

LENS_DISTORTION:
lens-dependent

DIGITAL_PERSPECTIVE:
none

DIGITAL_PARALLAX:
none

DIGITAL_BACKGROUND_SCALING:
none

ARTIFICIAL_SPATIAL_WARP:
none

TEMPORAL_CONSISTENCY:
extremely high

OPTICAL_CONSISTENCY:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
FINAL DECISION HIERARCHY
==================================================

Determine perspective in this order:

1. STORY PURPOSE
2. SHOT PURPOSE
3. SUBJECT
4. SUBJECT PRIORITY
5. ENVIRONMENT
6. REQUIRED SPATIAL RELATIONSHIP
7. COMPOSITION
8. CAMERA HEIGHT
9. CAMERA POSITION
10. CAMERA ORIENTATION
11. SUBJECT DISTANCE
12. BACKGROUND DISTANCE
13. REQUIRED FRAMING
14. SENSOR FORMAT
15. FIELD OF VIEW
16. FOCAL LENGTH
17. RESULTING PERSPECTIVE
18. PARALLAX
19. OCCLUSION
20. VANISHING POINTS
21. LENS DISTORTION
22. CAMERA MOVEMENT
23. SUBJECT MOVEMENT
24. TEMPORAL CONSISTENCY
25. FINAL SPATIAL REALISM

The fundamental rule is:

PERSPECTIVE COMES FROM WHERE THE CAMERA IS.

Focal length determines how much of that perspective is included in the frame.

Therefore never solve a perspective problem by simply changing focal length unless the resulting camera position and framing are also physically recalculated.

The correct question is:

"What real three-dimensional camera position would produce the exact spatial relationship required for this shot?"

Then select the lens that provides the required framing from that position.

Never fake:

- compression
- perspective
- parallax
- depth
- background scale
- spatial expansion
- spatial flattening

through digital manipulation.

Perspective must emerge from a real camera occupying a real position in a real three-dimensional scene.

The final result must look like genuine live-action cinematography.

No artificial perspective.
No fake compression.
No digital parallax.
No background scaling.
No perspective warping.
No geometry instability.
No spatial flicker.
No AI-generated depth.

It must never look AI-generated.
