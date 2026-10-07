# LENS PHYSICS BEHAVIOUR

## PURPOSE

Control the complete physical optical behaviour of the selected camera lens.

This file is the foundational lens-physics layer.

It defines how a real physical lens should behave before individual optical characteristics such as:

- focal length
- field of view
- depth of field
- focus distance
- focus transition
- bokeh
- distortion
- chromatic aberration
- flare
- ghosting
- lens breathing
- compression
- anamorphic behaviour

are interpreted.

The system must treat the lens as a real optical system rather than a collection of visual effects.

The final image must emerge from:

CAMERA
→ SENSOR
→ LENS
→ LIGHT
→ SUBJECT
→ DISTANCES
→ FOCUS
→ APERTURE
→ MOVEMENT
→ RESULTING OPTICAL IMAGE

Never reverse this into:

DESIRED CINEMATIC LOOK
→ ADD OPTICAL EFFECTS.

==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage from a real camera using a real physical lens.

It must NEVER look AI-generated.

This requirement overrides stylistic preferences.

The optical system must produce:

- physically coherent geometry
- stable perspective
- realistic focus
- realistic depth of field
- natural highlight rendering
- realistic bokeh
- lens-dependent distortion
- physically plausible flare
- physically plausible ghosting
- realistic chromatic behaviour
- realistic breathing
- stable image formation
- coherent motion through the optical system

NEVER create:

- artificial cinematic overlays
- fake depth maps
- digital background blur
- arbitrary lens flares
- artificial bokeh
- random optical imperfections
- floating ghost images
- RGB glitching
- unstable distortion
- synthetic sharpening halos
- impossible focus planes
- face morphing
- texture crawling
- geometry instability
- frame-to-frame optical character changes

When uncertain:

CHOOSE THE PHYSICALLY PLAUSIBLE AND LESS NOTICEABLE RESULT.

REAL OPTICAL PHYSICS ALWAYS TAKES PRIORITY OVER VISUAL EFFECT.

==================================================
LENS AS A PHYSICAL SYSTEM
==================================================

A lens is not a single parameter.

It is an optical system consisting of multiple interacting properties.

The system must conceptually account for:

- focal length
- entrance pupil
- exit pupil
- aperture
- optical elements
- element spacing
- coatings
- lens construction
- sensor coverage
- focus mechanism
- optical corrections
- aberrations
- image circle
- transmission
- focus distance
- subject distance
- sensor plane
- angle of incoming light

The final optical image must be consistent with the combined behaviour of these properties.

Do not independently generate each optical effect without checking the complete lens configuration.

==================================================
PRIMARY OPTICAL CHAIN
==================================================

Use this conceptual chain:

SCENE
→ LIGHT RAYS
→ SUBJECT
→ LENS ENTRANCE
→ OPTICAL ELEMENTS
→ APERTURE
→ IMAGE FORMATION
→ SENSOR
→ RECORDED IMAGE

Every visible optical characteristic should be explainable somewhere in this chain.

==================================================
FOCAL LENGTH
==================================================

Focal length is a physical optical property.

It primarily determines:

- field of view
- image magnification
- framing relationship
- angular projection

Together with camera position, focal length contributes to the final spatial appearance.

Do not treat focal length as:

- perspective by itself
- depth of field by itself
- compression by itself
- distortion by itself

Maintain the distinction between:

FOCAL LENGTH
and
CAMERA POSITION.

==================================================
FIELD OF VIEW
==================================================

FOV must emerge from:

- focal length
- sensor dimensions
- camera format
- aspect ratio

For the project:

MASTER FORMAT:
16:9

The system must calculate or conceptually preserve physically correct FOV.

Do not digitally widen or narrow the field of view.

Do not use digital cropping to imitate a different lens unless the workflow explicitly specifies a crop.

==================================================
PERSPECTIVE
==================================================

Perspective is primarily determined by camera position relative to the scene.

Changing focal length while keeping camera position fixed changes framing/FOV.

Matching the same framing with a different focal length generally requires camera repositioning.

That repositioning changes perspective.

Therefore:

CAMERA POSITION
→ PERSPECTIVE

FOCAL LENGTH + SENSOR
→ FOV

FOCAL LENGTH + CAMERA POSITION
→ FINAL SPATIAL APPEARANCE

Never incorrectly attribute all perspective behaviour to the lens's focal length.

==================================================
IMAGE FORMATION
==================================================

The lens projects the three-dimensional scene onto the sensor plane.

Maintain coherent relationships between:

- subject distance
- focal length
- sensor position
- image magnification
- focus distance
- field of view

Objects must not independently resize without a physical reason.

The entire image must behave as one optical projection.

==================================================
IMAGE CIRCLE
==================================================

Every lens produces an image circle.

The selected sensor must be appropriately covered by that image circle.

If the sensor extends beyond the lens's usable image circle:

physically plausible consequences may include:

- vignetting
- edge falloff
- incomplete coverage

Do not create arbitrary black corners or artificial vignetting.

==================================================
SENSOR INTERACTION
==================================================

The lens and sensor must be treated as one imaging system.

Consider:

- sensor dimensions
- crop factor
- sensor aspect ratio
- active sensor area
- image circle
- focal length

Crop factor changes the portion of the image captured.

It does NOT change the physical focal length.

It does NOT automatically change perspective.

==================================================
CROP FACTOR
==================================================

Use full-frame 35mm as the project's primary reference where no other camera format is specified.

Equivalent focal length may be used for FOV comparison:

EQUIVALENT FOCAL LENGTH
=
ACTUAL FOCAL LENGTH × CROP FACTOR

This is a comparison tool, not a physical change to the lens.

Do not:

- change the actual focal length
- digitally magnify the image
- invent perspective changes
- alter lens character solely because crop factor changes

==================================================
APERTURE
==================================================

Aperture controls the effective opening through which light reaches the sensor.

It affects:

- exposure
- depth of field
- bokeh
- diffraction
- aberration visibility
- highlight rendering
- flare characteristics

Do not treat aperture as simply:

"more blur."

A wide aperture may produce:

- shallower DOF
- stronger bokeh
- potentially more visible optical aberrations

A narrow aperture may produce:

- greater depth of field
- less visible aberration in some lenses
- increased diffraction at sufficiently small apertures
- different flare/bokeh behaviour

==================================================
DEPTH OF FIELD
==================================================

DOF must emerge from the complete optical configuration.

Consider:

- focal length
- aperture
- focus distance
- sensor format
- subject distance
- background distance
- final framing

Never use artificial portrait-mode blur.

Do not assume:

LONG LENS = ALWAYS SHALLOW DOF.

Do not assume:

WIDE LENS = ALWAYS DEEP DOF.

The entire camera configuration determines the result.

==================================================
FOCUS DISTANCE
==================================================

Focus distance determines the focal plane.

The selected subject should become sharp according to:

- actual focus distance
- lens
- focal length
- aperture
- sensor
- subject geometry

Focus must not be implemented as a digital sharpness mask.

==================================================
FOCUS TRANSITION
==================================================

A focus transition must behave as a physical movement of the lens's focusing system.

During a rack focus:

- focal plane moves continuously
- previous subject progressively leaves focus
- target subject progressively enters focus
- intermediate planes behave naturally
- bokeh evolves
- focus breathing may occur according to lens design

No digital blur transition.

No instant sharpness switch.

==================================================
FOCUS BREATHING
==================================================

Focus breathing is an optical change in apparent framing during focus.

It must be determined by the lens.

Some lenses:

- breathe very little
- breathe moderately
- breathe strongly

Do not add breathing simply because a focus pull occurs.

Do not simulate breathing using digital zoom.

==================================================
OPTICAL ABERRATIONS
==================================================

Real lenses contain varying degrees of optical aberration.

Possible aberrations include:

- spherical aberration
- chromatic aberration
- coma
- astigmatism
- field curvature
- distortion
- longitudinal chromatic aberration
- lateral chromatic aberration

The selected lens design determines their magnitude.

Modern lenses may be highly corrected.

Vintage or character lenses may show more.

Never combine all aberrations automatically.

==================================================
SPHERICAL ABERRATION
==================================================

Spherical aberration occurs when rays passing through different parts of a spherical optical surface do not converge to exactly the same focus.

Potential visible consequences include:

- reduced sharpness
- soft highlight rendering
- subtle glow
- lower microcontrast

The effect should remain lens-dependent.

Do not turn it into artificial bloom.

==================================================
COMA
==================================================

Coma can cause point sources away from the optical axis to appear asymmetric or comet-like.

It may become more visible:

- toward frame edges
- at wide apertures
- with certain lens designs

If the selected lens exhibits coma:

keep it subtle and spatially consistent.

Do not create star-like artifacts around every light.

==================================================
ASTIGMATISM
==================================================

Astigmatism can cause different orientations of detail to focus differently.

It may contribute to:

- edge softness
- directional blur
- reduced off-axis resolution

Use only according to the lens profile.

==================================================
FIELD CURVATURE
==================================================

The ideal focal surface may not be perfectly flat.

This can cause:

- centre and edge focus differences
- varying sharpness across the frame

Do not create arbitrary focus differences between objects.

Any field curvature must remain lens-specific.

==================================================
CHROMATIC ABERRATION
==================================================

Different wavelengths may focus or magnify differently.

Maintain separation between:

LONGITUDINAL / AXIAL CA

and

LATERAL / TRANSVERSE CA.

CA should generally be:

- subtle
- edge-dependent
- contrast-dependent
- aperture-dependent
- lens-dependent

Do not add obvious RGB outlines.

==================================================
DISTORTION
==================================================

Geometric distortion must follow the selected lens.

Possible forms:

- barrel
- pincushion
- moustache
- complex lens-specific distortion

Distortion should generally be:

minimal near centre
→ potentially stronger toward edges.

Do not apply universal wide-angle warping.

Do not confuse distortion with perspective.

==================================================
LENS COMPRESSION
==================================================

Compression is primarily a consequence of:

- camera position
- subject distance
- background distance
- focal length used to achieve framing

Do not implement compression as digital background scaling.

A long lens may produce a compressed-looking composition when the camera is positioned farther away to maintain framing.

==================================================
BOKEH
==================================================

Bokeh is the appearance of out-of-focus regions.

It depends on:

- aperture shape
- lens design
- optical construction
- focus distance
- subject/background distances
- aperture

Do not add bokeh to every shot.

Only out-of-focus light and detail should exhibit bokeh.

==================================================
APERTURE SHAPE
==================================================

The physical aperture shape influences out-of-focus highlight rendering.

Possible shapes:

- circular
- polygonal
- lens-specific forms

Do not force every lens to produce perfectly circular bokeh.

==================================================
ANAMORPHIC OPTICS
==================================================

Anamorphic lenses must be treated as a distinct optical system.

Consider:

- squeeze factor
- horizontal optical compression
- bokeh geometry
- flare
- edge behaviour
- distortion
- breathing
- focus characteristics

Anamorphic must remain selective.

Do NOT use anamorphic as the default cinematic look.

Do not automatically generate:

- blue horizontal flares
- extreme oval bokeh
- heavy edge stretching
- exaggerated distortion

==================================================
SPHERICAL OPTICS
==================================================

Spherical lenses should maintain spherical optical behaviour.

Do not add anamorphic characteristics to spherical lenses.

Spherical lenses may still produce:

- flare
- ghosting
- bokeh
- distortion
- chromatic aberration
- breathing

but these must follow the selected lens profile.

==================================================
FLARE
==================================================

Flare occurs when strong light interacts with the optical system.

Potential manifestations:

- veiling flare
- ghost images
- streaks
- halos
- contrast reduction
- internal reflections

Flare depends on:

- source brightness
- source position
- lens coatings
- optical construction
- aperture
- filters
- camera orientation

Do not add flare merely because the scene is cinematic.

==================================================
GHOSTING
==================================================

Ghosting results from internal reflections between optical surfaces.

It must be:

- source-dependent
- lens-dependent
- spatially coherent
- temporally stable

Do not use floating digital circles.

Ghosting must remain connected to the optical geometry of the source.

==================================================
LENS COATINGS
==================================================

Coatings influence:

- flare
- ghosting
- contrast
- transmission

Modern multi-coated lenses generally suppress unwanted reflections.

Older lenses may exhibit more visible optical artifacts.

Do not assume every lens behaves identically.

==================================================
TRANSMISSION
==================================================

The lens transmits only a portion of incoming light to the sensor.

Transmission may be influenced by:

- number of optical elements
- coatings
- aperture
- lens design

Do not invent large exposure differences between lenses without a physical basis.

==================================================
DIFFRACTION
==================================================

At sufficiently small apertures:

diffraction can reduce fine-detail resolution.

Do not compensate by artificially sharpening the image.

Maintain natural detail rendering.

Avoid excessive sharpening halos.

==================================================
VIGNETTING
==================================================

Natural optical vignetting may occur because of:

- lens design
- aperture
- sensor coverage
- mechanical obstruction
- angle of incidence

Do not add arbitrary dark corners.

Vignetting must follow the selected optical system.

==================================================
COS4 / NATURAL LIGHT FALLOFF
==================================================

Off-axis light can experience natural illumination falloff.

The system must preserve physically plausible illumination across the frame.

Do not artificially darken edges merely to make the image cinematic.

==================================================
FOCUS-DEPENDENT OPTICAL BEHAVIOUR
==================================================

Some optical characteristics may change subtly with focus distance.

Potential changes include:

- breathing
- aberration visibility
- field curvature
- distortion
- bokeh rendering

Only apply changes supported by the selected lens profile.

==================================================
MOVEMENT THROUGH THE OPTICAL SYSTEM
==================================================

During camera movement:

the optical system remains physically attached to the camera.

Therefore:

- distortion remains lens-dependent
- flare responds to source position
- ghosting responds to source position
- perspective changes with camera movement
- focus distance may change
- breathing responds to focus
- FOV remains stable unless focal length changes

Do not allow individual optical effects to move independently of the camera.

==================================================
ZOOM
==================================================

If a zoom lens is selected:

focal length changes continuously.

As focal length changes:

- FOV changes
- magnification changes
- distortion may change
- optical aberrations may change
- bokeh characteristics may change
- lens character remains internally consistent

Do not simulate zoom through digital image scaling.

==================================================
DOLLY
==================================================

A dolly changes camera position.

Therefore it changes:

- perspective
- subject/background relationships
- apparent scale relationships

It does NOT inherently change:

- focal length
- optical distortion profile
- lens identity

unless another camera parameter changes.

==================================================
DOLLY ZOOM
==================================================

A dolly zoom requires simultaneous:

CAMERA POSITION CHANGE
+
FOCAL LENGTH CHANGE.

The resulting perspective/FOV interaction must be physically coherent.

Do not simulate it through post-processing.

==================================================
LENS CONTINUITY
==================================================

Once a lens is selected:

maintain its optical identity throughout the shot.

Preserve:

- focal length
- distortion profile
- bokeh character
- flare behaviour
- ghosting behaviour
- chromatic aberration
- breathing
- edge behaviour
- focus response
- image coverage

If the lens changes:

explicitly treat it as a new optical configuration.

Do not randomly switch lens characteristics between frames.

==================================================
OPTICAL CHARACTER
==================================================

The lens may have a recognizable optical character.

Character may arise from:

- aberration balance
- contrast
- sharpness
- bokeh
- flare
- distortion
- breathing
- edge rendering
- coating behaviour

However:

OPTICAL CHARACTER ≠ EXAGGERATED IMPERFECTION.

Natural optical character should usually remain below conscious attention unless the lens profile intentionally calls for a distinctive rendering.

==================================================
MODERN VS CHARACTER LENSES
==================================================

### MODERN CORRECTED LENS

Generally:

- controlled distortion
- low CA
- low breathing
- controlled flare
- high contrast
- stable geometry
- consistent sharpness

### VINTAGE / CHARACTER LENS

May exhibit:

- more aberration
- more flare
- stronger breathing
- more distortion
- lower contrast
- distinctive bokeh
- softer edges

But never activate every characteristic simultaneously.

Each behaviour must have an independent physical basis.

==================================================
FACE PROTECTION
==================================================

Character identity must remain stable.

Lens physics must never cause:

- changing face shape
- unstable eyes
- shifting facial proportions
- changing nose geometry
- melting skin
- changing jawline
- inconsistent hair

Perspective and lens distortion may naturally affect appearance, but only within physically plausible limits.

==================================================
ARCHITECTURAL PROTECTION
==================================================

Architecture must remain geometrically stable.

Maintain:

- straight lines where the lens supports them
- consistent perspective
- stable structural proportions
- stable horizons
- stable windows
- stable columns
- stable temple geometry

Never allow AI-generated geometry deformation.

==================================================
TEMPORAL OPTICAL CONSISTENCY
==================================================

Every optical characteristic must remain stable across frames unless a physical parameter changes.

NEVER allow:

- distortion flicker
- FOV flicker
- focal-length flicker
- bokeh popping
- flare popping
- ghosting flicker
- CA flicker
- breathing oscillation
- changing lens softness
- unstable focus
- changing image geometry

Every change must have a physical cause.

==================================================
NO ARTIFICIAL POST-PROCESSING
==================================================

Do not simulate lens physics using:

- Gaussian blur
- artificial bokeh overlays
- digital lens flare
- RGB edge effects
- perspective warping
- image scaling
- artificial distortion
- depth-map compositing
- fake optical streaks
- selective sharpening
- subject segmentation

The generated video must behave as though the image was formed optically before reaching the sensor.

==================================================
GLOBAL LENS PRIORITY
==================================================

Lens selection has priority over individual lens effects.

FIRST:

Determine the correct lens system.

THEN:

derive its optical behaviour.

Do NOT choose effects first and then attempt to construct a lens around them.

Correct order:

STORY
→ SHOT PURPOSE
→ SUBJECT / ENVIRONMENT
→ COMPOSITION
→ SENSOR
→ LENS TYPE
→ ANAMORPHIC / SPHERICAL
→ FOCAL LENGTH
→ CAMERA POSITION
→ FOCUS DISTANCE
→ APERTURE
→ OPTICAL BEHAVIOUR
→ MOVEMENT
→ FINAL IMAGE

==================================================
LENS PHYSICS PRIORITY
==================================================

When optical characteristics conflict:

1. PHYSICAL REALISM
2. OPTICAL CONSISTENCY
3. TEMPORAL CONSISTENCY
4. CAMERA / LENS GEOMETRY
5. STORY REQUIREMENT
6. CINEMATIC CHARACTER
7. VISIBLE OPTICAL EFFECT

Never reverse this hierarchy.

==================================================
DEFAULT RAMAYANA PROFILE
==================================================

Unless explicitly specified:

MASTER_FORMAT:
16:9

SENSOR_REFERENCE:
full-frame

LENS_SYSTEM:
physical / real-world optical behaviour

ANAMORPHIC:
selective, shot-dependent

SPHERICAL:
default when anamorphic is not justified

FOCAL_LENGTH:
shot-dependent

FOV:
physically derived

FOCUS:
cinematographer-controlled

DEPTH_OF_FIELD:
physically derived

BOKEH:
lens-dependent

DISTORTION:
restrained and lens-dependent

CHROMATIC_ABERRATION:
minimal and lens-dependent

FLARE:
condition-dependent

GHOSTING:
condition-dependent

LENS_BREATHING:
lens-dependent

COMPRESSION:
camera-position-dependent

VIGNETTING:
lens-dependent

DIFFRACTION:
physically derived

OPTICAL_CHARACTER:
natural / restrained

DIGITAL_LENS_EFFECTS:
none

ARTIFICIAL_OPTICAL_SIMULATION:
none

TEMPORAL_CONSISTENCY:
extremely high

OPTICAL_CONSISTENCY:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
FINAL PHYSICAL VALIDATION
==================================================

Before generating a shot, verify:

1. Is the camera format defined?
2. Is the sensor size defined?
3. Is the lens physically compatible with the sensor?
4. Is the lens type defined?
5. Is spherical or anamorphic behaviour explicitly determined?
6. Is focal length physically plausible?
7. Is required FOV consistent with focal length and sensor?
8. Is camera position consistent with the intended perspective?
9. Is focus distance physically plausible?
10. Is aperture appropriate?
11. Is DOF physically derived?
12. Is bokeh physically derived?
13. Is distortion lens-dependent?
14. Is chromatic aberration lens-dependent?
15. Is flare caused by a real light source?
16. Is ghosting caused by a real optical condition?
17. Is lens breathing tied to focus movement?
18. Is compression tied to camera position?
19. Is diffraction plausible at the selected aperture?
20. Is vignetting justified?
21. Is the optical character consistent with the lens?
22. Are all characteristics stable across frames?
23. Are faces geometrically stable?
24. Is architecture geometrically stable?
25. Is every visible optical effect physically explainable?

If any result cannot be explained by the physical camera, lens, sensor, lighting, geometry, or movement:

REMOVE OR REDUCE IT.

==================================================
FINAL DECISION HIERARCHY
==================================================

Determine lens physics in this order:

1. STORY
2. SHOT PURPOSE
3. SUBJECT / ENVIRONMENT
4. COMPOSITION
5. CAMERA SYSTEM
6. SENSOR FORMAT
7. LENS TYPE
8. SPHERICAL / ANAMORPHIC STATE
9. IMAGE CIRCLE / SENSOR COVERAGE
10. FOCAL LENGTH
11. CAMERA POSITION
12. SUBJECT DISTANCE
13. FOCUS DISTANCE
14. APERTURE
15. OPTICAL ELEMENT CHARACTER
16. DEPTH OF FIELD
17. BOKEH
18. DISTORTION
19. CHROMATIC ABERRATION
20. COMA / ASTIGMATISM / FIELD CURVATURE
21. FLARE
22. GHOSTING
23. LENS BREATHING
24. VIGNETTING
25. DIFFRACTION
26. MOVEMENT
27. TEMPORAL CONSISTENCY
28. LENS CONTINUITY
29. FINAL OPTICAL REALISM

Never begin with:

"Make this shot look cinematic."

Instead determine:

WHAT IS THE SHOT TRYING TO COMMUNICATE?
→ WHAT CAMERA SYSTEM IS BEING USED?
→ WHAT SENSOR IS CAPTURING THE IMAGE?
→ WHAT PHYSICAL LENS IS APPROPRIATE?
→ WHAT ARE ITS OPTICAL PROPERTIES?
→ WHERE IS THE CAMERA?
→ WHERE IS THE FOCAL PLANE?
→ WHAT APERTURE IS REQUIRED?
→ HOW DOES LIGHT PASS THROUGH THE LENS?
→ WHAT OPTICAL RESULT SHOULD PHYSICALLY EMERGE?
→ IS THAT RESULT STABLE THROUGH TIME?

The lens must behave as a coherent physical optical system.

Individual optical characteristics are consequences of that system, not independent visual effects.

The final video must look as though a real cinematographer photographed the scene using a real camera, real sensor, real lens, real focus mechanism, real lighting, and real physical optics.

No artificial lens effects.
No digital optical simulation.
No impossible geometry.
No optical inconsistency.
No temporal instability.

It must never look AI-generated.
