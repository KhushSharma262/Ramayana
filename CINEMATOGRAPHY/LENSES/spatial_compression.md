# SPATIAL COMPRESSION

## PURPOSE

Control the physical appearance commonly described as "spatial compression" or "telephoto compression."

Spatial compression is NOT an independent optical effect.

It is primarily the visual consequence of:

CAMERA POSITION
+
SUBJECT DISTANCE
+
BACKGROUND DISTANCE
+
RELATIVE DEPTH
+
FRAMING REQUIREMENTS.

Longer focal lengths are commonly associated with compression because they allow the camera to be positioned farther from the subject while maintaining a similar framing.

The system must therefore distinguish:

- spatial compression
- perspective
- focal length
- field of view
- magnification
- lens distortion
- depth of field
- anamorphic character

These are related but not interchangeable.

==================================================
OPTICAL CAUSALITY / UNKNOWN-PARAMETER RULE
==================================================

Spatial compression must never be treated as an independently adjustable visual effect.

The system must determine the physical cause before describing or applying compression.

Required causal order:

CAMERA POSITION
→ SUBJECT DISTANCE
→ BACKGROUND DISTANCE
→ RELATIVE DEPTH
→ PERSPECTIVE RELATIONSHIP
→ APPARENT SPATIAL COMPRESSION.

FOCAL LENGTH primarily determines:

- field of view
- framing
- magnification

It does not independently compress physical space.

If required physical parameters are unknown, do not invent compression strength, perspective flattening, background enlargement, or depth reduction.

When uncertain:

choose the physically plausible result with the least artificial intervention.

==================================================
SPATIAL COMPRESSION VALIDATION PRECEDENCE
==================================================

Evaluate spatial compression in this order:

1. CAMERA POSITION
2. SUBJECT DISTANCE
3. BACKGROUND DISTANCE
4. RELATIVE DEPTH
5. PERSPECTIVE RELATIONSHIP
6. FRAMING REQUIREMENT
7. FOCAL LENGTH
8. FIELD OF VIEW
9. MAGNIFICATION
10. LENS DISTORTION
11. DEPTH OF FIELD
12. ANAMORPHIC CHARACTER
13. TEMPORAL CONSISTENCY.

No downstream parameter may contradict the established camera geometry.

==================================================
SPATIAL-COMPRESSION / CAMERA-POSITION FIREWALL
==================================================

Camera position is the primary physical cause of spatial compression.

If the camera moves farther from the subject:

- relative scale differences across depth decrease
- perspective differences decrease
- distant objects occupy a larger relative proportion of the frame when framing is maintained
- the scene may appear spatially denser or more compressed.

If the camera moves closer:

- relative scale differences increase
- foreground/background scale differences become stronger
- spatial depth appears more expansive.

Never simulate either result by digitally resizing scene elements.

==================================================
SPATIAL-COMPRESSION / FOCAL-LENGTH FIREWALL
==================================================

Changing focal length while keeping camera position fixed changes:

- field of view
- framing
- magnification

It does not independently change perspective geometry.

Therefore:

SAME CAMERA POSITION
+
DIFFERENT FOCAL LENGTH
=
DIFFERENT FRAMING

not:

DIFFERENT PHYSICAL PERSPECTIVE.

Compression must not be increased merely because focal length increases.

==================================================
SPATIAL-COMPRESSION / SAME-FRAMING FIREWALL
==================================================

When maintaining approximately the same framing while increasing focal length, the camera will generally move farther from the subject.

That camera movement may change:

- perspective
- relative scale
- parallax
- foreground/background relationships
- apparent spatial density.

The resulting compression must therefore be attributed to the changed camera position, not to an independent telephoto-compression property.

==================================================
SPATIAL-COMPRESSION / PERSPECTIVE FIREWALL
==================================================

Perspective is the underlying spatial geometry.

Spatial compression is a descriptive consequence of reduced relative perspective differences.

Do not create a separate synthetic "compression" transformation.

Never:

- flatten depth digitally
- reduce perspective independently
- enlarge backgrounds independently
- shrink foreground objects independently
- manipulate depth maps to force compression
- alter object scale independently of camera geometry.

==================================================
SPATIAL-COMPRESSION / BACKGROUND FIREWALL
==================================================

A distant background object may appear larger relative to the subject when the camera is farther away and framing is maintained.

The background must remain physically located at its actual scene distance.

Never enlarge, reposition, or scale the background independently to create compression.

Occlusion and overlap must remain consistent with the real 3D scene.

==================================================
SPATIAL-COMPRESSION / PARALLAX FIREWALL
==================================================

Relative camera movement must produce physically consistent parallax.

Foreground, subject, and background layers must not move as independently composited 2D planes.

If camera movement is present:

- near objects respond more strongly
- distant objects respond less strongly
- relative motion follows scene depth
- spatial relationships remain continuous.

==================================================
SPATIAL-COMPRESSION / LENS-DISTORTION FIREWALL
==================================================

Spatial compression is not lens distortion.

Do not use:

- barrel distortion
- pincushion distortion
- moustache distortion
- digital warping

to create or strengthen compression.

Lens distortion must remain an independent optical property determined by the selected lens/system and image position.

==================================================
SPATIAL-COMPRESSION / WIDE-ANGLE FIREWALL
==================================================

Wide-angle lenses may exaggerate apparent foreground/background scale differences when the camera is close to the subject.

This does not mean the lens independently creates "anti-compression."

The observed spatial expansion must remain a consequence of camera position and scene geometry.

==================================================
SPATIAL-COMPRESSION / TELEPHOTO FIREWALL
==================================================

Telephoto lenses are commonly associated with compressed-looking images because they permit equivalent framing from farther camera positions.

Therefore:

TELEPHOTO ≠ INDEPENDENT COMPRESSION EFFECT.

Do not automatically apply stronger compression whenever a long focal length is selected.

The actual camera position must justify the appearance.

==================================================
SPATIAL-COMPRESSION / DOF FIREWALL
==================================================

Depth of field is independent from spatial compression.

A shallow DOF does not create compression.

A deep DOF does not remove compression.

DOF must be calculated from:

- focal length
- aperture
- focus distance
- sensor/format
- subject distance
- acceptable circle of confusion.

Do not use blur to imitate spatial flattening.

==================================================
SPATIAL-COMPRESSION / ANAMORPHIC FIREWALL
==================================================

Anamorphic capture may alter:

- field of view behavior
- distortion
- bokeh geometry
- flare behavior
- breathing
- optical character.

It does not authorize artificial spatial compression.

Any compressed spatial appearance must still be physically supported by camera position and scene geometry.

==================================================
SPATIAL-COMPRESSION / MOVEMENT VALIDATION
==================================================

During camera movement, spatial compression must evolve continuously from changing camera position.

No frame may independently introduce:

- sudden perspective flattening
- sudden background enlargement
- sudden depth reduction
- artificial scale changes.

Push-ins, pull-outs, tracking shots, pans, tilts, cranes, and handheld movement must preserve continuous 3D spatial relationships.

==================================================
SPATIAL-COMPRESSION / OPTICAL CHARACTER AUTHORIZATION
==================================================

Optical character may include:

- distortion
- vignetting
- chromatic aberration
- flare
- ghosting
- bokeh
- breathing.

These effects must be authorized independently by the selected lens/system.

They must never be used as substitutes for spatial compression.

==================================================
SPATIAL-COMPRESSION / AI ARTIFACT FIREWALL
==================================================

Compression processing must never produce:

- warped faces
- changing body proportions
- unstable background geometry
- texture crawling
- object duplication
- floating objects
- inconsistent depth
- unstable perspective
- temporal scale changes
- background morphing
- artificial depth-map edges
- synthetic layer separation
- inconsistent reflections or shadows.

The scene must remain a coherent physical 3D environment across every frame.

==================================================
TEMPORAL SPATIAL-COMPRESSION VALIDATION
==================================================

Across consecutive frames:

- camera position must evolve continuously
- subject distance must remain coherent
- background distance must remain coherent
- relative scale must remain stable unless physically changing
- parallax must remain physically consistent
- perspective must not jump
- compression must not pulse or fluctuate artificially.

Any unexplained temporal change is a validation failure.

==================================================
VALIDATION FAILURE HANDLING
==================================================

If the requested spatial compression conflicts with physical camera geometry:

1. Preserve physical camera geometry.
2. Recalculate framing.
3. Recalculate focal length if required.
4. Recalculate perspective relationship.
5. Recalculate subject/background scale relationships.
6. Revalidate parallax and depth.
7. Reject any remaining artificial compression.

Never repair a physically impossible result with digital spatial manipulation.

==================================================
MINIMUM SPATIAL INTERVENTION
==================================================

Apply the smallest physically justified change necessary to satisfy the shot.

Do not exaggerate compression merely because:

- the shot is cinematic
- a telephoto lens is selected
- the background should feel "closer"
- the composition looks more dramatic that way.

Physical plausibility takes priority over visual emphasis.

==================================================
FINAL SPATIAL-COMPRESSION REALISM RULE
==================================================

SPATIAL COMPRESSION MUST EMERGE FROM REAL CAMERA POSITION, REAL SUBJECT DISTANCE, REAL BACKGROUND DISTANCE, REAL RELATIVE DEPTH, AND REAL PERSPECTIVE GEOMETRY.

FOCAL LENGTH CONTROLS FOV AND FRAMING; IT DOES NOT INDEPENDENTLY SQUASH SPACE.

NO DIGITAL DEPTH FLATTENING.
NO ARTIFICIAL BACKGROUND SCALING.
NO SYNTHETIC PERSPECTIVE REDUCTION.
NO FAKE TELEPHOTO COMPRESSION.
NO 2D LAYER COMPOSITING.

THE FINAL RESULT MUST LOOK LIKE A REAL CAMERA CAPTURED THE SCENE FROM A REAL POSITION IN REAL THREE-DIMENSIONAL SPACE.

IT MUST NEVER LOOK AI-GENERATED.

==================================================
==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage from a real camera positioned in real three-dimensional space.

Spatial compression must emerge from real camera geometry.

NEVER create compression through:

- digital background scaling
- artificial depth flattening
- depth-map manipulation
- 2D layer movement
- fake telephoto blur
- synthetic perspective reduction
- background enlargement
- foreground shrinking
- AI-generated spatial warping
- independent object resizing
- artificial atmospheric flattening
- digital focal-length simulation

The system must never make a scene look compressed simply because the shot is intended to feel cinematic.

When uncertain:

choose the physically plausible and less noticeable result.

REAL CAMERA POSITION ALWAYS TAKES PRIORITY OVER THE APPEARANCE OF COMPRESSION.

==================================================
WHAT SPATIAL COMPRESSION MEANS
==================================================

Spatial compression describes the visual appearance in which foreground, subject, and background elements appear closer together in depth than they would from a closer camera position.

Typical characteristics may include:

- reduced relative size differences between near and far objects
- visually denser spatial layers
- background objects appearing larger relative to the subject
- reduced apparent depth separation
- stronger overlap between distant objects
- less dramatic foreground/background scale difference

This is not the lens "squashing space."

The physical cause is primarily the camera's distance from the scene.

==================================================
PRIMARY CAUSE
==================================================

The most important variable is:

CAMERA DISTANCE.

As the camera moves farther from the subject:

relative size differences between objects at different depths decrease.

As the camera moves closer:

relative size differences increase.

Therefore:

CAMERA FARTHER
â†’
REDUCED RELATIVE PERSPECTIVE DIFFERENCE
â†’
MORE COMPRESSED APPEARANCE

CAMERA CLOSER
â†’
GREATER RELATIVE PERSPECTIVE DIFFERENCE
â†’
MORE EXPANSIVE APPEARANCE

This must emerge naturally from projection geometry.

==================================================
TELEPHOTO COMPRESSION
==================================================

"Telephoto compression" is a useful cinematographic description but can be misleading.

A telephoto lens does not independently compress space.

The common configuration is:

LONGER FOCAL LENGTH
+
CAMERA FARTHER FROM SUBJECT
+
SAME OR SIMILAR FRAMING

The farther camera position produces the reduced perspective differences.

The longer focal length allows the camera to maintain the desired framing from that farther position.

Therefore:

TELEPHOTO â‰  COMPRESSION EFFECT

Instead:

CAMERA DISTANCE
â†’
PERSPECTIVE RELATIONSHIP

FOCAL LENGTH
â†’
FOV / FRAMING.

==================================================
SAME CAMERA POSITION
==================================================

If:

CAMERA_POSITION = CONSTANT

and:

FOCAL_LENGTH CHANGES

then:

perspective geometry remains fundamentally unchanged.

The image changes in:

- field of view
- framing
- magnification

but not because the lens has physically compressed the scene.

Do not generate artificial compression merely because focal length increased.

==================================================
SAME FRAMING
==================================================

If:

FRAMING = CONSTANT

and:

FOCAL_LENGTH INCREASES

the camera generally moves farther away.

That camera movement changes:

- perspective
- relative scale
- parallax
- apparent spatial density

Therefore the resulting compressed appearance is a consequence of the changed camera position.

==================================================
EXAMPLE
==================================================

Suppose a character stands in front of a distant mountain.

Configuration A:

- camera close to character
- wide/normal lens
- character fills frame

Result:

- character appears large relative to mountain
- mountain appears relatively small
- stronger foreground/background scale difference
- stronger depth impression

Configuration B:

- camera farther away
- longer lens
- character still fills frame

Result:

- character and mountain occupy more similar relative scale
- mountain appears larger relative to character
- depth appears denser
- spatial relationship appears compressed

The mountain was not digitally enlarged.

The camera position changed.

==================================================
PERSPECTIVE RELATIONSHIP
==================================================

Spatial compression is fundamentally connected to perspective.

Perspective depends on camera position.

Compression is a descriptive consequence of reduced relative perspective differences.

Therefore:

PERSPECTIVE
is the underlying geometry.

SPATIAL COMPRESSION
is the resulting visual appearance.

Do not implement compression as an independent post-processing parameter.

==================================================
RELATIVE SIZE
==================================================

For two objects at different distances:

the apparent size ratio depends on their distances from the camera.

A simplified relationship is:

APPARENT_SIZE âˆ 1 / DISTANCE

Therefore, when the camera is far away:

the difference between the distances to foreground and background objects becomes proportionally smaller.

Their apparent sizes become more similar.

This is the physical basis of spatial compression.

==================================================
FOREGROUND AND BACKGROUND
==================================================

Compression becomes visually noticeable when objects occupy different depth planes.

Examples:

- person + mountain
- person + architecture
- foreground tree + distant character
- army + landscape
- horse + riders
- crowd + palace
- foreground character + distant army
- ship + shoreline
- temple + mountain

The system must preserve actual depth relationships.

==================================================
FOREGROUND SCALE
==================================================

A close camera may make a foreground object appear dramatically larger.

When the camera moves farther away:

the relative scale difference decreases.

Do not artificially shrink the foreground object.

Its scale must emerge from:

- actual object size
- actual camera distance
- actual focal length
- actual framing.

==================================================
BACKGROUND SCALE
==================================================

A distant background may appear larger relative to the subject when the camera is positioned farther away and a longer focal length is used to maintain framing.

This is one of the classic appearances associated with telephoto photography.

However:

the background is not being enlarged independently.

Its apparent size is a consequence of the complete camera geometry.

==================================================
MOUNTAINS
==================================================

Mountains are a common example of spatial compression.

A long lens from a distant camera position may make distant mountains appear visually large behind a character.

Maintain:

- atmospheric perspective
- haze
- natural scale
- real distance
- coherent horizon
- stable terrain geometry

Do not digitally enlarge the mountain.

Do not remove atmospheric perspective simply because a telephoto lens is selected.

==================================================
CROWDS
==================================================

Long-lens perspectives can make crowds appear dense.

Maintain:

- individual body proportions
- realistic spacing
- natural occlusion
- correct depth ordering
- coherent movement

Do not collapse the crowd into a flat layer.

Compression should make the crowd appear visually dense while preserving actual three-dimensional structure.

==================================================
ARMIES
==================================================

For large armies:

a distant camera with a long focal length may visually stack ranks of soldiers.

This can communicate:

- scale
- density
- mass
- formation

without digitally compressing the battlefield.

Maintain:

- realistic depth
- individual scale
- natural occlusion
- terrain interaction
- physically correct motion.

==================================================
ARCHITECTURE
==================================================

Compression can make:

- buildings
- columns
- palace structures
- gateways
- streets

appear visually closer together.

This must result from the camera's physical distance.

Do not digitally move buildings toward one another.

Maintain:

- straight structural geometry
- coherent vanishing points
- correct scale
- actual depth relationships.

==================================================
FOREST SCENES
==================================================

A long lens can make multiple layers of:

- trees
- branches
- foliage
- characters

appear visually dense.

This can be useful for:

- mystery
- concealment
- tension
- depth layering

But each layer must remain physically separate.

Do not create a flat stack of 2D trees.

==================================================
SPATIAL COMPRESSION AND FOCAL LENGTH
==================================================

Focal length determines:

- FOV
- framing
- magnification

It does not independently determine spatial compression.

However, longer focal lengths often enable the camera to be positioned farther away while maintaining framing.

Therefore:

FOCAL_LENGTH
â†’
FRAMING POSSIBILITY

CAMERA_POSITION
â†’
PERSPECTIVE

PERSPECTIVE
â†’
COMPRESSED SPATIAL APPEARANCE.

==================================================
SPATIAL COMPRESSION AND FIELD OF VIEW
==================================================

A narrow FOV is often associated with compression because it is commonly produced by a longer focal length.

But:

NARROW FOV â‰  COMPRESSION.

A narrow FOV from a fixed camera position does not fundamentally alter perspective geometry.

Do not create compression simply because:

FOV = NARROW.

==================================================
SPATIAL COMPRESSION AND CAMERA POSITION
==================================================

This is the highest-priority relationship.

If the shot requires stronger compression:

the first question is:

CAN THE CAMERA BE POSITIONED FARTHER AWAY?

Then determine:

- required focal length
- framing
- FOV
- subject distance
- background distance
- lens coverage.

Do not begin with:

"Use a telephoto lens."

Begin with:

"Where should the physical camera be?"

==================================================
SPATIAL COMPRESSION AND SUBJECT DISTANCE
==================================================

Compression is strongly influenced by the camera-to-subject distance.

As subject distance increases:

relative differences between subject distance and background distance become smaller.

This reduces apparent depth variation.

Do not define compression as a fixed lens property.

==================================================
SPATIAL COMPRESSION AND BACKGROUND DISTANCE
==================================================

Compression is strongest when the background contains significant depth but the camera is far enough away that relative distance differences become small.

For example:

camera â†’ 50 m â†’ subject
camera â†’ 100 m â†’ background

has a smaller relative distance difference than:

camera â†’ 2 m â†’ subject
camera â†’ 52 m â†’ background.

The second configuration produces much stronger relative depth scaling.

Do not assume the visual result is identical merely because the subject-background distance is the same.

==================================================
SPATIAL COMPRESSION AND PARALLAX
==================================================

A distant camera position reduces apparent parallax for a given camera movement relative to scene scale.

However, parallax must still be physically present.

Do not eliminate parallax entirely.

During camera movement:

- nearby objects should move relative to distant objects
- depth relationships should remain coherent
- parallax magnitude should follow actual distances.

==================================================
SPATIAL COMPRESSION AND CAMERA MOVEMENT
==================================================

If the camera moves during a compressed shot:

perspective must change continuously.

### DOLLY IN

As the camera approaches:

- compression decreases
- relative depth differences increase
- foreground/background separation becomes stronger

### DOLLY OUT

As the camera retreats:

- compression increases
- relative depth differences decrease
- spatial layers become denser

These changes must occur continuously.

==================================================
SPATIAL COMPRESSION AND LATERAL TRACKING
==================================================

Lateral movement produces parallax.

Even a compressed telephoto view should not behave like a flat image.

Nearer objects may shift more than distant objects.

Maintain physically correct:

- relative movement
- occlusion
- scale
- depth ordering.

==================================================
SPATIAL COMPRESSION AND ORBIT
==================================================

An orbit changes camera position around the subject.

Therefore:

perspective and spatial relationships change.

Do not rotate a flat compressed image around the subject.

==================================================
SPATIAL COMPRESSION AND ZOOM
==================================================

A zoom changes focal length.

At a fixed camera position:

zooming does not inherently create or remove spatial compression.

The underlying perspective remains fundamentally stable.

Do not make a zoom simulate a dolly.

==================================================
SPATIAL COMPRESSION AND DOLLY ZOOM
==================================================

A dolly zoom combines:

CAMERA MOVEMENT
+
FOCAL-LENGTH CHANGE.

The camera movement changes perspective.

The focal-length change controls framing.

The resulting background scale relationship must be physically derived.

Do not create the effect through:

- background scaling
- digital perspective warp
- AI depth manipulation.

==================================================
SPATIAL COMPRESSION AND DEPTH OF FIELD
==================================================

Compression and DOF are separate.

A telephoto setup can have:

- shallow DOF
- moderate DOF
- deep DOF

depending on:

- aperture
- focal length
- focus distance
- sensor
- subject/background distances.

Do not use shallow blur as a substitute for spatial compression.

==================================================
SPATIAL COMPRESSION AND BOKEH
==================================================

Bokeh is an optical property of out-of-focus regions.

Compression is a spatial perspective property.

They must be generated independently.

A compressed shot may have restrained bokeh.

A non-compressed shot may have strong bokeh.

Do not connect:

MORE COMPRESSION
â†’
MORE BOKEH.

==================================================
SPATIAL COMPRESSION AND LENS DISTORTION
==================================================

Compression does not require lens distortion.

A highly corrected telephoto lens can produce strong compressed spatial relationships.

Do not add:

- barrel distortion
- pincushion distortion
- edge stretching

to create compression.

==================================================
SPATIAL COMPRESSION AND ANAMORPHIC
==================================================

Anamorphic lenses may be used for compressed compositions, but anamorphic character does not create compression.

Maintain the distinction between:

- anamorphic squeeze
- camera position
- focal length
- perspective
- compression
- bokeh
- distortion.

If anamorphic is selected:

apply only its actual optical characteristics.

==================================================
SPATIAL COMPRESSION AND NORMAL LENSES
==================================================

Normal lenses can produce compressed-looking scenes if the camera is positioned sufficiently far away.

Do not assume compression requires telephoto.

The lens primarily determines how the distant camera position is framed.

==================================================
SPATIAL COMPRESSION AND WIDE LENSES
==================================================

A wide lens generally requires a closer camera position for equivalent framing.

This can increase relative depth differences.

However, a wide lens from a distant camera position may still show relatively restrained perspective differences.

Therefore:

WIDE â‰  EXPANSION ALWAYS.

The result depends on camera position.

==================================================
SPATIAL COMPRESSION AND FACES
==================================================

For portraits:

a distant camera with a longer focal length can reduce relative facial depth differences compared with a very close camera.

This may produce a more neutral facial appearance.

Maintain:

- natural facial proportions
- stable nose/ear relationship
- realistic head depth
- consistent identity.

Do not artificially flatten faces.

==================================================
SPATIAL COMPRESSION AND GROUPS
==================================================

For multiple people at different depths:

compression can make them appear visually closer in scale.

However:

their actual depth ordering must remain.

Do not force equal apparent size.

Allow physical projection to determine scale.

==================================================
SPATIAL COMPRESSION AND HORSES / ANIMALS
==================================================

Animals photographed with longer lenses may appear visually dense against distant backgrounds.

Maintain:

- body proportions
- limb scale
- depth ordering
- natural movement
- correct occlusion.

Do not flatten the animal's body.

==================================================
SPATIAL COMPRESSION AND WEAPONS
==================================================

A long object extending toward the camera can still exhibit perspective differences.

Do not automatically flatten it because the scene uses a telephoto lens.

Physical camera position remains dominant.

==================================================
SPATIAL COMPRESSION AND MACRO
==================================================

Macro photography usually involves very close camera-to-subject distances.

This tends to produce strong relative depth sensitivity rather than classic telephoto compression.

Do not confuse:

HIGH MAGNIFICATION
with
SPATIAL COMPRESSION.

==================================================
SPATIAL COMPRESSION AND SENSOR SIZE
==================================================

Sensor size does not directly create compression.

A smaller sensor can produce a narrower FOV with the same focal length.

If the camera position is unchanged:

perspective remains fundamentally the same.

If the camera is moved to maintain framing:

perspective changes because of the new camera position.

==================================================
SPATIAL COMPRESSION AND CROP FACTOR
==================================================

Crop factor affects FOV/framing comparisons.

It does not directly create compression.

Do not use:

CROP_FACTOR = COMPRESSION.

Compression must emerge from camera position and spatial geometry.

==================================================
SPATIAL COMPRESSION AND ATMOSPHERIC PERSPECTIVE
==================================================

Atmospheric perspective is separate from spatial compression.

Distant objects may become:

- lower contrast
- less saturated
- hazier
- less detailed

due to atmosphere.

A telephoto shot may make this especially noticeable because more distant layers are included in a narrow FOV.

Do not remove atmospheric perspective to make a telephoto image look cleaner.

==================================================
ATMOSPHERIC DEPTH
==================================================

Maintain physically plausible atmospheric effects based on:

- distance
- humidity
- particles
- lighting
- weather
- time of day

Do not apply uniform haze.

Do not flatten distant mountains into a clean artificial background.

==================================================
SPATIAL COMPRESSION AND LIGHTING
==================================================

Lighting does not create compression.

However, lighting can reveal or hide compressed spatial layers.

Maintain:

- consistent light direction
- realistic shadow relationships
- atmospheric illumination
- physically plausible falloff.

Do not use lighting gradients to fake depth compression.

==================================================
SPATIAL COMPRESSION AND SHADOWS
==================================================

Shadows must remain attached to their actual objects and ground positions.

Do not compress shadow positions independently from geometry.

Spatial relationships between:

- character
- object
- shadow
- environment

must remain physically coherent.

==================================================
SPATIAL COMPRESSION AND REFLECTIONS
==================================================

Reflections must correspond to actual camera and object positions.

If a telephoto camera is moved farther away:

reflections must update accordingly.

Do not preserve old reflections while changing apparent camera distance.

==================================================
SPATIAL COMPRESSION AND OCCLUSION
==================================================

Compressed scenes may contain substantial overlap between depth layers.

Occlusion must remain physically correct.

Objects farther away may disappear behind nearer objects.

As the camera moves:

occlusion boundaries should change naturally.

Do not use 2D layer ordering.

==================================================
SPATIAL COMPRESSION AND VANISHING POINTS
==================================================

Perspective convergence must remain coherent.

Compression does not eliminate vanishing points.

Long-lens scenes may make convergence less visually obvious because the field of view is narrow, but the underlying geometry remains.

==================================================
SPATIAL COMPRESSION AND ARCHITECTURE
==================================================

For streets, corridors, palace halls, and architectural layers:

a distant camera with a longer focal length can visually stack structures.

Maintain:

- correct geometry
- correct vanishing points
- realistic distances
- stable verticals
- physically plausible perspective.

==================================================
SPATIAL COMPRESSION AND BATTLEFIELDS
==================================================

For large battle scenes:

compression may communicate:

- mass
- density
- army scale
- formation depth.

The camera may be positioned far away with a longer lens.

However:

individual soldiers must remain three-dimensional.

Maintain:

- terrain interaction
- atmospheric depth
- occlusion
- realistic movement
- scale progression.

==================================================
SPATIAL COMPRESSION AND EPIC SCALE
==================================================

Epic scale must never be created by simply "compressing" the image.

Large-scale appearance should result from:

- real subject size
- real environment size
- camera distance
- focal length
- atmospheric perspective
- blocking
- composition.

==================================================
SPATIAL COMPRESSION AND RAMAYANA
==================================================

For the Ramayana visual system, spatial compression may be useful for:

- massive armies
- distant mountains
- palace courtyards
- forest depth
- processions
- groups of warriors
- elephants and horses
- distant characters
- large environmental layers.

It should be selected only when the spatial relationship benefits from a more distant camera viewpoint.

Do not use compression merely to make scenes appear "epic."

==================================================
TEMPORAL CONSISTENCY
==================================================

Spatial compression must remain stable unless physical movement changes the camera configuration.

NEVER allow:

- background scale flicker
- mountains resizing
- crowds flattening/unflattening
- foreground objects changing scale
- perspective jumping
- parallax inconsistency
- changing depth relationships
- random atmospheric changes
- vanishing-point movement without cause
- artificial spatial warping
- objects sliding independently through depth.

Every visible change must have a physical cause.

==================================================
LENS CONTINUITY
==================================================

Within a shot:

maintain stable:

- focal length
- sensor format
- camera position logic
- spatial compression
- perspective
- lens identity.

If the lens is zooming:

update FOV continuously.

If the camera is moving:

update perspective continuously.

If both occur:

calculate both together.

==================================================
SEQUENCE CONTINUITY
==================================================

Across shots:

compression should form a coherent spatial language.

A sequence may intentionally transition:

WIDE / EXPANSIVE
â†’
NORMAL
â†’
COMPRESSED TELEPHOTO

to change the audience's perception of space.

However, each transition must correspond to a real camera/lens configuration.

Do not make compression randomly fluctuate between shots.

==================================================
SPATIAL COMPRESSION MACHINE-READABLE PARAMETERS
==================================================

spatial_compression:
  enabled:
  mode:
  camera_position:
    x:
    y:
    z:
  camera_height:
  subject_distance:
  foreground_distance:
  background_distance:
  subject_background_distance:
  relative_depth:
  focal_length:
  sensor_format:
  crop_factor:
  field_of_view:
  framing:
  perspective:
  relative_scale_difference:
  compression_strength:
  parallax:
  occlusion:
  atmospheric_perspective:
  lens_distortion:
  depth_of_field:
  bokeh:
  camera_movement:
  subject_movement:
  lens_continuity:
  temporal_consistency:

==================================================
COMPRESSION STRENGTH
==================================================

Do not treat:

COMPRESSION_STRENGTH

as an arbitrary visual effect.

If represented as a machine-readable value, it must be derived from physical relationships.

Conceptually:

compression_strength
=
function(
  camera_distance,
  subject_distance,
  background_distance,
  relative_depth,
  framing_configuration
)

It should describe the resulting spatial appearance, not directly manipulate pixels.

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
BACKGROUND_POSITION
â†’
BACKGROUND_DISTANCE

SUBJECT_DISTANCE
+
BACKGROUND_DISTANCE
â†’
RELATIVE_DEPTH_RELATIONSHIP

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
SUBJECT/BACKGROUND DISTANCES
â†’
PERSPECTIVE

PERSPECTIVE
+
RELATIVE_DEPTH
â†’
SPATIAL_COMPRESSION_APPEARANCE

CAMERA_TRANSLATION
â†’
PERSPECTIVE_CHANGE
+
PARALLAX

LENS_DESIGN
â†’
DISTORTION / BOKEH / FLARE / OTHER_OPTICAL_CHARACTER

Do not merge:

FOCAL_LENGTH
with
COMPRESSION.

==================================================
COMPRESSION CONSTRAINT LOGIC
==================================================

IF:

CAMERA_POSITION = CONSTANT

AND:

FOCAL_LENGTH CHANGES

THEN:

PERSPECTIVE = FUNDAMENTALLY CONSTANT

COMPRESSION = FUNDAMENTALLY CONSTANT

while:

FOV / FRAMING = CHANGED.

IF:

CAMERA_MOVES FARTHER FROM SUBJECT

THEN:

RELATIVE_PERSPECTIVE_DIFFERENCES GENERALLY DECREASE

AND:

COMPRESSED_APPEARANCE GENERALLY INCREASES.

IF:

CAMERA_MOVES CLOSER TO SUBJECT

THEN:

RELATIVE_PERSPECTIVE_DIFFERENCES GENERALLY INCREASE

AND:

COMPRESSED_APPEARANCE GENERALLY DECREASES.

IF:

LONGER_FOCAL_LENGTH IS USED
+
CAMERA_MOVES FARTHER TO MAINTAIN FRAMING

THEN:

RECALCULATE:

- perspective
- relative scale
- parallax
- background appearance
- compression.

==================================================
DEFAULT RAMAYANA PROFILE
==================================================

SPATIAL_COMPRESSION_MODE:
physical

CAMERA_POSITION:
explicit

SUBJECT_DISTANCE:
physically derived

BACKGROUND_DISTANCE:
physically derived

FOREGROUND_DISTANCE:
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

OCCLUSION:
physically derived

ATMOSPHERIC_PERSPECTIVE:
physically derived

LENS_DISTORTION:
lens-dependent

DEPTH_OF_FIELD:
physically derived

BOKEH:
lens-dependent

DIGITAL_COMPRESSION:
none

DIGITAL_BACKGROUND_SCALING:
none

DIGITAL_DEPTH_WARP:
none

DIGITAL_PARALLAX:
none

ARTIFICIAL_SPATIAL_FLATTENING:
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

Before generating a spatially compressed shot, verify:

1. Is compression actually required by the story?
2. What spatial relationship should appear compressed?
3. Where is the physical camera?
4. What is the subject distance?
5. What is the background distance?
6. What is the foreground distance?
7. What focal length is selected?
8. What sensor format is used?
9. What FOV results?
10. Is the framing physically achievable?
11. Does the camera position produce the intended perspective?
12. Is the compressed appearance a natural result of that perspective?
13. Is the background being independently resized?
14. Is the foreground being independently resized?
15. Is parallax physically correct?
16. Are occlusion relationships correct?
17. Are vanishing points coherent?
18. Is atmospheric perspective preserved?
19. Is lens distortion separate from compression?
20. Is DOF separate from compression?
21. Is bokeh separate from compression?
22. Is camera movement producing continuous spatial change?
23. Is the lens configuration stable?
24. Is the sensor configuration stable?
25. Is temporal geometry stable?
26. Does the result look like real telephoto/long-distance cinematography rather than digital compression?

If any answer is NO:

RECALCULATE THE PHYSICAL CAMERA/LENS CONFIGURATION.

==================================================
FINAL DECISION HIERARCHY
==================================================

Determine spatial compression in this order:

1. STORY PURPOSE
2. SHOT PURPOSE
3. SUBJECT
4. ENVIRONMENT
5. REQUIRED SPATIAL RELATIONSHIP
6. COMPOSITION
7. FOREGROUND / MIDGROUND / BACKGROUND STRUCTURE
8. CAMERA POSITION
9. SUBJECT DISTANCE
10. BACKGROUND DISTANCE
11. RELATIVE DEPTH
12. REQUIRED FRAMING
13. SENSOR FORMAT
14. FIELD OF VIEW
15. FOCAL LENGTH
16. RESULTING PERSPECTIVE
17. RELATIVE SCALE DIFFERENCES
18. SPATIAL COMPRESSION
19. PARALLAX
20. OCCLUSION
21. ATMOSPHERIC PERSPECTIVE
22. DEPTH OF FIELD
23. BOKEH
24. LENS DISTORTION
25. CAMERA MOVEMENT
26. SUBJECT MOVEMENT
27. LENS CONTINUITY
28. TEMPORAL CONSISTENCY
29. FINAL SPATIAL REALISM

The fundamental rule is:

SPATIAL COMPRESSION IS NOT A LENS EFFECT.

It is the visual consequence of photographing a three-dimensional scene from a relatively distant camera position.

The correct question is:

"What real camera position and focal length would a cinematographer use to produce this exact spatial relationship while maintaining the required framing?"

Then derive:

CAMERA POSITION
â†’
SUBJECT/BACKGROUND DISTANCES
â†’
PERSPECTIVE
â†’
FOCAL LENGTH
â†’
FOV
â†’
FRAMING
â†’
SPATIAL COMPRESSION
â†’
PARALLAX
â†’
OPTICAL CHARACTER.

Never tell the system:

"Add telephoto compression."

Instead:

"Position the physical camera at the distance required for the intended spatial relationship, then select the focal length required to obtain the framing."

No digital compression.
No background scaling.
No artificial flattening.
No depth-map manipulation.
No fake telephoto effect.
No 2D layer stacking.
No independent object resizing.
No perspective warping.
No spatial flicker.
No AI-generated depth.

The final result must look like genuine live-action cinematography captured from a real camera at a real distance.

It must never look AI-generated.

