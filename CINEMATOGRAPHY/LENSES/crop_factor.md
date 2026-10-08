### CROP FACTOR / SENSOR FORMAT BEHAVIOUR

Treat crop factor as a physical camera-sensor property that describes the relationship between a given sensor format and a defined reference format.

Crop factor affects field of view, framing, image-circle coverage, and focal-length equivalence.

It is NOT a visual effect.

The final video must look like real professionally captured live-action footage through a real camera and lens.

It must NOT look AI-generated, digitally manipulated, artificially sharpened, artificially blurred, or stylistically exaggerated.

==================================================
PHOTOREALISM — NON-NEGOTIABLE
==================================================

Maintain:
- physically correct perspective
- physically correct field of view
- realistic subject proportions
- realistic spatial relationships
- realistic depth relationships
- realistic lens rendering
- realistic focus behaviour
- realistic exposure
- realistic motion
- stable geometry
- stable faces
- stable textures
- stable architecture
- stable environmental details
- consistent optical behaviour across frames

Never introduce:
- artificial perspective
- impossible field of view
- fake sensor characteristics
- unnatural background scaling
- excessive depth-of-field blur
- artificial subject isolation
- warped architecture
- unstable geometry
- flickering details
- morphing faces
- texture crawling
- inconsistent lens behaviour
- digital-looking optical effects

When uncertain, choose the physically plausible result.

==================================================
==================================================
OPTICAL CAUSALITY / UNKNOWN-PARAMETER RULE
==================================================

Crop factor must never be treated as a visual effect.

It is a derived relationship between sensor dimensions and a defined reference format.

If the actual sensor dimensions are unknown:

- do not invent a crop factor
- do not invent FOV
- do not invent focal-length equivalence
- do not infer perspective
- do not infer compression

Use the actual sensor dimensions whenever precise optical behaviour is required.

UNKNOWN SENSOR PARAMETERS MUST NOT AUTHORIZE VISUAL EFFECTS.


==================================================
CROP-FACTOR VALIDATION PRECEDENCE
==================================================

Resolve crop-factor behaviour in this order:

1. ACTUAL SENSOR DIMENSIONS
2. ACTIVE SENSOR AREA
3. SENSOR ASPECT RATIO
4. RECORDING / CROP MODE
5. LENS IMAGE CIRCLE
6. PHYSICAL FOCAL LENGTH
7. FIELD OF VIEW
8. CAMERA POSITION
9. FRAMING
10. DEPTH OF FIELD
11. FOCAL-LENGTH EQUIVALENCE
12. OPTICAL CONTINUITY
13. TEMPORAL CONSISTENCY
14. STORY / SHOT PURPOSE

Crop factor must never override actual sensor geometry.


==================================================
CROP FACTOR / FOCAL-LENGTH FIREWALL
==================================================

Crop factor does not change the physical focal length.

A:

50 mm

lens remains:

50 mm

regardless of sensor format.

Do not instruct the system to physically transform a 50 mm lens into a 75 mm or 100 mm lens merely because of crop factor.

Equivalent focal length is a comparison for field of view.


==================================================
CROP FACTOR / PERSPECTIVE FIREWALL
==================================================

Crop factor does not independently create perspective.

Perspective is determined by:

- camera position
- subject distance
- scene geometry
- relative spatial relationships.

If equivalent framing requires the camera to move:

that camera movement may change perspective.

The crop factor itself does not.


==================================================
CROP FACTOR / SPATIAL COMPRESSION FIREWALL
==================================================

Crop factor does not independently create spatial compression.

Do not use crop factor to justify:

- flattened depth
- enlarged distant objects
- compressed backgrounds
- telephoto-like spatial relationships.

Any such appearance must arise from actual camera position, subject distance, focal length, and scene geometry.


==================================================
CROP FACTOR / FIELD-OF-VIEW FIREWALL
==================================================

FOV must be derived from:

ACTUAL_FOCAL_LENGTH
+
ACTIVE_SENSOR_DIMENSIONS
+
SENSOR_ASPECT_RATIO
+
RECORDING_MODE

Do not use crop factor as a substitute when precise FOV is required.

If the active sensor area changes:

recalculate FOV.


==================================================
CROP FACTOR / IMAGE-CIRCLE FIREWALL
==================================================

The selected lens must cover the active sensor area.

A smaller sensor may record only part of the available image circle.

This does not mean the lens has physically changed.

Do not digitally enlarge the image circle to simulate incompatible sensor coverage.

If:

ACTIVE_SENSOR_AREA > VALID_LENS_COVERAGE

the configuration is invalid.


==================================================
CROP FACTOR / FRAMING FIREWALL
==================================================

Changing sensor format while keeping:

- lens
- focal length
- camera position

constant

changes the recorded FOV and framing.

If identical framing is required:

the physical camera configuration must be solved again.

Do not silently compensate with:

- digital cropping
- digital zoom
- image stretching
- background scaling
- synthetic perspective.


==================================================
CROP FACTOR / CAMERA-POSITION FIREWALL
==================================================

If the camera is physically repositioned to maintain equivalent framing after a sensor change:

the resulting perspective may change.

Therefore the system must track separately:

- sensor format
- focal length
- camera position
- subject distance
- framing
- perspective.

Never collapse these into a single "equivalent focal length" parameter.


==================================================
CROP FACTOR / DEPTH-OF-FIELD FIREWALL
==================================================

Crop factor does not directly generate blur.

DOF must be solved from the complete camera configuration.

Consider:

- sensor format
- focal length
- aperture
- focus distance
- subject distance
- camera position
- framing
- circle of confusion.

Do not say:

CROP FACTOR = MORE BLUR

or:

CROP FACTOR = LESS BLUR

without solving the actual equivalent camera configuration.


==================================================
CROP FACTOR / APERTURE FIREWALL
==================================================

Crop factor does not change the physical aperture.

A lens selected at:

f/2.8

remains physically:

f/2.8

regardless of sensor format.

Any equivalent-DOF comparison must be explicitly identified as a comparison, not a physical transformation of the lens.


==================================================
CROP FACTOR / ANAMORPHIC FIREWALL
==================================================

Crop factor does not authorize anamorphic behaviour.

Do not introduce:

- anamorphic squeeze
- oval bokeh
- anamorphic flare
- horizontal streaks
- anamorphic distortion

because a crop sensor is being used.

Sensor format and optical format remain separate variables.


==================================================
CROP FACTOR / WIDE-TELEPHOTO CLASSIFICATION FIREWALL
==================================================

Do not classify a physical lens as wide, normal, or telephoto solely from crop-factor multiplication.

Classification must consider:

- actual focal length
- actual FOV
- sensor format
- shot purpose
- camera position.

Equivalent focal length is a reference comparison, not a physical lens identity.


==================================================
CROP FACTOR / OPTICAL CHARACTER FIREWALL
==================================================

Crop factor does not automatically create:

- distortion
- CA
- flare
- ghosting
- vignetting
- compression
- bokeh
- softness
- sharpness.

These characteristics remain properties of the lens, sensor, aperture, exposure, and physical optical configuration.

Do not invent optical character because a crop factor is present.


==================================================
CROP FACTOR / MOVEMENT FIREWALL
==================================================

Crop factor must not generate synthetic camera movement.

During:

- dolly
- tracking
- orbit
- crane
- handheld
- pan
- tilt

all spatial changes must come from actual camera movement and scene geometry.

Do not use crop factor to manufacture:

- parallax
- perspective change
- background movement
- subject scaling.


==================================================
CROP FACTOR / RECORDING-MODE FIREWALL
==================================================

A camera may change its active sensor/readout area through a recording mode.

Such a change may alter:

- active sensor dimensions
- FOV
- image-circle usage
- framing
- potentially DOF interpretation.

If the recording mode changes during a shot:

the transition must be physically and temporally justified.

Do not silently change crop factor between frames.


==================================================
CROP FACTOR / AI ARTIFACT FIREWALL
==================================================

Crop factor must never be used to justify:

- warped faces
- unstable geometry
- changing FOV
- background scaling
- artificial subject isolation
- architecture distortion
- texture crawling
- lens-character flicker
- synthetic perspective.

If an apparent crop-factor effect looks digitally generated:

remove it and recalculate the physical camera configuration.


==================================================
TEMPORAL CROP-FACTOR VALIDATION
==================================================

Across consecutive frames verify:

- active sensor area continuity
- crop factor continuity
- FOV continuity
- framing continuity
- image-circle coverage continuity
- lens continuity
- perspective continuity
- DOF continuity
- optical-character continuity.

Crop factor may change only when an actual physical or recording configuration changes.

No silent sensor-format drift is permitted.


==================================================
CROP-FACTOR CONTINUITY LOCK
==================================================

For a continuous shot, preserve:

- sensor format
- active sensor area
- recording mode
- crop factor
- focal length
- lens identity
- camera position
- FOV
- framing.

If any parameter changes:

recalculate all dependent optical parameters.


==================================================
VALIDATION FAILURE HANDLING
==================================================

If the crop-factor configuration is physically inconsistent:

DO NOT GENERATE THE SHOT AS SPECIFIED.

Instead:

1. identify the incorrect sensor parameter
2. identify affected optical parameters
3. recalculate FOV
4. recalculate framing
5. recalculate camera position if required
6. recalculate dependent DOF
7. revalidate lens coverage
8. generate only after validation passes

Never conceal a sensor-configuration error through digital processing.


==================================================
MINIMUM SENSOR INTERVENTION
==================================================

When multiple physically valid configurations can achieve the required shot:

choose the configuration requiring the least artificial manipulation.

Prefer:

- actual sensor geometry
- actual focal length
- physical camera positioning
- physically calculated FOV
- real lens coverage.

Do not create visible crop-factor effects that the physical camera would not produce.


==================================================
FINAL CROP-FACTOR REALISM RULE
==================================================

Crop factor is a camera-sensor relationship.

It is not:

- a lens effect
- a perspective effect
- a compression effect
- a distortion effect
- a blur effect
- a cinematic style.

The system must determine:

ACTUAL_SENSOR_DIMENSIONS
+
ACTIVE_SENSOR_AREA
+
FOCAL_LENGTH
+
LENS_COVERAGE
+
CAMERA_POSITION
+
SUBJECT_DISTANCE
+
RECORDING_MODE

before deriving the visible result.

Equivalent focal length may be used for comparison, but must never replace the actual physical camera parameters.

The final footage must look as though the selected sensor, lens, and camera position physically captured the scene.

No fake crop-factor effect.
No digital reframing.
No synthetic perspective.
No artificial compression.
No invented DOF.
No unstable sensor behaviour.

It must never look AI-generated.


WHAT CROP FACTOR MEANS
==================================================

Crop factor describes the ratio between a defined reference sensor dimension and the corresponding dimension of the actual sensor format.

When full-frame 35mm is used as the reference, crop factor is commonly expressed relative to the approximately 36 mm × 24 mm image area.

Crop factor primarily affects:
- field of view
- image-circle coverage
- framing
- focal-length equivalence
- the camera position required to achieve a particular composition

Crop factor does NOT:
- physically change the lens focal length
- physically lengthen the lens
- independently change perspective
- independently create spatial compression
- independently create additional depth
- independently change the scene geometry

A 50 mm lens remains physically 50 mm regardless of sensor format.

Perspective remains determined by camera position and scene geometry.

==================================================
REFERENCE FORMAT
==================================================

Use full-frame 35mm as the reference only when an equivalent comparison is useful.

For a compatible field-of-view comparison:

FULL-FRAME EQUIVALENT FOCAL LENGTH
=
ACTUAL FOCAL LENGTH × CROP FACTOR

This is a field-of-view equivalence, not a physical change to the lens.

Examples:

1.5× crop:
50 mm → approximately 75 mm full-frame equivalent

1.6× crop:
50 mm → approximately 80 mm full-frame equivalent

2.0× crop:
50 mm → approximately 100 mm full-frame equivalent

The equivalence is only meaningful when the relevant sensor dimension and aspect ratio are being compared consistently.

Do not use crop factor to claim that two cameras produce identical perspective.

Two cameras using equivalent fields of view can still produce different perspective relationships if they occupy different physical camera positions.

==================================================
FIELD OF VIEW
==================================================

Sensor dimensions determine how much of the lens image circle is recorded.

A smaller sensor generally captures a smaller portion of the image circle and therefore produces a narrower field of view with the same physical focal length and camera position.

A larger sensor generally captures a larger portion of the image circle and therefore produces a wider field of view with the same physical focal length and camera position.

Field of view must be calculated from:
- actual focal length
- actual sensor dimensions
- sensor aspect ratio
- active sensor area
- crop or recording mode
- lens image circle compatibility

Do not use crop factor as a substitute for the actual active sensor dimensions when precise field of view is required.

==================================================
FRAMING AND CAMERA POSITION
==================================================

Changing sensor format while keeping the lens and camera position fixed changes the recorded field of view and therefore the framing.

If the operator changes camera position to restore the same framing, perspective relationships also change.

Therefore:

SAME LENS
+
SAME CAMERA POSITION
+
DIFFERENT SENSOR FORMAT
=
DIFFERENT RECORDED FIELD OF VIEW

SAME FRAMING
+
DIFFERENT SENSOR FORMAT
+
PHYSICAL CAMERA REPOSITIONING
=
POTENTIALLY DIFFERENT PERSPECTIVE

Never digitally crop, warp, stretch, or rescale the image to simulate a physical sensor-format change when a physical camera configuration is being specified.

==================================================
DEPTH OF FIELD
==================================================

Sensor format must not be treated as an independent blur generator.

Depth of field depends on the complete camera configuration, including:
- sensor format
- focal length
- aperture
- focus distance
- subject distance
- framing
- circle of confusion assumptions
- camera position

Do not automatically assign shallower or deeper depth of field solely because a sensor is labeled full-frame, APS-C, Super 35, Micro Four Thirds, or another format.

When equivalent framing is required, camera position, focal length, aperture, and sensor format must be solved together.

==================================================
OPTICAL CONSISTENCY
==================================================

The selected lens must remain physically compatible with the selected sensor format and active sensor area.

Do not allow:
- impossible image-circle coverage
- unexplained edge clipping
- arbitrary vignetting
- artificial field-of-view expansion
- artificial background scaling
- inconsistent perspective
- changing crop factor between frames without an actual camera or recording-mode change

Crop factor must remain temporally stable throughout a shot unless the physical sensor readout or recording configuration actually changes.

==================================================
NATURALISM RULE
==================================================

Crop factor must remain an invisible physical property of the camera system rather than a visible cinematic effect.

If a crop-factor difference does not produce a visible consequence under the selected camera configuration:
    do not invent one.

Physical sensor geometry and camera position always have priority over cinematic terminology or stylistic intent.


