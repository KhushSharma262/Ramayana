### CROP FACTOR / SENSOR FORMAT BEHAVIOUR

Treat crop factor as a physical camera-sensor property that affects field of view, framing, and the relationship between focal length and sensor size.

Do NOT treat crop factor as a visual effect.

The final video must look like real professionally captured live-action footage through a real camera and lens.

It must NOT look AI-generated, digitally manipulated, artificially sharpened, artificially blurred, or stylistically exaggerated.

==================================================
PHOTOREALISM — NON-NEGOTIABLE
==================================================

Maintain:

- physically correct perspective
- realistic field of view
- realistic subject proportions
- realistic spatial relationships
- realistic depth
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
WHAT CROP FACTOR MEANS
==================================================

Crop factor describes the relationship between a camera's sensor dimensions and a reference sensor format, commonly full frame.

It primarily affects:

- field of view
- framing
- required camera distance for a particular composition
- effective focal-length equivalence

It does NOT mean that the lens itself becomes physically longer.

A 50mm lens remains a physically 50mm lens regardless of sensor size.

Do not describe a crop sensor as physically changing a lens's focal length.

==================================================
REFERENCE FORMAT
==================================================

Use full-frame 35mm as the reference only when an equivalent comparison is useful.

Approximate relationship:

FULL-FRAME EQUIVALENT FOCAL LENGTH
=
ACTUAL FOCAL LENGTH × CROP FACTOR

Examples:

1.5× crop:
50mm → approximately 75mm full-frame equivalent

1.6× crop:
50mm → approximately 80mm equivalent

2.0× crop:
50mm → approximately 100mm equivalent

These are field-of-view comparisons, not physical changes to the lens.

==================================================
FIELD OF VIEW
==================================================

Sensor size directly affects how much of the lens's image circle is captured.

A smaller sensor captures a smaller portion of the image circle.

Therefore, with the same lens and the same camera position:

- smaller sensor → narrower field of view
- larger sensor → wider field of view

Do not incorrectly describe this as the smaller sensor physically magnifying the scene.

The correct concept is that the sensor crops the captured image circle.

==================================================
FRAMING
==================================================

For the same:

- lens
- camera position
- subject
- sensor

a smaller sensor produces a tighter framing.

If matching the framing between two sensor formats, the camera position or focal length must change.

The LLM must distinguish between:

SAME CAMERA POSITION

and

SAME COMPOSITION.

These produce different comparisons.

==================================================
PERSPECTIVE
==================================================

Crop factor itself does NOT change perspective.

Perspective is primarily determined by:

- camera position
- subject distance
- relative distances between objects

If two cameras use different sensor sizes but remain at exactly the same physical camera position, perspective remains fundamentally the same; the smaller sensor simply captures a narrower portion of the scene.

If the camera is moved to match framing, perspective changes because the camera position changed.

Never attribute this perspective change directly to crop factor.

==================================================
DEPTH OF FIELD
==================================================

Do not incorrectly state that crop factor automatically creates shallower or deeper depth of field.

Depth of field depends on:

- focal length
- aperture
- focus distance
- sensor format
- circle of confusion
- final viewing conditions
- required framing

When matching the same framing and perspective between sensor formats, different focal lengths and camera positions may be required, which can produce different depth-of-field characteristics.

Therefore:

CROP FACTOR
≠
AUTOMATIC DEPTH-OF-FIELD CHANGE

Treat depth of field as a consequence of the complete camera configuration.

==================================================
LOW-LIGHT AND EXPOSURE
==================================================

Do not automatically assume that a crop sensor is simply "darker."

Exposure depends on:

- aperture
- shutter speed
- ISO
- lighting
- sensor characteristics

Sensor format can influence total light captured across the sensor and practical noise performance, but do not fabricate specific noise or exposure characteristics unless the camera system has been explicitly defined.

Do not introduce artificial noise simply because a smaller sensor is selected.

==================================================
LENS SELECTION
==================================================

Choose focal length based on the actual sensor format.

For example:

FULL FRAME:
35mm → relatively wide perspective

APS-C:
24mm → approximately comparable field of view to 36mm full frame on a 1.5× crop

MICRO FOUR THIRDS:
25mm → approximately comparable field of view to 50mm full frame on a 2× crop

These are field-of-view equivalences.

Do not treat the equivalent focal length as the actual physical focal length.

==================================================
COMPOSITION
==================================================

When designing a shot:

1. determine desired composition
2. determine sensor format
3. determine required field of view
4. select physical focal length
5. determine camera position
6. determine focus distance
7. determine aperture
8. determine resulting depth of field
9. render the image using the actual optical characteristics

Do not choose a lens solely from its full-frame equivalent number.

==================================================
WIDE-ANGLE SHOTS
==================================================

When using a crop sensor, a wider physical focal length may be required to achieve the same field of view as a full-frame camera.

Maintain:

- realistic perspective
- realistic edge behaviour
- realistic facial proportions
- realistic architectural geometry

Do not compensate for crop factor using digital widening.

==================================================
TELEPHOTO SHOTS
==================================================

Crop sensors can provide a narrower field of view with a given focal length.

This can be useful for:

- distant characters
- wildlife-like observation
- landscapes
- battlefield views
- architectural details
- isolated subjects

However, do not describe this as the crop sensor creating additional optical magnification.

The narrower field of view is the relevant effect.

==================================================
ANAMORPHIC INTERACTION
==================================================

If an anamorphic lens is used, account for both:

1. sensor format / crop factor
2. anamorphic squeeze factor

Do not confuse the two.

Crop factor determines how much of the image circle the sensor captures.

Anamorphic squeeze determines horizontal optical compression.

Both must be accounted for independently.

The final image must preserve physically plausible:

- field of view
- horizontal rendering
- aspect ratio
- distortion
- bokeh
- flare
- focus behaviour

==================================================
BOKEH INTERACTION
==================================================

Do not automatically increase or decrease bokeh because of crop factor.

Bokeh depends on:

- lens design
- aperture
- focal length
- focus distance
- subject distance
- background distance
- sensor format
- composition requirements

When matching framing across sensor formats, different focal lengths and distances may change the resulting depth-of-field appearance.

Allow this to emerge naturally.

Never add artificial blur to compensate for sensor size.

==================================================
LENS IMAGE CIRCLE
==================================================

The selected lens must adequately cover the selected sensor.

If a lens does not adequately cover the sensor:

- vignetting may occur
- mechanical cutoff may occur
- image quality may deteriorate toward the edges

Do not automatically add vignetting simply because a lens is being used on a different sensor format.

Only introduce it when the lens coverage and optical design justify it.

==================================================
VIDEO TEMPORAL CONSISTENCY
==================================================

Because this is an AI-generated VIDEO system, crop-factor behaviour must remain consistent throughout the shot.

Do NOT allow:

- field of view to randomly change
- framing to drift without camera movement
- perspective to fluctuate
- focal-length appearance to change between frames
- background scale to jump
- depth of field to randomly change
- lens coverage to fluctuate
- vignetting to flicker
- optical characteristics to change without a physical cause

During camera movement, the perspective and field of view must change continuously and physically plausibly.

==================================================
AI VIDEO REALISM
==================================================

Never simulate crop factor using:

- digital zoom
- artificial magnification
- artificial background scaling
- fake perspective
- post-processing crop effects
- synthetic depth
- exaggerated blur

Instead, treat crop factor as part of the camera and sensor configuration.

The generated footage should look as though the selected lens was physically mounted on the selected camera sensor.

==================================================
SHOT-LEVEL APPLICATION
==================================================

Crop factor should be considered when selecting:

- camera body / sensor
- lens
- focal length
- field of view
- framing
- camera distance
- depth of field
- lens coverage

It should NOT be visually noticeable as an "effect."

The audience should simply perceive a physically correct camera image.

==================================================
DEFAULT RAMAYANA PROFILE
==================================================

Unless a shot explicitly requires another camera format:

SENSOR_FORMAT:
full-frame reference

CROP_FACTOR:
1.0×

FIELD_OF_VIEW:
physically calculated

PERSPECTIVE:
physically accurate

FOCAL_LENGTH:
actual physical focal length

EQUIVALENT_FOCAL_LENGTH:
used only for comparison

DEPTH_OF_FIELD:
physically derived

LENS_COVERAGE:
complete

DIGITAL_CROP:
none unless explicitly specified

ARTIFICIAL_MAGNIFICATION:
none

TEMPORAL_CONSISTENCY:
extremely high

OPTICAL_REALISM:
extremely high

AI_ARTIFACT_TOLERANCE:
none

==================================================
DECISION ORDER
==================================================

Determine the camera system in this order:

1. STORY PURPOSE
2. SHOT COMPOSITION
3. REQUIRED FIELD OF VIEW
4. SENSOR FORMAT
5. CROP FACTOR
6. PHYSICAL FOCAL LENGTH
7. CAMERA POSITION
8. SUBJECT DISTANCE
9. APERTURE
10. DEPTH OF FIELD
11. FINAL OPTICAL RENDERING

Never begin with:

"Add crop factor."

Instead, determine the physical camera and lens configuration required for the shot.

Crop factor should quietly influence the camera's field of view and lens selection without becoming a visible stylistic effect.

The final video must look like real professionally photographed live-action footage captured with a real camera and real lens.

It must never look AI-generated.
