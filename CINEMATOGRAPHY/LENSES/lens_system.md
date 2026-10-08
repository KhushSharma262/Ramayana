# LENS SYSTEM BEHAVIOUR

## PURPOSE

Define the complete lens decision and optical-behaviour system for cinematic video generation.

The lens system is responsible for determining:

- which physical lens is appropriate
- why that lens is appropriate
- how the lens interacts with the camera
- how the lens interacts with the sensor
- how focal length affects framing
- how camera position affects perspective
- how focus behaves
- how depth of field forms
- how bokeh appears
- how distortion behaves
- how flare behaves
- how ghosting behaves
- how chromatic aberration behaves
- how lens breathing behaves
- how anamorphic or spherical optics behave
- how lens characteristics remain continuous between frames and shots

The lens system must behave as a coherent physical optical system.

Individual optical characteristics must NEVER be treated as independent visual effects.

==================================================
OPTICAL CAUSALITY / UNKNOWN-PARAMETER RULE
==================================================

The lens system must derive optical behaviour from physically defined
camera, lens, sensor, lighting, focus, and scene geometry.

UNKNOWN does not mean CINEMATIC.

UNKNOWN does not authorize:

- anamorphic behaviour
- shallow DOF
- strong bokeh
- flare
- ghosting
- chromatic aberration
- distortion
- breathing
- compression
- optical softness

If a parameter is unknown, do not invent an optical consequence.

Use the least visually interventionist physically valid configuration
until sufficient information exists.

==================================================
LENS SELECTION PRECEDENCE
==================================================

Lens selection must occur before lens effects.

Required order:

STORY
→ SHOT PURPOSE
→ SUBJECT PRIORITY
→ ENVIRONMENT
→ COMPOSITION
→ CAMERA POSITION
→ SENSOR FORMAT
→ REQUIRED FOV
→ LENS SELECTION
→ SPHERICAL / ANAMORPHIC
→ FOCAL LENGTH
→ FOCUS CONFIGURATION
→ APERTURE
→ CAMERA MOVEMENT
→ NATURAL OPTICAL CONSEQUENCES

Never reverse this order.

Do not select a lens because of a desired flare, bokeh shape, distortion,
compression, or other optical effect.

==================================================
OPTICAL CHARACTER AUTHORIZATION
==================================================

Every visible optical characteristic must have a physical cause.

Authorization states:

FORCED:
The selected physical configuration necessarily produces the behaviour.

DERIVED:
The behaviour naturally emerges from the selected configuration and scene.

ALLOWED:
The behaviour is physically possible but does not need to be prominent.

DISABLED:
The behaviour must not be intentionally emphasized or simulated.

No optical characteristic may be introduced merely because it is
considered cinematic.

==================================================
PHYSICAL DEPENDENCY LOCK
==================================================

Dependent parameters must be recalculated whenever a controlling parameter
changes.

Examples:

CAMERA POSITION
→ perspective
→ subject/background relationship
→ framing consequences

SENSOR FORMAT + FOCAL LENGTH
→ FOV
→ framing

FOCAL LENGTH + APERTURE + FOCUS DISTANCE + SENSOR
→ DOF

LENS DESIGN + APERTURE + FOCUS + LIGHTING
→ bokeh / flare / ghosting / aberration behaviour

FOCUS CHANGE + LENS DESIGN
→ breathing

LENS DESIGN + FRAME POSITION
→ distortion / edge rendering

A changed upstream parameter invalidates dependent downstream values.

Never preserve stale optical values after changing the physical setup.

==================================================
PERSPECTIVE / FOCAL LENGTH FIREWALL
==================================================

Focal length must never be used as a substitute for camera position.

Focal length primarily controls:

- FOV
- framing
- magnification

Camera position primarily controls:

- perspective
- relative subject size
- foreground/background relationships
- spatial compression
- facial perspective

If the required perspective is known:

CAMERA POSITION FIRST.

Then select focal length to achieve the required framing.

==================================================
OPTICAL PHENOMENA SEPARATION
==================================================

The system must not merge separate optical phenomena.

DISTORTION is not PERSPECTIVE.

COMPRESSION is not FOCAL LENGTH ALONE.

BOKEH is not DOF itself.

FLARE is not GHOSTING.

CHROMATIC ABERRATION is not DIGITAL RGB FRINGING.

BREATHING is not DIGITAL ZOOM.

ANAMORPHIC CHARACTER is not a collection of arbitrary effects.

Each phenomenon must be calculated from its own physical dependencies.

==================================================
AI ARTIFACT FIREWALL
==================================================

The optical pipeline must operate only in the forward physical direction:

SCENE
→ LIGHT
→ CAMERA POSITION
→ SENSOR
→ PHYSICAL LENS
→ FOCUS
→ APERTURE
→ OPTICAL RESPONSE
→ RECORDED IMAGE

Never:

DESIRED CINEMATIC LOOK
→ SYNTHETIC OPTICAL EFFECT
→ IMAGE

Prohibited:

- screen-space bokeh
- depth-map blur
- artificial perspective warping
- background resizing for compression
- composited lens flares
- repeated synthetic ghost patterns
- arbitrary RGB outlines
- unstable distortion
- changing optical character between frames
- artificial anamorphic squeeze
- digital zoom used as lens simulation
- optical effects disconnected from lighting
- optical effects disconnected from lens identity

==================================================
FACE / CHARACTER PROTECTION
==================================================

Important character identity has priority over conspicuous optical character.

Protect:

- facial proportions
- eye spacing
- nose geometry
- jaw geometry
- head proportions
- body proportions
- hair structure
- jewelry geometry

If a lens naturally produces perspective changes because of proximity,
those changes must remain physically plausible.

Never amplify them digitally.

==================================================
TEMPORAL OPTICAL VALIDATION
==================================================

Within a continuous shot, optical behaviour must remain temporally coherent.

No optical property may:

- appear without cause
- disappear without cause
- change lens character spontaneously
- change distortion without geometric cause
- change bokeh shape without optical cause
- change flare pattern without source movement
- change ghosting without optical/light-source change
- change breathing independently of focus movement

Camera movement, subject movement, focus movement, zoom, lighting changes,
and exposure changes may alter the optical result only in physically
consistent ways.

==================================================
MINIMUM OPTICAL INTERVENTION
==================================================

When several physically valid configurations satisfy the shot:

prefer the configuration requiring the fewest unnecessary optical effects.

This does NOT mean that the system must always choose the cleanest lens.

It means that every visible characteristic must be justified by the
selected physical lens and scene conditions.

==================================================
VALIDATION FAILURE HANDLING
==================================================

If the lens system produces an invalid configuration:

1. identify the failed physical constraint
2. trace its dependency chain
3. locate the earliest incorrect parameter
4. correct that parameter
5. recalculate all dependent parameters
6. revalidate the complete optical system

Never patch the final image to conceal a physically invalid setup.

==================================================
FINAL PHYSICAL REALISM RULE
==================================================

The complete lens system must be explainable as a real cinematography
configuration.

For every selected value, the system must be able to establish:

- why the camera is there
- why the sensor format is appropriate
- why the FOV is required
- why the focal length is appropriate
- why the lens system is spherical or anamorphic
- why the focus distance is achievable
- why the aperture is appropriate
- why the resulting DOF exists
- why the optical characteristics appear
- why those characteristics remain temporally consistent

If an optical decision exists only because it "looks cinematic",
the decision is invalid.

==================================================
==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage photographed through a real camera, real sensor, and real physical lens.

It must NEVER look AI-generated.

This is a hard constraint.

The system must prioritize:

PHYSICAL REALISM
>
OPTICAL CONSISTENCY
>
TEMPORAL CONSISTENCY
>
CINEMATIC COMPOSITION
>
STORY / EMOTIONAL INTENT
>
STYLISTIC CHARACTER

Never reverse this hierarchy.

NEVER create:

- artificial lens effects
- fake cinematic blur
- AI depth-map behaviour
- digital bokeh
- floating lens flares
- arbitrary ghost images
- RGB edge effects
- synthetic distortion
- artificial compression
- digital zoom disguised as optical behaviour
- impossible focus planes
- unstable perspective
- changing facial geometry
- unstable architecture
- optical-character flicker
- frame-to-frame lens inconsistency

When uncertain:

CHOOSE THE PHYSICALLY PLAUSIBLE AND LESS NOTICEABLE RESULT.

REAL OPTICAL BEHAVIOUR ALWAYS TAKES PRIORITY OVER VISUAL EFFECT.

==================================================
CORE SYSTEM PRINCIPLE
==================================================

The lens system must follow:

STORY
â†’ SHOT PURPOSE
â†’ SUBJECT / ENVIRONMENT
â†’ COMPOSITION
â†’ CAMERA POSITION
â†’ SENSOR
â†’ LENS SELECTION
â†’ FOCAL LENGTH
â†’ SPHERICAL / ANAMORPHIC
â†’ FOCUS DISTANCE
â†’ APERTURE
â†’ OPTICAL BEHAVIOUR
â†’ CAMERA MOVEMENT
â†’ TEMPORAL CONTINUITY
â†’ FINAL VIDEO

Never:

DESIRED LOOK
â†’ ADD LENS EFFECTS
â†’ INVENT PHYSICAL CAMERA PARAMETERS.

==================================================
LENS SYSTEM ARCHITECTURE
==================================================

The lens system consists of five primary layers.

### LAYER 1 â€” LENS SELECTION

Determine:

- lens type
- spherical / anamorphic
- focal-length class
- optical character
- sensor compatibility
- required FOV
- required perspective
- focus requirements

### LAYER 2 â€” CAMERA / LENS GEOMETRY

Determine:

- sensor format
- crop factor
- focal length
- camera position
- subject distance
- background distance
- field of view
- perspective
- spatial compression

### LAYER 3 â€” FOCUS SYSTEM

Determine:

- focus distance
- focal plane
- depth of field
- focus transition
- focus tracking
- focus breathing

### LAYER 4 â€” OPTICAL CHARACTER

Determine:

- bokeh
- distortion
- chromatic aberration
- flare
- ghosting
- aberrations
- edge behaviour
- vignetting
- diffraction

### LAYER 5 â€” CONTINUITY

Validate:

- frame-to-frame consistency
- lens identity
- shot-to-shot continuity
- optical character
- focal length
- FOV
- perspective
- focus behaviour
- anamorphic/spherical consistency

==================================================
LENS SELECTION HAS PRIORITY
==================================================

The system MUST select the lens before determining its optical effects.

Correct:

STORY
â†’ SHOT
â†’ CAMERA POSITION
â†’ FOV
â†’ LENS
â†’ OPTICAL RESULT

Incorrect:

"I want oval bokeh"
â†’ choose anamorphic.

"I want compression"
â†’ choose telephoto.

"I want cinematic flare"
â†’ choose flare-heavy lens.

The desired optical result must never be the primary reason for lens selection unless that optical character is itself explicitly required by the story or established visual language.

==================================================
SPHERICAL VS ANAMORPHIC
==================================================

This decision must happen before lens-specific optical behaviour is applied.

### SELECT SPHERICAL WHEN:

The shot prioritizes:

- natural optical rendering
- facial accuracy
- architectural precision
- clean geometry
- controlled distortion
- restrained optical character
- technical clarity
- intimate naturalism

### SELECT ANAMORPHIC WHEN:

The shot benefits from:

- broad environmental scale
- distinctive spatial rendering
- selective anamorphic character
- particular bokeh geometry
- motivated horizontal optical character
- specific anamorphic rendering
- visual grandeur when physically appropriate

ANAMORPHIC IS NOT THE DEFAULT.

Never use anamorphic merely because the shot should look cinematic.

==================================================
LENS SELECTION RULE
==================================================

Select the lens using:

1. story
2. shot purpose
3. subject priority
4. environment
5. spatial relationship
6. composition
7. required FOV
8. camera position
9. perspective requirement
10. focal length
11. spherical/anamorphic state
12. focus requirement
13. movement
14. optical character
15. continuity

Do not select the lens from optical effects.

==================================================
FOCAL LENGTH SYSTEM
==================================================

Focal length is a physical optical property.

Use full-frame reference categories where appropriate:

- 14â€“24mm: ultra-wide
- 24â€“35mm: wide
- 35â€“40mm: moderate-wide
- 40â€“60mm: normal
- 70â€“100mm: short telephoto
- 100â€“200mm: telephoto
- 200mm+: super telephoto

These are descriptive ranges, not rigid rules.

The actual focal length must be selected from the complete shot configuration.

==================================================
FOCAL LENGTH VS PERSPECTIVE
==================================================

Never equate focal length with perspective.

Focal length + sensor:
â†’ determines FOV.

Camera position:
â†’ determines perspective.

Focal length + camera position:
â†’ determines the final spatial appearance.

If matching framing with different focal lengths:

camera position usually changes.

That camera movement changes perspective.

==================================================
FIELD OF VIEW
==================================================

FOV must emerge from:

- focal length
- sensor dimensions
- aspect ratio
- camera format

MASTER FORMAT:

16:9

Do not digitally widen or narrow FOV.

Do not simulate different lenses through arbitrary cropping.

==================================================
CROP FACTOR
==================================================

Use full-frame 35mm as the default reference.

Equivalent focal length:

ACTUAL FOCAL LENGTH Ã— CROP FACTOR

is only a FOV comparison.

Crop factor does not physically change:

- focal length
- lens identity
- perspective at identical camera position

Do not create artificial magnification.

==================================================
CAMERA POSITION
==================================================

Camera position must be explicitly considered.

Determine:

- distance from subject
- height
- horizontal position
- depth relationship
- background distance
- available physical space

Camera position is essential for realistic perspective.

Never use focal length as a substitute for physically correct camera placement.

==================================================
PERSPECTIVE
==================================================

Perspective must be physically derived from camera position.

Wide-angle proximity can create:

- stronger foreground/background scale differences
- stronger facial perspective
- greater spatial expansion

Long-lens setups can create:

- tighter spatial layering
- reduced apparent depth
- larger-looking backgrounds
- observational rendering

Do not digitally compress or expand perspective.

==================================================
COMPRESSION
==================================================

Compression is primarily a consequence of:

- camera position
- subject distance
- background distance
- focal length used to achieve framing

It is NOT a digital effect.

Do not resize backgrounds artificially.

Do not flatten environments into 2D images.

==================================================
FOCUS SYSTEM
==================================================

Focus must be treated as a physical focal plane.

Determine:

- focus distance
- focus target
- focal plane
- depth of field
- focus transition
- focus tracking

Focus must never be implemented as an artificial blur mask.

==================================================
FOCUS DISTANCE
==================================================

Focus distance is the physical distance to the plane of critical focus.

It depends on:

- subject
- camera position
- subject movement
- camera movement
- focus intention

The system must not simply focus on:

- the centre of frame
- the nearest object
- the largest object

Focus follows narrative priority.

==================================================
FOCUS TRANSITION
==================================================

A rack focus must behave as a physical movement of the lens's focusing mechanism.

During transition:

- starting subject progressively softens
- intermediate planes change naturally
- target subject progressively sharpens
- bokeh evolves
- breathing may occur
- the complete optical image remains coherent

Never use digital blur transitions.

==================================================
DEPTH OF FIELD
==================================================

DOF must emerge from:

- focal length
- aperture
- focus distance
- sensor
- camera position
- subject distance
- background distance

Do not assume:

long lens = shallow DOF.

Do not assume:

wide lens = deep DOF.

Do not use portrait-mode segmentation.

==================================================
APERTURE
==================================================

Aperture affects:

- exposure
- DOF
- bokeh
- diffraction
- aberration visibility
- flare
- highlight rendering

Aperture must be selected based on the shot.

Do not automatically use maximum aperture.

==================================================
BOKEH
==================================================

Bokeh is a natural result of out-of-focus rendering.

It depends on:

- lens
- aperture
- focus distance
- subject distance
- background distance
- optical design

Do not add bokeh to every shot.

Do not use artificial glowing circles.

### SPHERICAL

Generally:

- circular or aperture-shaped
- possible edge cat-eye behaviour

### ANAMORPHIC

May produce:

- subtle oval highlights
- lens-specific elongated rendering

Do not exaggerate either.

==================================================
DISTORTION
==================================================

Distortion must follow the lens profile.

Possible forms:

- barrel
- pincushion
- moustache
- complex lens-specific distortion

Usually:

centre
â†’ least affected

edges
â†’ more affected

Do not apply universal wide-angle distortion.

Do not confuse distortion with perspective.

==================================================
FACIAL GEOMETRY
==================================================

Lens selection and optical rendering must preserve character identity.

Maintain:

- eye spacing
- nose geometry
- jawline
- facial proportions
- body proportions
- hair structure

Wide-angle perspective may naturally alter facial depth when close.

Do not add artificial geometric distortion on top of that.

==================================================
ARCHITECTURAL GEOMETRY
==================================================

Maintain:

- stable straight lines
- stable columns
- stable windows
- stable walls
- stable rooflines
- stable horizon

Any lens distortion must remain stable and lens-dependent.

Never allow architecture to morph between frames.

==================================================
CHROMATIC ABERRATION
==================================================

CA must be subtle and lens-dependent.

Consider:

- longitudinal CA
- lateral CA
- aperture
- frame position
- high-contrast edges
- lens design

Modern corrected lenses:

â†’ minimal CA.

Character lenses:

â†’ potentially more.

Never create obvious RGB outlines.

==================================================
FLARE
==================================================

Flare is caused by strong light entering the lens.

Possible sources:

- sun
- fire
- torch
- diya
- lamp
- bright reflection
- intense practical

Flare depends on:

- lens
- coatings
- source position
- source intensity
- aperture
- filters

Do not add flare because a shot is "cinematic."

==================================================
GHOSTING
==================================================

Ghosting is caused by internal reflections.

It must be:

- source-dependent
- lens-dependent
- optically positioned
- temporally stable

Do not create floating circles.

Do not make every bright light produce ghosting.

==================================================
LENS BREATHING
==================================================

Lens breathing is apparent framing change caused by focus movement.

It must follow the selected lens.

Possible profiles:

- minimal
- low
- moderate
- strong

Modern cinema lenses may exhibit very low breathing.

Character lenses may exhibit more.

Do not simulate breathing through digital zoom.

==================================================
ANAMORPHIC BEHAVIOUR
==================================================

Anamorphic behaviour may include:

- horizontal optical compression
- oval bokeh
- selective flare characteristics
- edge rendering
- focus breathing
- distortion
- close-focus behaviour

Only apply these when anamorphic is actually selected.

Do not automatically create:

- blue horizontal flares
- extreme oval bokeh
- exaggerated edge stretching
- excessive distortion

==================================================
LENS PHYSICS
==================================================

The complete optical system must remain internally coherent.

Consider:

- optical elements
- coatings
- aperture
- image circle
- sensor
- focal length
- focus distance
- subject distance
- incoming light
- optical aberrations
- transmission

Every visible optical characteristic must have a physical explanation.

==================================================
MODERN VS CHARACTER LENS
==================================================

### MODERN CORRECTED

Typically:

- low distortion
- low CA
- controlled flare
- low breathing
- high consistency
- clean rendering

### VINTAGE / CHARACTER

May exhibit:

- softer rendering
- stronger flare
- greater breathing
- greater distortion
- stronger aberration
- distinctive bokeh
- lower contrast

Do not activate every characteristic simultaneously.

Each characteristic remains independently lens-dependent.

==================================================
LENS CONTINUITY
==================================================

Within a shot:

lens identity must remain stable.

Across a sequence:

maintain a coherent lens language unless a deliberate lens change occurs.

Track:

- lens family
- focal length
- spherical/anamorphic state
- distortion
- bokeh
- flare
- ghosting
- CA
- breathing
- focus behaviour
- optical contrast
- edge rendering

Do not allow random optical changes.

==================================================
LIGHTING INTERACTION
==================================================

Lens behaviour depends on actual lighting.

The same lens may produce:

minimal flare
in one shot

and

visible flare
in another.

This is correct if the lighting conditions changed.

Preserve the lens identity while allowing physical conditions to alter the result.

==================================================
CAMERA MOVEMENT
==================================================

During:

- dolly
- tracking
- crane
- orbit
- handheld
- pan
- tilt

maintain physical lens behaviour.

Camera movement changes:

- perspective
- subject distance
- background relationship

but does not automatically change:

- focal length
- lens identity
- optical character

unless explicitly specified.

==================================================
ZOOM
==================================================

A zoom changes focal length.

Therefore:

- FOV changes
- framing changes
- magnification changes
- distortion may change
- optical character remains lens-specific

Do not simulate zoom through digital scaling.

==================================================
DOLLY
==================================================

A dolly changes camera position.

Therefore:

- perspective changes
- spatial relationships change
- subject/background scale relationships change

Focal length remains unchanged unless separately specified.

==================================================
DOLLY ZOOM
==================================================

A dolly zoom requires:

CAMERA POSITION CHANGE
+
FOCAL LENGTH CHANGE

Both must be modeled physically.

Do not simulate the effect through post-processing.

==================================================
OPTICAL CHARACTER
==================================================

Optical character must remain natural.

Possible dimensions:

- contrast
- sharpness
- edge rendering
- bokeh
- flare
- distortion
- aberration
- breathing

Character should normally remain below conscious perception unless the visual language deliberately calls for a distinctive lens.

==================================================
NO EFFECT-FIRST LOGIC
==================================================

Never reason:

"Use anamorphic because I want flare."

Instead:

"The shot requires a particular spatial and emotional representation."

Then:

"Which physical lens provides that?"

Then:

"What optical behaviour naturally results?"

==================================================
SHOT-SPECIFIC SELECTION
==================================================

Do not use one lens for every shot.

Do not default to:

- 35mm everywhere
- 50mm everywhere
- 85mm everywhere
- anamorphic everywhere
- maximum aperture everywhere
- shallow DOF everywhere

Lens choice must respond to the shot.

==================================================
PHYSICAL CONSTRAINTS
==================================================

Every selected configuration must be physically possible.

Respect:

- available camera space
- minimum focus distance
- maximum focus distance
- sensor coverage
- lens image circle
- camera movement
- subject distance
- required framing
- required FOV

Never invent impossible camera positions.

==================================================
LENS SYSTEM INPUTS
==================================================

The lens system should receive, where available:

STORY_CONTEXT

SHOT_PURPOSE

SUBJECTS

SUBJECT_PRIORITY

ENVIRONMENT

COMPOSITION

SHOT_SIZE

CAMERA_POSITION

CAMERA_MOVEMENT

SUBJECT_MOVEMENT

SENSOR_FORMAT

ASPECT_RATIO

AVAILABLE_LENSES

LENS_PROFILES

FOCUS_REQUIREMENT

APERTURE_REQUIREMENT

LIGHTING

SEQUENCE_CONTINUITY

ESTABLISHED_LENS_LANGUAGE

==================================================
LENS SYSTEM OUTPUT
==================================================

The lens system should determine:

LENS_TYPE

LENS_PROFILE

SPHERICAL_OR_ANAMORPHIC

FOCAL_LENGTH

SENSOR_FORMAT

CROP_FACTOR

FIELD_OF_VIEW

CAMERA_POSITION

SUBJECT_DISTANCE

FOCUS_DISTANCE

APERTURE

DEPTH_OF_FIELD

FOCUS_TRANSITION

FOCUS_BREATHING

BOKEH_BEHAVIOUR

DISTORTION_BEHAVIOUR

CHROMATIC_ABERRATION

FLARE_BEHAVIOUR

GHOSTING_BEHAVIOUR

COMPRESSION

OPTICAL_CHARACTER

LENS_CONTINUITY_STATUS

All outputs must remain internally consistent.

==================================================
MACHINE-READABLE PRINCIPLE
==================================================

Where the larger cinematography system requires machine-readable parameters:

represent lens decisions explicitly rather than embedding them only in descriptive prose.

Conceptually:

lens_system:
  lens_type:
  lens_profile:
  optical_format:
  anamorphic:
  focal_length:
  sensor_format:
  crop_factor:
  field_of_view:
  camera_position:
  subject_distance:
  focus_distance:
  aperture:
  depth_of_field:
  focus_transition:
  breathing:
  bokeh:
  distortion:
  chromatic_aberration:
  flare:
  ghosting:
  compression:
  continuity:

Do not invent values when the story or shot does not justify them.

Unknown parameters should remain unresolved until sufficient shot information exists.

==================================================
PARAMETER DEPENDENCY
==================================================

The system must recognize dependencies.

For example:

FOCAL_LENGTH
â†’ FOV

SENSOR FORMAT
â†’ FOV / IMAGE COVERAGE

CAMERA POSITION
â†’ PERSPECTIVE

FOCAL_LENGTH + CAMERA POSITION
â†’ FRAMING / SPATIAL APPEARANCE

FOCUS DISTANCE + FOCAL LENGTH + APERTURE + SENSOR
â†’ DOF

LENS + APERTURE + FOCUS + DISTANCES
â†’ BOKEH

LENS DESIGN + SOURCE POSITION
â†’ FLARE / GHOSTING

LENS DESIGN + FOCUS CHANGE
â†’ BREATHING

LENS DESIGN + FRAME POSITION
â†’ DISTORTION / EDGE CHARACTER

This dependency structure must be preserved.

==================================================
CONFLICT RESOLUTION
==================================================

If two desired properties conflict:

prioritize:

1. physical possibility
2. story purpose
3. shot purpose
4. subject readability
5. composition
6. optical consistency
7. continuity
8. stylistic preference

Example:

If extreme shallow DOF would make two required characters physically impossible to keep readable:

do not force shallow DOF.

If anamorphic distortion harms required facial accuracy:

select a more appropriate lens or spherical configuration.

If a wide lens requires an impossible camera position:

select another focal length.

==================================================
LENS SYSTEM DEFAULT
==================================================

MASTER_FORMAT:
16:9

SENSOR_REFERENCE:
full-frame

LENS_SELECTION:
shot-dependent

LENS_MANUFACTURER:
irrelevant unless explicitly specified

LENS_PROFILE:
physical optical behaviour

SPHERICAL:
default when anamorphic is not justified

ANAMORPHIC:
selective

OPTICAL_CHARACTER:
natural

FOCAL_LENGTH:
shot-dependent

FOV:
physically derived

PERSPECTIVE:
camera-position-dependent

COMPRESSION:
camera-position-dependent

FOCUS:
cinematographer-controlled

DOF:
physically derived

BOKEH:
lens-dependent

DISTORTION:
lens-dependent

CHROMATIC_ABERRATION:
minimal unless lens profile justifies more

FLARE:
condition-dependent

GHOSTING:
condition-dependent

BREATHING:
lens-dependent

DIGITAL_ZOOM:
none

ARTIFICIAL_LENS_EFFECTS:
none

AI_DEPTH_SIMULATION:
none

TEMPORAL_CONSISTENCY:
extremely high

OPTICAL_CONSISTENCY:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
GLOBAL VALIDATION
==================================================

Before finalizing a lens configuration, verify:

1. Is the lens physically compatible with the sensor?
2. Is the selected focal length appropriate?
3. Is the required FOV achievable?
4. Is the camera position physically possible?
5. Is the perspective correct?
6. Is the subject distance correct?
7. Is the focus distance achievable?
8. Is the aperture appropriate?
9. Is the DOF physically plausible?
10. Is the bokeh lens-dependent?
11. Is distortion lens-dependent?
12. Is CA physically justified?
13. Is flare caused by a real light source?
14. Is ghosting caused by a real optical condition?
15. Is breathing tied to focus movement?
16. Is anamorphic behaviour actually required?
17. Is lens character consistent?
18. Is continuity preserved?
19. Are faces stable?
20. Is architecture stable?
21. Are all optical changes temporally coherent?
22. Is every visible effect physically explainable?

If any answer is NO:

RECALCULATE THE LENS SYSTEM.

Do not repair an incorrect physical setup using artificial effects.

==================================================
FINAL DECISION HIERARCHY
==================================================

The complete lens system must operate in this order:

STORY
â†“
SHOT PURPOSE
â†“
SUBJECT PRIORITY
â†“
ENVIRONMENT
â†“
COMPOSITION
â†“
CAMERA POSITION
â†“
SENSOR
â†“
REQUIRED FOV
â†“
LENS SELECTION
â†“
SPHERICAL / ANAMORPHIC
â†“
FOCAL LENGTH
â†“
SUBJECT DISTANCE
â†“
FOCUS DISTANCE
â†“
APERTURE
â†“
DEPTH OF FIELD
â†“
FOCUS TRANSITION
â†“
BOKEH
â†“
DISTORTION
â†“
CHROMATIC ABERRATION
â†“
FLARE
â†“
GHOSTING
â†“
LENS BREATHING
â†“
COMPRESSION
â†“
CAMERA MOVEMENT
â†“
LENS CONTINUITY
â†“
TEMPORAL VALIDATION
â†“
FINAL OPTICAL IMAGE

==================================================
FINAL RULE
==================================================

The lens system must never ask:

"Which lens effect will make this shot cinematic?"

It must ask:

"What real camera and physical lens configuration would a cinematographer choose to photograph this exact shot for this exact story purpose?"

Then derive the optical result from that physical configuration.

Lens selection comes before lens effects.

Camera geometry comes before optical styling.

Physical optics come before cinematic appearance.

Continuity comes before variation.

Realism comes before spectacle.

The final video must look as though:

- a real camera was used
- a real sensor captured the image
- a real physical lens formed the image
- a real focus mechanism controlled the focal plane
- real light passed through the optics
- real camera movement occurred
- real optical behaviour was recorded

No artificial lens effects.

No effect-first cinematography.

No digital optical simulation.

No impossible camera geometry.

No unstable optical behaviour.

No AI-generated optical appearance.

It must never look AI-generated.


