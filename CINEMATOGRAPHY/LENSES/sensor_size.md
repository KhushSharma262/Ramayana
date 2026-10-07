# SENSOR SIZE

## PURPOSE

Control the physical behaviour of camera sensor format and sensor dimensions within the cinematography system.

Sensor size is a physical camera property.

It affects:

- image coverage
- field of view for a given focal length
- framing
- crop factor
- depth-of-field behaviour when the complete framing configuration changes
- lens coverage requirements
- image circle usage
- potential vignetting
- noise and dynamic-range characteristics when explicitly modeled
- physical camera dimensions and optical compatibility

Sensor size does NOT directly create:

- perspective
- lens compression
- lens distortion
- bokeh
- anamorphic behaviour
- focal length
- digital zoom

The system must treat sensor size as part of the physical camera/lens geometry.

==================================================
NON-NEGOTIABLE PHOTOREALISM
==================================================

The final video must look like professionally captured live-action footage from a real camera with a physically plausible sensor and lens combination.

Sensor behaviour must remain physically coherent.

NEVER create:

- artificial sensor cropping
- fake sensor-size changes
- digital magnification disguised as sensor format
- inconsistent field of view
- impossible lens coverage
- fake perspective changes
- artificial depth-of-field changes
- arbitrary noise changes
- fake vignetting
- unstable image-circle behaviour
- sensor-format flicker
- changing crop factor between frames
- digital lens-character substitution
- AI-generated optical geometry

When uncertain:

choose the physically plausible and less noticeable result.

PHYSICAL SENSOR/LENS GEOMETRY ALWAYS TAKES PRIORITY OVER VISUAL EFFECT.

==================================================
WHAT SENSOR SIZE MEANS
==================================================

Sensor size refers to the physical dimensions of the image sensor.

Important dimensions include:

- sensor width
- sensor height
- sensor diagonal

Examples of common formats include:

- full frame
- Super 35
- APS-C
- APS-H
- Micro Four Thirds
- medium format
- large-format cinema sensors

These are not interchangeable.

The system must use the actual physical dimensions when precision matters.

==================================================
FULL-FRAME REFERENCE
==================================================

The default Ramayana cinematography system uses:

FULL FRAME 35 MM

as the reference sensor format.

Reference dimensions:

approximately:

36 mm × 24 mm

The exact active sensor area may differ between cameras.

Therefore:

FULL_FRAME_REFERENCE ≠ UNIVERSAL_SENSOR_DIMENSION.

When an actual camera profile is provided:

use its active imaging area.

==================================================
SENSOR SIZE VS CROP FACTOR
==================================================

Crop factor is a comparison between a sensor format and a reference format.

For this system:

FULL_FRAME = 1.0× reference.

Approximate crop factors may be used for comparison.

However:

crop factor is not itself a physical optical effect.

It is a derived relationship.

Conceptually:

CROP_FACTOR
=
REFERENCE_SENSOR_DIMENSION
/
COMPARISON_SENSOR_DIMENSION

The exact calculation depends on whether:

- width
- height
- diagonal

is being compared.

Do not mix comparison conventions.

==================================================
SENSOR SIZE VS FIELD OF VIEW
==================================================

For a fixed focal length:

larger sensor
→ captures a wider portion of the lens image circle.

smaller sensor
→ captures a smaller portion of the image circle.

Therefore:

larger sensor
→ wider FOV

smaller sensor
→ narrower FOV

when:

FOCAL_LENGTH = CONSTANT
CAMERA_POSITION = CONSTANT.

This is a fundamental physical relationship.

==================================================
SENSOR SIZE VS FOCAL LENGTH
==================================================

Changing sensor size does not change the physical focal length of the lens.

For example:

50 mm remains:

50 mm

regardless of whether it is mounted on:

- full frame
- Super 35
- APS-C
- Micro Four Thirds

What changes is:

- captured image area
- field of view
- framing
- crop factor relationship

Never rewrite the physical focal length merely because the sensor changes.

==================================================
EQUIVALENT FOCAL LENGTH
==================================================

Equivalent focal length is a framing/FOV comparison.

It is NOT the physical focal length.

For example:

a smaller sensor using a shorter physical focal length may produce a similar FOV to a longer focal length on full frame.

Do not interpret this as:

"the lens physically became longer."

The physical focal length remains unchanged.

==================================================
SENSOR SIZE VS PERSPECTIVE
==================================================

Sensor size does NOT directly determine perspective.

Perspective is primarily determined by:

CAMERA POSITION.

If two cameras use different sensors and are placed at the same physical position:

their perspective geometry is fundamentally the same.

Their captured FOV and framing may differ.

If the camera position is changed to maintain equivalent framing:

perspective may change because:

CAMERA POSITION CHANGED.

This distinction is mandatory.

==================================================
SENSOR SIZE VS COMPRESSION
==================================================

Sensor size does not inherently create lens compression.

Compression-like spatial appearance results primarily from:

- camera position
- subject distance
- background distance
- focal length used for framing

Do not state:

"small sensor = more compression."

That is incorrect as a direct physical rule.

==================================================
SENSOR SIZE VS DEPTH OF FIELD
==================================================

Sensor size interacts with depth of field through the complete camera configuration.

Do not state:

"larger sensor automatically has shallower DOF."

Instead consider:

- focal length
- aperture
- camera position
- subject distance
- framing
- magnification
- circle of confusion
- final image size
- sensor format

For equivalent framing and field of view:

a larger sensor generally requires a longer physical focal length or a different camera distance.

This can produce a different DOF result.

Therefore:

SENSOR SIZE → INDIRECT DOF CONSEQUENCES THROUGH COMPLETE OPTICAL CONFIGURATION.

==================================================
SENSOR SIZE VS BOKEH
==================================================

Sensor size does not directly determine bokeh shape.

Bokeh depends primarily on:

- lens design
- aperture shape
- aperture setting
- focus distance
- subject/background distance
- magnification
- optical construction

Sensor format affects the configuration required for equivalent framing, which can indirectly change the resulting bokeh.

Do not generate different bokeh merely because a sensor is smaller.

==================================================
SENSOR SIZE VS FOV
==================================================

For a rectilinear lens:

horizontal FOV can be approximated by:

FOV_horizontal
=
2 × arctan(sensor_width / (2 × focal_length))

Vertical FOV:

FOV_vertical
=
2 × arctan(sensor_height / (2 × focal_length))

Diagonal FOV:

FOV_diagonal
=
2 × arctan(sensor_diagonal / (2 × focal_length))

Use actual sensor dimensions when available.

Do not use generic crop-factor estimates when precise dimensions are known.

==================================================
ASPECT RATIO
==================================================

The master format is:

16:9.

Sensor physical dimensions and final active image area must remain consistent with the intended aspect ratio.

If a sensor is cropped to a 16:9 recording area:

use the active recording dimensions rather than assuming the entire physical sensor is used.

This affects:

- FOV
- image coverage
- crop factor
- framing.

==================================================
ACTIVE SENSOR AREA
==================================================

A camera may have a physically larger sensor but use only part of it for a particular recording mode.

Therefore distinguish:

PHYSICAL_SENSOR_SIZE

from:

ACTIVE_RECORDING_AREA.

The system must use the active imaging area for FOV calculations.

Do not assume:

full sensor dimensions = active image dimensions.

==================================================
SENSOR CROP MODES
==================================================

If the camera has a crop mode:

treat it as a change in active sensor area.

Examples:

- full sensor
- Super 35 crop
- APS-C crop
- windowed mode
- high-speed crop

The system must update:

- active sensor dimensions
- FOV
- image coverage
- crop factor
- lens coverage

Do not simulate sensor cropping by digitally zooming unless the actual camera mode explicitly behaves that way.

==================================================
SENSOR READOUT
==================================================

Different sensor readout modes may use different portions of the sensor.

The system should distinguish:

- full sensor readout
- cropped readout
- windowed readout
- high-speed readout

If readout changes the active imaging area:

recalculate the optical configuration.

==================================================
LENS IMAGE CIRCLE
==================================================

Every lens projects an image circle.

The sensor must fit within the usable image circle.

If:

SENSOR_AREA > USABLE_IMAGE_CIRCLE

the image may exhibit:

- vignetting
- dark corners
- incomplete coverage

Do not allow a lens to cover a sensor format it physically cannot cover without showing the consequences.

==================================================
LENS COVERAGE
==================================================

Lens coverage must be compatible with sensor size.

Before generating a shot:

verify:

LENS_IMAGE_CIRCLE ≥ SENSOR_ACTIVE_AREA.

If not:

choose:

- a compatible lens
- a smaller sensor area
- a different recording mode

Do not digitally hide optical coverage failure.

==================================================
VIGNETTING
==================================================

Sensor/lens mismatch may produce mechanical or optical vignetting.

Do not automatically create vignetting merely because the sensor is large.

Vignetting depends on:

- lens image circle
- sensor dimensions
- lens design
- aperture
- optical construction
- focus
- zoom position

If the lens adequately covers the sensor:

vignetting may remain minimal.

==================================================
SENSOR SIZE AND LENS CHARACTER
==================================================

Changing sensor format can change which portion of the lens's image is captured.

This can affect how strongly the image exhibits:

- edge distortion
- edge softness
- vignetting
- lateral chromatic aberration
- field curvature

A smaller sensor may avoid the outermost portion of the image circle.

Therefore:

do not assume the lens's full-frame edge character will appear identically on a smaller sensor.

==================================================
SENSOR SIZE AND DISTORTION
==================================================

The lens's physical distortion profile does not magically change because the sensor is smaller.

However:

a smaller sensor may capture less of the distorted outer image region.

Therefore visible distortion can be reduced.

This must emerge from:

LENS_PROFILE
+
ACTIVE_SENSOR_AREA
+
SUBJECT_POSITION.

Do not digitally correct or increase distortion without a defined workflow.

==================================================
SENSOR SIZE AND CHROMATIC ABERRATION
==================================================

Lateral CA is often more visible toward image edges.

A smaller sensor may capture less of those outer regions.

Therefore visible CA may decrease.

This must be a consequence of image coverage.

Do not change CA simply because:

SENSOR = SMALL.

==================================================
SENSOR SIZE AND FLARE
==================================================

Flare depends primarily on:

- lens design
- coatings
- source position
- source intensity
- aperture
- internal reflections

Sensor size does not directly create flare.

However, a crop may exclude some flare structures occurring outside the active image area.

Therefore flare behaviour must remain optically consistent with the lens.

==================================================
SENSOR SIZE AND GHOSTING
==================================================

Ghosting is produced by internal optical reflections.

Sensor format does not create ghosting.

A crop may change which ghost structures are visible.

Maintain:

- source relationship
- lens identity
- optical path
- temporal consistency.

==================================================
SENSOR SIZE AND ANAMORPHIC
==================================================

Anamorphic squeeze and sensor size are separate parameters.

The system must account for:

- physical anamorphic squeeze
- sensor active dimensions
- lens coverage
- resulting FOV
- final desqueezed image
- aspect ratio

Do not treat crop factor as anamorphic squeeze.

Do not compensate for sensor size by changing anamorphic squeeze.

==================================================
ANAMORPHIC LENS COVERAGE
==================================================

An anamorphic lens must physically cover the selected sensor.

If:

ANAMORPHIC_LENS_IMAGE_CIRCLE < ACTIVE_SENSOR_AREA

then:

the configuration may produce:

- vignetting
- hard edge falloff
- unusable coverage

Do not hide this through digital cropping unless the actual camera workflow explicitly uses a crop.

==================================================
SENSOR SIZE AND NORMAL LENSES
==================================================

A normal lens is format-dependent.

A 50 mm lens may be normal on full frame but act as a short telephoto on a smaller sensor.

Therefore:

NORMAL_LENS = FUNCTION(SENSOR_FORMAT, FOCAL_LENGTH)

Do not label a lens "normal" without considering sensor format.

==================================================
SENSOR SIZE AND WIDE LENSES
==================================================

A lens that is wide on full frame may become moderate-wide or normal on a smaller sensor.

Lens classification must therefore be based on:

- physical focal length
- sensor format
- resulting FOV

not focal length alone.

==================================================
SENSOR SIZE AND TELEPHOTO
==================================================

A telephoto lens remains physically telephoto.

On a smaller sensor:

its FOV becomes narrower.

This may make it easier to frame distant subjects without changing physical focal length.

Do not describe this as the sensor "increasing focal length."

==================================================
SENSOR SIZE AND MACRO
==================================================

Sensor size does not directly change the physical minimum focus distance.

It can change:

- framing
- FOV
- captured magnification relative to final image
- required camera position

Do not claim that crop factor creates true macro capability.

True optical magnification remains a property of the lens/system.

==================================================
SENSOR SIZE AND MINIMUM FOCUS DISTANCE
==================================================

MFD is primarily a lens/focusing-system property.

Changing sensor size does not allow a lens to focus closer.

If:

SUBJECT_DISTANCE < MFD

the lens remains unable to focus regardless of sensor size.

Do not use crop factor to bypass MFD.

==================================================
SENSOR SIZE AND PERSPECTIVE DISTORTION
==================================================

Sensor size does not directly create perspective distortion.

If the sensor changes and the camera position remains fixed:

perspective geometry remains fundamentally unchanged.

If equivalent framing requires moving the camera:

perspective changes because of the new camera position.

==================================================
SENSOR SIZE AND MOTION
==================================================

Sensor format does not automatically change motion blur.

Motion blur depends primarily on:

- shutter speed
- exposure time
- subject velocity
- camera velocity

Do not add more motion blur because a sensor is smaller.

==================================================
SENSOR SIZE AND EXPOSURE
==================================================

Sensor size can affect total light capture and system-level noise performance, but exposure must be determined from:

- aperture
- shutter speed
- ISO/gain
- scene luminance
- sensor response

Do not assume:

larger sensor = brighter exposure

with identical exposure settings.

For the same:

- aperture
- shutter
- ISO
- scene illumination

the exposure level per unit sensor area is not simply changed by total sensor size.

Total sensor area affects total collected photons and system-level imaging characteristics.

==================================================
SENSOR SIZE AND NOISE
==================================================

Noise must not be artificially added or removed merely because a sensor is large or small.

If sensor-specific noise modelling is used:

base it on:

- sensor technology
- pixel architecture
- ISO/gain
- exposure
- temperature
- read noise
- photon statistics

Do not use generic:

SMALL SENSOR = NOISY
LARGE SENSOR = CLEAN

as an automatic visual rule.

==================================================
SENSOR SIZE AND DYNAMIC RANGE
==================================================

Dynamic range is sensor- and camera-dependent.

Do not assume sensor size alone determines dynamic range.

If a camera profile specifies:

- dynamic range
- highlight rolloff
- read noise
- dual native ISO

use those values.

Otherwise:

do not invent sensor-specific behaviour.

==================================================
PIXEL SIZE
==================================================

Physical sensor size is different from pixel size.

A sensor can be:

- large with many small pixels
- large with fewer larger pixels
- small with many small pixels

Do not infer pixel pitch from sensor format alone.

==================================================
SENSOR SIZE AND RESOLUTION
==================================================

Sensor dimensions and pixel resolution are separate.

A larger sensor does not automatically mean:

- higher resolution
- sharper image
- more detail

Resolution depends on:

- pixel count
- pixel pitch
- optical resolving power
- processing
- focus
- motion
- recording format

Do not generate artificial detail based on sensor size.

==================================================
SENSOR SIZE AND DEPTH OF FIELD — EQUIVALENCE
==================================================

When comparing systems with equivalent framing:

a larger sensor generally requires a longer focal length or different camera distance.

If maintaining:

- equivalent framing
- equivalent subject distance
- equivalent field of view

then aperture/focal-length combinations may produce different depth-of-field characteristics.

Do not reduce this to:

"full frame has shallow DOF."

Instead calculate the complete configuration.

==================================================
CROP FACTOR AND APERTURE
==================================================

Do not treat crop factor as changing the physical f-number.

An f/2 lens remains:

f/2

regardless of sensor format.

For depth-of-field comparisons, an equivalent-aperture concept may be used as a comparison tool, but it must never replace the actual physical aperture.

==================================================
CROP FACTOR AND EXPOSURE
==================================================

Crop factor does not change the physical f-number.

Do not alter exposure simply because the sensor crop changes.

Exposure is determined by:

- aperture
- shutter
- ISO/gain
- illumination.

==================================================
SENSOR SIZE AND BOKEH SHAPE
==================================================

Bokeh shape is primarily determined by:

- aperture geometry
- lens design
- focus
- subject/background distance

Sensor size may affect which region of the image circle is captured, which can affect edge bokeh appearance.

Do not create a new bokeh shape merely because sensor size changes.

==================================================
CAT-EYE BOKEH
==================================================

Edge bokeh can become clipped or cat-eye shaped due to optical vignetting and pupil geometry.

A smaller sensor may crop out some of these edge regions.

Therefore:

bokeh appearance may change naturally with sensor coverage.

Do not artificially impose cat-eye bokeh.

==================================================
SENSOR SIZE AND IMAGE CIRCLE
==================================================

The sensor occupies part of the lens's image circle.

Larger active sensor:

→ captures more of the image circle.

Smaller active sensor:

→ captures less.

This affects visible:

- edge distortion
- edge softness
- vignetting
- CA
- bokeh behaviour.

==================================================
SENSOR SIZE AND LENS CHARACTER
==================================================

Lens character must be calculated from the portion of the optical image actually captured.

Do not apply the full-frame character profile unchanged when a smaller sensor excludes the outer image region.

==================================================
SENSOR FORMAT CONTINUITY
==================================================

Within a continuous shot:

sensor format must remain stable unless the physical camera recording mode changes.

NEVER allow:

- crop factor flicker
- FOV flicker
- sudden image-circle changes
- changing lens coverage
- random vignetting
- changing edge distortion
- changing DOF solely because of frame generation
- sensor-format jumps.

==================================================
SENSOR CHANGES BETWEEN SHOTS
==================================================

Changing sensor format between shots is permitted only when intentionally motivated.

If the sensor changes:

recalculate:

- active sensor area
- crop factor
- FOV
- framing
- lens coverage
- DOF
- edge optical behaviour
- lens selection

Do not preserve the old optical configuration artificially.

==================================================
SENSOR SIZE AND LENS CONTINUITY
==================================================

Lens continuity requires both:

LENS_IDENTITY
+
SENSOR_CONFIGURATION.

The same lens on different sensor formats does not produce the same image.

Therefore:

lens continuity cannot be evaluated independently of sensor format.

==================================================
SENSOR SIZE AND 16:9 MASTER
==================================================

The final master format is:

16:9.

The sensor system must calculate the active image area used to produce that master.

If the physical sensor is not naturally 16:9:

the recording mode may crop or window the sensor.

Use the actual active recording dimensions.

Do not simulate the crop after image formation unless explicitly defined by the workflow.

==================================================
SENSOR SIZE AND COMPOSITION
==================================================

Sensor format influences how a given lens frames a scene.

Composition must therefore be evaluated after:

- sensor format
- active image area
- focal length
- camera position

have been determined.

Do not choose composition based on a full-frame assumption and then silently change the sensor.

==================================================
SENSOR SIZE AND CAMERA POSITION
==================================================

If switching sensors while maintaining the same framing:

camera position may or may not need to change depending on the focal length available.

Any camera repositioning must be physically accounted for.

Do not preserve perspective artificially.

==================================================
SENSOR SIZE AND CAMERA MOVEMENT
==================================================

Camera movement remains physical.

Changing sensor size does not alter:

- dolly distance
- tracking speed
- crane height
- orbit radius

However, the captured framing and FOV may change.

==================================================
SENSOR SIZE AND MOTION PARALLAX
==================================================

Parallax is controlled by:

camera movement
+
scene depth.

Sensor size does not directly create parallax.

If sensor format causes a different framing and camera position is changed:

the resulting parallax changes because camera position changed.

==================================================
SENSOR SIZE VALIDATION
==================================================

Before generating a shot, verify:

1. What is the physical sensor format?
2. What are the active sensor dimensions?
3. Is the recording area cropped?
4. What is the aspect ratio?
5. What is the crop factor relative to full frame?
6. What focal length is being used?
7. What FOV results?
8. Does the lens cover the active sensor area?
9. Is vignetting physically plausible?
10. Is the lens's edge character being captured appropriately?
11. Is perspective determined by camera position rather than sensor size?
12. Is DOF derived from the complete camera configuration?
13. Is bokeh derived from the lens rather than sensor size alone?
14. Is the physical focal length unchanged?
15. Is MFD still respected?
16. Is macro capability being treated separately?
17. Is anamorphic squeeze being kept separate?
18. Is exposure being calculated independently of sensor size?
19. Is noise being treated as sensor-specific rather than generic?
20. Is the sensor format stable throughout the shot?
21. Is lens continuity maintained?
22. Is the final image physically plausible?

If any answer is NO:

RECALCULATE THE CAMERA/SENSOR/LENS CONFIGURATION.

==================================================
SENSOR SIZE MACHINE-READABLE PARAMETERS
==================================================

sensor:
  format:
  manufacturer_profile:
  physical_width:
  physical_height:
  physical_diagonal:
  active_width:
  active_height:
  active_diagonal:
  aspect_ratio:
  crop_factor:
  reference_format:
  recording_mode:
  crop_mode:
  pixel_width:
  pixel_height:
  pixel_pitch:
  lens_coverage:
  image_circle_requirement:
  field_of_view:
  perspective:
  depth_of_field:
  exposure:
  noise_profile:
  dynamic_range:
  temporal_consistency:

==================================================
PARAMETER DEPENDENCIES
==================================================

SENSOR_PHYSICAL_SIZE
→
IMAGE_CIRCLE_REQUIREMENT

ACTIVE_SENSOR_AREA
+
FOCAL_LENGTH
→
FIELD_OF_VIEW

SENSOR_FORMAT
+
FOCAL_LENGTH
+
CAMERA_POSITION
→
FRAMING

CAMERA_POSITION
→
PERSPECTIVE

SENSOR_FORMAT
+
FOCAL_LENGTH
+
APERTURE
+
FOCUS_DISTANCE
+
SUBJECT_DISTANCE
→
DEPTH_OF_FIELD

ACTIVE_SENSOR_AREA
+
LENS_IMAGE_CIRCLE
→
VIGNETTING / EDGE_COVERAGE

ACTIVE_SENSOR_AREA
+
LENS_DISTORTION_PROFILE
→
VISIBLE_EDGE_DISTORTION

ACTIVE_SENSOR_AREA
+
LENS_CA_PROFILE
→
VISIBLE_EDGE_CA

ACTIVE_SENSOR_AREA
+
LENS_BOKEH_PROFILE
→
VISIBLE_EDGE_BOKEH

SENSOR_TECHNOLOGY
+
EXPOSURE
+
ISO/GAIN
→
NOISE / DYNAMIC_RANGE BEHAVIOUR

Do not collapse these relationships into:

"SENSOR SIZE = LOOK."

==================================================
SENSOR CONSTRAINT LOGIC
==================================================

IF:

ACTIVE_SENSOR_AREA <= LENS_IMAGE_CIRCLE

THEN:

LENS_COVERAGE = VALID

IF:

ACTIVE_SENSOR_AREA > LENS_IMAGE_CIRCLE

THEN:

LENS_COVERAGE = INVALID

RECONFIGURE:

- lens
- active sensor area
- recording mode

Do not digitally hide the coverage failure.

IF:

SENSOR_FORMAT CHANGES

THEN:

RECALCULATE:

- crop factor
- FOV
- framing
- lens coverage
- visible edge character
- DOF configuration
- optical continuity.

IF:

CAMERA_POSITION = CONSTANT

AND:

SENSOR_FORMAT CHANGES

THEN:

PERSPECTIVE_GEOMETRY REMAINS FUNDAMENTALLY CONSTANT

BUT:

FOV / FRAMING CHANGE.

IF:

EQUIVALENT_FRAMING IS REQUIRED

AND:

SENSOR_FORMAT CHANGES

THEN:

ADJUST FOCAL_LENGTH AND/OR CAMERA_POSITION

AND:

RECALCULATE RESULTING PERSPECTIVE.

==================================================
DEFAULT RAMAYANA SENSOR PROFILE
==================================================

SENSOR_FORMAT:
full-frame reference

REFERENCE_DIMENSIONS:
approximately 36 mm × 24 mm

ACTIVE_ASPECT_RATIO:
16:9

ACTIVE_SENSOR_AREA:
camera-mode dependent

CROP_FACTOR:
1.0× reference

FOCAL_LENGTH:
physical lens value

EQUIVALENT_FOCAL_LENGTH:
comparison only

PERSPECTIVE:
camera-position derived

FIELD_OF_VIEW:
physically calculated

LENS_COVERAGE:
must be valid

VIGNETTING:
lens/sensor dependent

EDGE_CHARACTER:
lens/sensor dependent

DEPTH_OF_FIELD:
physically derived

BOKEH:
lens-dependent

MFD:
lens-dependent

ANAMORPHIC:
separate parameter

EXPOSURE:
physically derived

NOISE:
camera/sensor dependent

DYNAMIC_RANGE:
camera/sensor dependent

DIGITAL_CROP:
none unless actual recording mode specifies it

DIGITAL_MAGNIFICATION:
none

ARTIFICIAL_SENSOR_EFFECTS:
none

SENSOR_FORMAT_FLICKER:
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

Determine sensor behaviour in this order:

1. STORY PURPOSE
2. SHOT PURPOSE
3. REQUIRED SPATIAL RELATIONSHIP
4. COMPOSITION
5. REQUIRED FIELD OF VIEW
6. CAMERA SYSTEM
7. SENSOR FORMAT
8. ACTIVE SENSOR AREA
9. ASPECT RATIO
10. LENS COVERAGE
11. LENS SELECTION
12. PHYSICAL FOCAL LENGTH
13. CROP FACTOR
14. CAMERA POSITION
15. PERSPECTIVE
16. SUBJECT DISTANCE
17. FOCUS DISTANCE
18. APERTURE
19. DEPTH OF FIELD
20. BOKEH
21. EDGE OPTICAL CHARACTER
22. VIGNETTING
23. EXPOSURE
24. SENSOR-SPECIFIC NOISE / DYNAMIC RANGE
25. CAMERA MOVEMENT
26. LENS CONTINUITY
27. SENSOR CONTINUITY
28. TEMPORAL CONSISTENCY
29. FINAL OPTICAL REALISM

The fundamental rule is:

SENSOR SIZE CHANGES WHAT PORTION OF THE LENS'S IMAGE IS CAPTURED.

It does not magically:

- change focal length
- create perspective
- create compression
- create macro capability
- change MFD
- create bokeh
- create anamorphic character
- create exposure
- create cinematic quality.

The correct question is:

"What real camera sensor and active recording area would a cinematographer use for this exact shot, and what physical lens configuration would be compatible with it?"

Then calculate:

SENSOR
→ ACTIVE AREA
→ LENS COVERAGE
→ FOCAL LENGTH
→ FOV
→ CAMERA POSITION
→ PERSPECTIVE
→ FOCUS
→ DOF
→ OPTICAL CHARACTER
→ FINAL IMAGE.

Never fake sensor behaviour through arbitrary cropping, scaling, perspective manipulation, or AI-generated optical effects.

The final result must look like genuine footage captured by a real camera with a real sensor and physically compatible lens.

No fake crop factor.
No digital sensor simulation.
No artificial perspective.
No fake DOF.
No artificial bokeh.
No impossible lens coverage.
No sensor-format flicker.
No unstable image geometry.
No AI-generated sensor behaviour.

It must never look AI-generated.
