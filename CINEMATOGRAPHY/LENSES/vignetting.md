# VIGNETTING BEHAVIOUR

## PURPOSE

Control the physical behaviour of lens and sensor-related light falloff toward the image edges.

Vignetting is a physical imaging characteristic in which illumination decreases toward portions of the image away from the optical axis.

Vignetting must be treated as a consequence of:

- lens design
- aperture
- focal length
- sensor format
- image circle
- optical construction
- mechanical obstruction
- filters
- focus distance when relevant
- lens position/coverage
- camera configuration

Vignetting is NOT:

- a generic cinematic effect
- a decorative dark border
- an automatic "film look"
- an emotional effect
- an artificial framing tool
- a substitute for lighting
- an automatic property of every lens

The system must first determine whether physical vignetting would occur and only then render its resulting appearance.

==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage through a real camera and physical lens.

It must NEVER look AI-generated.

Vignetting must remain:

- physically plausible
- optically coherent
- lens-dependent
- sensor-dependent
- exposure-dependent
- spatially stable
- temporally stable.

NEVER create:

- artificial cinematic corner darkening
- perfectly symmetrical digital black corners
- circular overlay masks
- obvious radial gradients
- exaggerated dark borders
- vignette pulses
- vignette flicker
- vignette following subjects
- vignette that changes independently of camera/lens conditions
- digital edge darkening used to force attention
- artificial spotlight framing
- fake lens coverage.

When uncertain:

choose weaker or imperceptible vignetting rather than an obvious artificial effect.

REAL OPTICAL VIGNETTING ALWAYS TAKES PRIORITY OVER A "CINEMATIC VIGNETTE."

==================================================
CORE DEFINITION
==================================================

Vignetting describes illumination falloff across the image.

It generally becomes more noticeable away from the optical axis.

The image centre may remain relatively brighter while the edges and corners receive less illumination.

The exact falloff depends on the physical optical system.

Do not represent vignetting as a fixed universal radial gradient.

==================================================
TYPES OF VIGNETTING
==================================================

Distinguish between:

1. NATURAL / OPTICAL VIGNETTING
2. MECHANICAL VIGNETTING
3. SENSOR / COSINE FOURTH LAW FALL-OFF
4. FILTER / ACCESSORY VIGNETTING
5. DIGITAL VIGNETTE

The cinematography system should primarily model the first four physical cases.

Digital vignette must remain disabled unless explicitly specified as a post-production process.

==================================================
NATURAL / OPTICAL VIGNETTING
==================================================

Natural optical vignetting results from the geometry of the lens and the changing effective aperture toward the edges of the image.

It can depend on:

- lens design
- aperture
- focal length
- entrance pupil geometry
- optical element arrangement
- sensor coverage.

The falloff should be:

- gradual
- spatially coherent
- lens-specific.

It should not resemble a software-generated circular mask.

==================================================
COSINE FOURTH LAW
==================================================

Image illumination can naturally decrease away from the optical axis due to the angular relationship between the lens and image plane.

This is commonly associated with cosine-fourth-law illumination falloff.

The system should treat this as a physical illumination phenomenon rather than a stylistic vignette.

Do not force an exaggerated mathematical falloff into every shot.

Actual lens design and optical correction influence the resulting image.

==================================================
MECHANICAL VIGNETTING
==================================================

Mechanical vignetting occurs when part of the image-forming light cone is physically obstructed.

Possible causes include:

- lens barrel
- matte box
- filter holder
- improperly sized filter
- adapter
- hood
- accessory
- lens coverage limitations
- physical obstruction elsewhere in the optical path.

Mechanical vignetting can produce:

- stronger edge darkening
- irregular corner darkening
- asymmetric falloff
- hard or semi-hard cutoff in severe cases.

If mechanical obstruction occurs:

the geometry must correspond to the actual obstruction.

Do not create a generic radial gradient.

==================================================
IMAGE CIRCLE
==================================================

The lens image circle must adequately cover the active sensor.

Define:

IMAGE_CIRCLE
vs
ACTIVE_SENSOR_AREA.

If:

IMAGE_CIRCLE < ACTIVE_SENSOR_AREA

the system must identify insufficient coverage.

Possible consequences:

- dark corners
- partial image cutoff
- severe mechanical vignetting
- unusable image.

Do not hide incompatible lens coverage through digital cropping unless the camera configuration explicitly includes that crop.

==================================================
LENS COVERAGE
==================================================

Lens coverage must be checked before generating vignetting.

A lens may:

- fully cover the sensor
- marginally cover the sensor
- partially cover the sensor.

The resulting illumination must follow the physical coverage.

Do not assume that a lens with strong edge falloff has insufficient sensor coverage.

Vignetting and incomplete image-circle coverage are related but not identical.

==================================================
APERTURE DEPENDENCE
==================================================

Vignetting can change with aperture.

Depending on lens design:

wide-open aperture may produce stronger illumination falloff.

Stopping down may reduce some forms of optical vignetting.

However:

not all vignetting disappears when stopped down.

Mechanical limitations and image-circle constraints may remain.

Therefore:

APERTURE
→
RECALCULATE VIGNETTING

rather than:

APERTURE
→
AUTOMATICALLY REMOVE VIGNETTING.

==================================================
FOCAL LENGTH DEPENDENCE
==================================================

Vignetting may change across focal lengths in a zoom lens.

A zoom lens can exhibit different:

- corner illumination
- mechanical clearance
- optical falloff
- image-circle behaviour

at different focal lengths.

Therefore:

if focal length changes,

vignetting must be recalculated.

Do not maintain a fixed vignette across the entire zoom range.

==================================================
ZOOM LENSES
==================================================

For a zoom lens:

VIGNETTING = FUNCTION(FOCAL_LENGTH, APERTURE, SENSOR, LENS_CONFIGURATION).

During a zoom:

corner illumination may change continuously.

Changes must be:

- gradual
- physically coherent
- lens-specific.

Never allow sudden vignette jumps.

==================================================
PRIME LENSES
==================================================

A prime lens should maintain a stable vignetting profile for a fixed:

- lens
- focal length
- aperture
- sensor configuration.

Changes may occur due to:

- aperture adjustment
- camera configuration
- filters
- focus if physically relevant
- changing optical conditions.

==================================================
SENSOR FORMAT
==================================================

Sensor format strongly affects the visible portion of the lens's illumination field.

A smaller sensor may capture only the central portion of the image circle.

Therefore:

the same lens may show:

- stronger edge falloff on a larger sensor
- less visible edge falloff on a smaller sensor.

This does NOT mean the lens itself changed.

The captured sensor area changed.

==================================================
CROP FACTOR
==================================================

Crop factor can alter the visible amount of vignetting because it changes which portion of the image circle reaches the final image.

Crop factor does NOT itself create vignetting.

Do not apply:

CROP FACTOR
→
AUTOMATIC VIGNETTE.

Instead:

SENSOR ACTIVE AREA
+
IMAGE CIRCLE
+
LENS ILLUMINATION PROFILE
→
VISIBLE VIGNETTING.

==================================================
FULL-FRAME REFERENCE
==================================================

Default Ramayana camera reference:

SENSOR:
full-frame reference

CROP_FACTOR:
1.0×

ASPECT_RATIO:
16:9

The actual active sensor area must still be used if the selected camera mode crops or windows the sensor.

==================================================
ASPECT RATIO
==================================================

Vignetting must be calculated against the actual recorded sensor area.

For the project:

MASTER_ASPECT_RATIO = 16:9.

If the camera records a cropped or windowed region:

recalculate:

- image circle relationship
- edge illumination
- corner behaviour.

Do not assume that a physical sensor's full dimensions are always being recorded.

==================================================
SPHERICAL LENSES
==================================================

Spherical lenses may exhibit vignetting according to their:

- optical design
- aperture
- image circle
- sensor coverage
- focal length.

Vignetting should generally be:

- subtle
- gradual
- lens-dependent.

Do not apply a generic spherical-lens vignette.

==================================================
ANAMORPHIC LENSES
==================================================

Anamorphic lenses may have their own illumination characteristics.

Vignetting may interact with:

- squeeze system
- optical design
- cylindrical elements
- image circle
- sensor coverage
- aperture.

Do not automatically make anamorphic lenses darker at the edges.

Do not confuse anamorphic edge character with vignetting.

==================================================
ULTRA-WIDE LENSES
==================================================

Ultra-wide lenses can be more sensitive to:

- image-circle coverage
- edge illumination
- mechanical obstruction
- filter-holder intrusion.

However:

ULTRA-WIDE ≠ AUTOMATIC HEAVY VIGNETTING.

Modern ultra-wide lenses may be highly corrected.

Use the selected lens profile.

==================================================
TELEPHOTO LENSES
==================================================

Telephoto lenses may have different illumination characteristics.

Do not assume:

TELEPHOTO = ZERO VIGNETTING.

Vignetting depends on:

- lens design
- aperture
- sensor coverage
- optical construction.

==================================================
MACRO LENSES
==================================================

Macro focusing can alter optical geometry.

When a macro lens is focused closely:

recalculate any focus-dependent illumination behaviour supported by the lens profile.

Do not assume that the infinity-focus vignette remains identical at extreme close focus.

==================================================
FOCUS DEPENDENCE
==================================================

Some lenses can exhibit changes in illumination or pupil geometry with focus.

If the selected lens profile supports focus-dependent behaviour:

vignetting may change subtly during focus movement.

This change must be:

- gradual
- lens-specific
- physically plausible.

Do not animate vignetting simply because a focus pull occurs.

==================================================
FILTERS
==================================================

Filters can contribute to vignetting when:

- thick filters are stacked
- filter holders obstruct the light path
- the lens/filter combination is incompatible
- wide-angle coverage is insufficient.

If filters are present:

evaluate their physical geometry.

Do not invent filter-related vignetting without a physical cause.

==================================================
MATTE BOX
==================================================

A matte box can cause mechanical vignetting if:

- improperly positioned
- incorrectly sized
- incompatible with the selected focal length
- incorrectly configured.

At very wide focal lengths:

mechanical obstruction can become particularly important.

If a matte box is part of the camera system:

evaluate it explicitly.

==================================================
FILTER STACKING
==================================================

Multiple filters may increase the possibility of mechanical obstruction.

The system should account for:

- filter thickness
- filter-holder geometry
- focal length
- lens coverage
- sensor format.

Do not add dark corners merely because multiple filters are present.

Only render vignetting when the physical configuration supports it.

==================================================
LENS HOODS
==================================================

A properly designed hood should generally prevent unwanted stray light without obstructing the intended image.

An incompatible hood can cause mechanical vignetting.

Do not assume:

LENS_HOOD = VIGNETTE.

==================================================
ASYMMETRIC VIGNETTING
==================================================

Real mechanical or decentered optical systems can produce asymmetrical illumination.

Possible causes:

- accessory obstruction
- decentered element
- imperfect alignment
- mechanical interference.

If asymmetry is present:

it must remain stable relative to the optical system.

Do not randomly shift the dark region around the frame.

==================================================
DECENTERING
==================================================

A decentered lens or optical element may cause uneven illumination.

If the selected lens profile intentionally includes such character:

the effect must remain:

- subtle
- stable
- lens-specific.

Do not use random asymmetry to make the image feel organic.

==================================================
CENTRE OF VIGNETTING
==================================================

The illumination falloff should generally be referenced to the optical axis.

Do not automatically place the brightest point exactly at the image centre if the actual optical axis, sensor alignment, or lens configuration indicates otherwise.

For a normal aligned system:

the optical axis should correspond approximately to the centre of the recorded image.

==================================================
LIGHTING VS VIGNETTING
==================================================

Do not confuse:

OPTICAL VIGNETTING

with:

LIGHTING FALL-OFF.

Lighting can naturally make the edges of a scene darker because of:

- inverse-square relationships
- light direction
- blocked illumination
- environmental geometry
- shadow
- exposure.

This is not lens vignetting.

The system must keep:

LIGHTING
and
OPTICAL VIGNETTING

as separate variables.

==================================================
EXPOSURE VS VIGNETTING
==================================================

Global exposure changes affect the entire image.

Vignetting affects spatial illumination distribution.

Do not simulate underexposure by darkening the corners.

Do not use vignette to compensate for incorrect exposure.

==================================================
WHITE BALANCE VS VIGNETTING
==================================================

White balance does not cause conventional geometric vignette behaviour.

Do not alter corner colour merely because vignetting is present.

Any colour shift must have a physical optical/filter/environmental cause.

==================================================
LENS COATINGS
==================================================

Coatings primarily influence:

- transmission
- flare
- ghosting
- contrast.

They should not be treated as a generic vignette control.

If a specific lens profile includes transmission/illumination characteristics:

apply those characteristics consistently.

==================================================
TRANSMISSION
==================================================

Real lenses may have transmission losses.

Transmission affects overall light reaching the sensor.

Vignetting concerns spatial variation in illumination.

Do not confuse:

GLOBAL_TRANSMISSION_LOSS

with:

EDGE_LIGHT_FALLOFF.

==================================================
BOKEH
==================================================

Vignetting and bokeh are separate phenomena.

However:

optical pupil geometry can affect the appearance of out-of-focus highlights near frame edges.

This may contribute to:

- cat-eye bokeh
- clipped highlights
- changing bokeh shape near edges.

Do not turn vignetting itself into bokeh.

==================================================
FLARE INTERACTION
==================================================

Strong flare can reduce apparent contrast and alter perceived edge illumination.

This does not mean flare should automatically generate vignetting.

Model:

VIGNETTING

and:

FLARE

as separate optical phenomena.

They may interact physically.

==================================================
GHOSTING INTERACTION
==================================================

Ghosting can produce faint internal reflections across the frame.

It must not be confused with corner darkening.

Model separately:

VIGNETTING
GHOSTING
FLARE.

==================================================
CHROMATIC ABERRATION
==================================================

Chromatic aberration may become more visible toward image edges.

This does not mean CA creates vignetting.

Keep:

CA
and
ILLUMINATION FALLOFF

independent.

==================================================
LENS DISTORTION
==================================================

Distortion changes geometry.

Vignetting changes illumination.

A barrel-distorted image does not automatically require a stronger vignette.

A vignetted image does not automatically require geometric distortion.

Model them independently.

==================================================
VIGNETTING PROFILE
==================================================

A physically realistic vignetting profile should generally be:

- gradual
- smooth
- continuous
- lens-specific
- aperture-dependent
- sensor-dependent
- coverage-dependent.

Avoid:

- perfectly hard circles
- uniform black corners
- obvious digital gradients
- arbitrary geometric masks.

==================================================
SEVERITY
==================================================

Recommended conceptual levels:

NONE:
effectively no visible falloff.

VERY_LOW:
physically present but barely perceptible.

LOW:
subtle edge illumination reduction.

MODERATE:
clearly measurable and occasionally visible.

STRONG:
obvious optical falloff.

SEVERE:
major coverage/mechanical problem.

Use the minimum level physically justified by the configuration.

Do not choose MODERATE or STRONG simply because the shot should look cinematic.

==================================================
VISIBILITY
==================================================

Vignetting may be easier to perceive against:

- uniform skies
- white walls
- studio backdrops
- evenly lit surfaces
- flat environments.

It may be less noticeable in:

- complex forests
- dark environments
- highly textured scenes
- unevenly lit environments.

Do not change the physical vignette merely to make it more visible.

Perceptual visibility is different from physical magnitude.

==================================================
DYNAMIC RANGE
==================================================

Do not clip or crush corners merely to make vignetting obvious.

The image must preserve realistic:

- shadow detail
- highlight detail
- tonal gradients.

Strong physical vignetting can reduce illumination but should not automatically create crushed black corners.

==================================================
NIGHT SCENES
==================================================

At night:

vignetting may be visible around:

- dark skies
- evenly illuminated architecture
- controlled practical-light environments.

Do not make every night scene heavily vignetted.

Practical lights remain subject to their actual positions and exposure.

==================================================
DAYLIGHT
==================================================

Against a clear or evenly illuminated sky:

natural edge falloff may become more perceptible.

However:

the system must not exaggerate it.

Maintain realistic sky gradients and exposure.

==================================================
FORESTS
==================================================

Forest scenes naturally contain uneven illumination.

Do not mistake:

tree shadows
+
canopy lighting

for optical vignetting.

Optical vignetting should remain attached to the camera/lens optical system.

==================================================
PALACES / TEMPLES
==================================================

Large uniform walls and ceilings can reveal illumination falloff.

Use this as a validation context.

Do not artificially darken architectural corners.

==================================================
LANDSCAPES
==================================================

Open skies and broad landscapes can reveal edge falloff clearly.

Maintain:

- natural sky illumination
- atmospheric perspective
- realistic terrain exposure.

Do not apply a decorative vignette.

==================================================
RAMAYANA VISUAL LANGUAGE
==================================================

Vignetting should generally remain restrained throughout the Ramayana visual system.

It may naturally occur in:

- older or character lenses
- certain wide lenses
- extreme aperture configurations
- marginal sensor coverage
- physically obstructed setups.

It should NOT become a universal stylistic signature.

Sacred scenes should not automatically receive darker corners.

Epic scenes should not automatically receive darker corners.

Emotional scenes should not automatically receive darker corners.

Story emotion must be created through:

- composition
- lighting
- performance
- camera movement
- lens selection
- colour
- environment.

Not through an artificial vignette.

==================================================
TEMPORAL CONSISTENCY
==================================================

Vignetting must remain stable across frames.

NEVER allow:

- vignette flicker
- corner brightness popping
- asymmetric falloff randomly shifting
- vignette following subjects
- vignette strength jumping without aperture/zoom/configuration changes
- dark corners appearing/disappearing between frames.

During a physical zoom:

vignetting may change continuously according to the lens.

During an aperture change:

vignetting may change according to the lens.

During a lens change:

vignetting may change.

Otherwise:

maintain continuity.

==================================================
CAMERA MOVEMENT
==================================================

Camera translation should not cause the vignette to follow the subject.

The illumination falloff remains tied to the optical system.

During:

- dolly
- tracking
- orbit
- crane
- handheld

the vignette should remain optically fixed relative to the recorded image geometry.

Do not attach the vignette to screen-space subjects.

==================================================
PAN AND TILT
==================================================

Pan and tilt rotate the optical system.

The illumination profile remains centered around the optical axis.

Scene content moves through the optical field.

Do not move the vignette independently of the lens.

==================================================
ROLL
==================================================

If the camera rolls:

the entire image rotates.

The lens illumination profile remains physically connected to the optical system.

Do not create an independent rotating vignette overlay.

==================================================
ZOOM
==================================================

For zoom lenses:

vignetting may change with focal length.

The change must be:

- continuous
- lens-specific
- physically plausible.

Never allow:

ZOOM
→
SUDDEN VIGNETTE JUMP.

==================================================
FOCUS PULL
==================================================

Focus changes may affect illumination only if the lens design supports such behaviour.

Do not automatically animate vignetting during every rack focus.

==================================================
LENS CHANGE
==================================================

A change from one lens to another may change:

- vignetting
- distortion
- bokeh
- flare
- CA
- breathing.

The transition occurs between shots unless the physical lens is actually changed during a shot.

Do not morph the vignette continuously between incompatible lenses inside a static shot.

==================================================
LENS CONTINUITY
==================================================

For a fixed lens and fixed configuration:

maintain stable:

- vignetting profile
- image circle
- sensor coverage
- aperture state
- focal length
- filter configuration.

Changes require a physical explanation.

==================================================
SPHERICAL VS ANAMORPHIC
==================================================

Vignetting behaviour must be determined independently for:

SPHERICAL

and:

ANAMORPHIC

lenses.

Do not infer vignette strength from optical format alone.

Anamorphic lenses do not automatically have stronger vignetting.

Spherical lenses do not automatically have weaker vignetting.

Use the actual lens profile.

==================================================
MODERN VS CHARACTER LENSES
==================================================

Modern lenses may provide:

- strong illumination correction
- broad sensor coverage
- controlled edge falloff.

Character/vintage lenses may show:

- stronger natural falloff
- uneven illumination
- more noticeable edge behaviour.

Do not automatically apply vintage vignetting to every character lens.

==================================================
VIGNETTING AND AI ARTIFACT PREVENTION
==================================================

The model must never use vignetting to hide:

- malformed faces
- unstable objects
- background errors
- missing geometry
- texture artifacts
- incorrect anatomy.

Vignetting must never function as an error-concealment mechanism.

==================================================
MACHINE-READABLE PARAMETERS
==================================================

vignetting:
  enabled:
  type:
  lens_profile:
  optical_format:
  focal_length:
  aperture:
  sensor_format:
  active_sensor_area:
  crop_factor:
  image_circle:
  lens_coverage:
  illumination_profile:
  optical_falloff:
  mechanical_obstruction:
  obstruction_source:
  filter_configuration:
  matte_box:
  lens_hood:
  asymmetry:
  optical_axis:
  corner_falloff:
  edge_falloff:
  severity:
  visibility:
  focus_dependence:
  zoom_dependence:
  aperture_dependence:
  sensor_dependence:
  flare_interaction:
  bokeh_interaction:
  camera_movement:
  continuity:
  temporal_consistency:

==================================================
VIGNETTING TYPES MACHINE MODEL
==================================================

vignetting_type:

  natural_optical:
    enabled:
    strength:
    profile:
    aperture_dependence:

  cosine_fourth:
    enabled:
    strength:
    profile:

  mechanical:
    enabled:
    source:
    obstruction_geometry:
    severity:

  sensor_coverage:
    enabled:
    image_circle:
    active_sensor_area:
    coverage_margin:

  filter:
    enabled:
    filter_stack:
    obstruction_geometry:

  digital:
    enabled:
    strength:

DEFAULT:

digital:
  enabled: false

==================================================
PARAMETER DEPENDENCIES
==================================================

LENS_DESIGN
+
FOCAL_LENGTH
+
APERTURE
→
OPTICAL_VIGNETTING

SENSOR_FORMAT
+
ACTIVE_SENSOR_AREA
+
IMAGE_CIRCLE
→
VISIBLE_EDGE_COVERAGE

FILTER_CONFIGURATION
+
MATTE_BOX
+
LENS_HOOD
+
FOCAL_LENGTH
→
MECHANICAL_VIGNETTING

ZOOM_POSITION
+
LENS_DESIGN
→
ZOOM_DEPENDENT_VIGNETTING

APERTURE
+
LENS_DESIGN
→
APERTURE_DEPENDENT_VIGNETTING

FOCUS_DISTANCE
+
LENS_DESIGN
→
POSSIBLE_FOCUS_DEPENDENT_VIGNETTING

OPTICAL_AXIS
+
ILLUMINATION_PROFILE
→
SPATIAL_VIGNETTING_PATTERN

CAMERA_MOVEMENT
→
NO_INDEPENDENT_VIGNETTE_MOVEMENT

LIGHTING
→
SEPARATE_FROM_LENS_VIGNETTING

Do not collapse all of these variables into:

"vignette = dark corners."

==================================================
CONFLICT RESOLUTION
==================================================

When requirements conflict, prioritize:

1. PHYSICAL POSSIBILITY
2. LENS/SENSOR COMPATIBILITY
3. IMAGE-CIRCLE COVERAGE
4. OPTICAL GEOMETRY
5. APERTURE
6. FOCAL LENGTH
7. FILTER/ACCESSORY CONFIGURATION
8. STORY PURPOSE
9. SHOT PURPOSE
10. OPTICAL CONSISTENCY
11. SEQUENCE CONTINUITY
12. STYLISTIC PREFERENCE
13. VISIBLE VIGNETTING

Never increase vignetting merely to make the frame feel more cinematic.

==================================================
DEFAULT RAMAYANA VIGNETTING PROFILE
==================================================

VIGNETTING:
physically derived

DIGITAL_VIGNETTE:
disabled

DEFAULT_STRENGTH:
none / very low unless lens profile requires more

OPTICAL_FALLOFF:
lens-dependent

MECHANICAL_FALLOFF:
only when physically justified

IMAGE_CIRCLE:
must cover active sensor

SENSOR_REFERENCE:
full-frame

CROP_FACTOR:
1.0× reference

ASPECT_RATIO:
16:9

APERTURE_DEPENDENCE:
enabled when supported

ZOOM_DEPENDENCE:
enabled for zoom lenses

FOCUS_DEPENDENCE:
only when supported by lens profile

FILTER_DEPENDENCE:
enabled when physical obstruction exists

MATTE_BOX_DEPENDENCE:
enabled when physical obstruction exists

ASYMMETRY:
none unless physically justified

EDGE_FALLOFF:
gradual / lens-dependent

CORNER_FALLOFF:
gradual / lens-dependent

HARD_BLACK_CORNERS:
none unless actual coverage failure

DIGITAL_MASK:
none

ARTIFICIAL_RADIAL_GRADIENT:
none

SUBJECT_TRACKING_VIGNETTE:
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

1. Is vignetting physically present in the selected lens profile?
2. Is the lens compatible with the sensor?
3. Does the image circle cover the active sensor?
4. Is the active sensor area correctly defined?
5. Is the aperture correctly defined?
6. Is focal length correctly defined?
7. Is this a prime or zoom lens?
8. If zoom, is focal-length-dependent falloff modeled?
9. Are filters present?
10. Is a matte box present?
11. Is a lens hood present?
12. Could any accessory physically obstruct the image?
13. Is mechanical vignetting distinguished from optical falloff?
14. Is lighting falloff distinguished from lens vignetting?
15. Is exposure distinguished from vignetting?
16. Is the optical axis correctly defined?
17. Is asymmetry physically justified?
18. Is the vignette gradual and lens-dependent?
19. Are hard black corners absent unless coverage actually fails?
20. Is digital vignette disabled?
21. Is the vignette fixed to the optical system?
22. Does camera movement preserve vignette continuity?
23. Does zoom change vignetting continuously if appropriate?
24. Does aperture change vignetting physically?
25. Are faces and architecture unaffected geometrically?
26. Is the effect temporally stable?
27. Is vignetting being used only because the physical configuration requires it?
28. Does the final image look like genuine camera/lens illumination?

If any answer is NO:

RECALCULATE THE CAMERA/LENS CONFIGURATION.

==================================================
FINAL DECISION HIERARCHY
==================================================

Determine vignetting in this order:

1. STORY PURPOSE
2. SHOT PURPOSE
3. CAMERA SYSTEM
4. SENSOR FORMAT
5. ACTIVE SENSOR AREA
6. LENS
7. IMAGE CIRCLE
8. LENS COVERAGE
9. FOCAL LENGTH
10. APERTURE
11. OPTICAL DESIGN
12. FILTER CONFIGURATION
13. MATTE BOX / HOOD
14. MECHANICAL OBSTRUCTION
15. OPTICAL AXIS
16. NATURAL OPTICAL FALLOFF
17. COSINE-FOURTH FALLOFF
18. EDGE/CORNER ILLUMINATION
19. FOCUS/ZOOM DEPENDENCE
20. FLARE INTERACTION
21. CAMERA MOVEMENT
22. LENS CONTINUITY
23. TEMPORAL CONSISTENCY
24. FINAL OPTICAL REALISM

The fundamental rule is:

VIGNETTING IS AN ILLUMINATION PHENOMENON, NOT A CINEMATIC FILTER.

Do not tell the system:

"Add a vignette."

Instead determine:

WHAT REAL LENS IS BEING USED?
→
WHAT SENSOR IS BEING EXPOSED?
→
DOES THE LENS COVER THE SENSOR?
→
WHAT IS THE IMAGE-CIRCLE MARGIN?
→
WHAT APERTURE IS SELECTED?
→
ARE FILTERS OR ACCESSORIES OBSTRUCTING THE LIGHT PATH?
→
WHAT NATURAL ILLUMINATION FALLOFF RESULTS?

The final image must show only the vignetting that a real camera and physical optical configuration would produce.

No decorative dark corners.
No artificial radial mask.
No fake cinematic vignette.
No subject-following darkness.
No temporal flicker.
No random asymmetry.
No digital lens behaviour.
No AI-generated optical artefacts.

The final result must look like real optical illumination captured by a real camera.

It must never look AI-generated.
