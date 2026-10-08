# CAMERA BODY / CAMERA SYSTEM

==================================================
CORE PURPOSE
==================================================

The camera body represents the physical professional digital cinema camera system used to capture the scene.

This file defines camera-body and sensor behaviour only.

It does NOT define:

- camera distance
- camera height
- camera movement
- dolly movement
- tracking
- orbit
- crane movement
- handheld movement
- tripod behaviour
- lens selection
- focal-length behaviour
- lens distortion
- lens bokeh
- lens flare
- lens breathing
- focus-pull choreography.

Those behaviours are defined by their respective CAMERA and LENSES files.

The camera body must behave as a real physical image-recording system.

The final result must look like professionally captured live-action footage from a real cinema camera.

It must never look AI-generated.


==================================================
CAMERA SYSTEM PHILOSOPHY
==================================================

The project uses a manufacturer-independent camera architecture.

Do not assume:

- ARRI
- RED
- Sony
- Canon
- Blackmagic
- Panasonic
- any other specific manufacturer

unless a future camera profile explicitly requires one.

The default camera is a conceptual:

PROFESSIONAL DIGITAL CINEMA CAMERA

The purpose is to model physically plausible camera behaviour rather than reproduce the visual signature of a commercial camera brand.


==================================================
PHYSICAL CAMERA MODEL
==================================================

The camera body represents:

- sensor
- active sensor area
- sensor format
- sensor readout
- dynamic range
- exposure response
- shutter
- frame rate
- recording mode
- recording resolution
- ISO / gain
- colour response
- white balance
- stabilization system
- noise behaviour
- rolling-shutter behaviour
- high-speed recording capability.

The camera body does not independently create:

- perspective
- focal length
- spatial compression
- optical distortion
- bokeh
- lens flare
- lens ghosting
- lens breathing.

Those are determined by the lens and physical camera geometry.


==================================================
DEFAULT CAMERA BODY
==================================================

CAMERA_CLASS:

professional digital cinema camera

MANUFACTURER:

independent / unspecified

MODEL:

generic professional cinema camera

SENSOR_REFERENCE:

full-frame

MASTER_ASPECT_RATIO:

16:9

DEFAULT_FRAME_RATE:

24 fps

DEFAULT_SHUTTER:

180 degree shutter angle

DEFAULT_EXPOSURE_TIME:

approximately 1/48 second at 24 fps

RECORDING:

high-quality digital cinema capture

CAMERA_BEHAVIOUR:

physically derived

OPTICAL_BEHAVIOUR:

physically derived from lens system

TEMPORAL_CONSISTENCY:

extremely high

AI_ARTIFACT_TOLERANCE:

none


==================================================
SENSOR FORMAT
==================================================

The default project reference is full-frame.

Full-frame is a reference baseline, not a mandatory sensor for every shot.

Other sensor formats may be selected when physically justified:

- Super 35
- APS-C
- Micro Four Thirds
- large format
- other physically defined cinema formats.

The actual physical sensor dimensions have priority over category names.

Never infer exact sensor dimensions from a format label alone when precise calculation is required.


==================================================
FULL-FRAME REFERENCE
==================================================

The project's primary reference format is approximately:

36 mm × 24 mm

Use this as the baseline for:

- crop-factor comparisons
- lens FOV comparisons
- camera configuration
- machine-readable defaults.

The reference format must not be confused with the physical sensor used by every shot.


==================================================
ACTIVE SENSOR AREA
==================================================

The active sensor area is the portion of the physical sensor being recorded.

It may change because of:

- recording resolution
- aspect ratio
- crop mode
- high-speed mode
- stabilization
- sensor readout mode.

Any change in active sensor area requires recalculation of:

- FOV
- crop factor
- image-circle coverage
- framing
- lens compatibility.


==================================================
SENSOR / LENS COMPATIBILITY
==================================================

The selected lens must cover the active sensor.

Required condition:

IMAGE_CIRCLE >= ACTIVE_SENSOR_AREA

If this condition fails:

the configuration is invalid unless the selected camera mode explicitly accommodates the coverage.

Never hide insufficient lens coverage through:

- digital cropping
- artificial edge darkening
- synthetic lens behaviour.


==================================================
FRAME RATE
==================================================

The default cinematic frame rate is:

24 fps

Frame rate may change when the shot requires:

- slow motion
- high-speed action
- specialized temporal capture
- specific production requirements.

Frame-rate changes must be explicit.

Do not change frame rate merely to create a stylistic appearance.


==================================================
SHUTTER
==================================================

The default shutter is:

180 degrees

At 24 fps this corresponds approximately to:

1/48 second exposure time.

Shutter behaviour must remain physically connected to frame rate.

Do not treat shutter angle as an arbitrary "motion blur" control.


==================================================
SHUTTER ANGLE
==================================================

Shutter angle determines exposure duration relative to frame rate.

Larger shutter angles generally produce:

- longer exposure
- greater motion integration
- more motion blur.

Smaller shutter angles generally produce:

- shorter exposure
- less motion integration
- crisper motion.

The visible result must emerge from exposure time and actual movement.


==================================================
MOTION RENDERING
==================================================

Motion rendering depends on:

- frame rate
- shutter duration
- subject velocity
- camera velocity
- direction of movement
- lens characteristics
- scene geometry.

Do not apply artificial motion blur independently of moving objects.

Motion blur must remain attached to physical scene movement.


==================================================
HIGH-SPEED CAPTURE
==================================================

High-speed capture may be used when the shot requires slow motion.

High-speed capture may require changes to:

- frame rate
- shutter
- exposure
- available light
- sensor readout
- noise behaviour
- recording mode.

High-speed footage must be captured as high-speed footage.

Do not simply slow normal-speed footage and claim equivalent physical capture unless explicitly required.


==================================================
SENSOR READOUT
==================================================

The camera sensor may use:

- rolling shutter
- global shutter
- other physically defined readout behaviour.

Readout behaviour must belong to the selected camera profile.

Do not change readout behaviour between frames without an actual camera-mode change.


==================================================
ROLLING SHUTTER
==================================================

Rolling-shutter behaviour depends on:

- sensor readout time
- frame rate
- camera movement
- subject movement
- direction of movement
- exposure timing.

Potential effects include:

- skew
- leaning verticals during rapid pans
- temporal displacement
- geometric distortion during rapid movement.

Rolling-shutter effects must only appear when physically supported.

Do not add rolling-shutter distortion to static or slow-moving scenes without justification.


==================================================
GLOBAL SHUTTER
==================================================

A global-shutter camera should not display strong rolling-shutter geometry.

If global shutter is selected:

avoid artificial:

- skew
- frame-row displacement
- temporal geometric bending.


==================================================
DYNAMIC RANGE
==================================================

Dynamic range describes the range of scene luminance that can be recorded with useful information.

It affects:

- highlight retention
- shadow retention
- exposure latitude
- contrast response.

Dynamic range must remain finite and physically plausible.

Do not create unlimited detail in both clipped highlights and severely underexposed shadows.


==================================================
HIGHLIGHT RESPONSE
==================================================

Highlights must respond according to the camera recording characteristics.

Possible behaviour:

- gradual highlight compression
- natural roll-off
- clipping when sensor capacity is exceeded.

Do not create artificial HDR halos.

Do not automatically make every bright source glow.


==================================================
SHADOW RESPONSE
==================================================

Shadow detail depends on:

- sensor dynamic range
- exposure
- ISO / gain
- scene illumination
- recording profile.

Do not recover unlimited information from severely underexposed regions.

Shadow lifting must remain physically plausible.


==================================================
ISO / GAIN
==================================================

ISO / gain affects the camera's exposure and noise behaviour.

It may influence:

- shadow noise
- highlight headroom
- exposure strategy
- dynamic-range behaviour.

Do not use ISO merely as a visual brightness slider.

Do not add noise simply because ISO is high.


==================================================
BASE / NATIVE SENSITIVITY
==================================================

If a camera profile defines:

- base ISO
- native ISO
- dual-native ISO
- multiple gain states

those characteristics may be used.

They must remain properties of the selected camera profile.

Do not invent native sensitivity states.


==================================================
NOISE
==================================================

Sensor noise must emerge from:

- sensor characteristics
- exposure
- ISO / gain
- illumination
- frame rate
- temperature when relevant
- recording mode.

Noise must remain:

- subtle
- spatially coherent
- temporally coherent
- exposure-dependent.

Never add decorative grain to represent sensor noise.


==================================================
TEMPORAL NOISE
==================================================

Noise must not crawl independently between frames.

Avoid:

- random texture crawling
- unstable grain
- fixed digital speckles
- changing noise density without exposure change
- noise pattern flicker.


==================================================
EXPOSURE
==================================================

Exposure is determined by the interaction of:

- scene illumination
- aperture
- shutter
- ISO / gain
- filters
- lens transmission
- sensor response.

The camera body must not independently invent exposure.

Exposure changes must have a physical or intentional camera-control cause.


==================================================
AUTO EXPOSURE
==================================================

Auto exposure is disabled by default for controlled cinematic capture.

If explicitly enabled:

exposure changes must respond to actual scene luminance.

Do not create:

- exposure pumping
- random brightness changes
- frame-to-frame exposure flicker.


==================================================
WHITE BALANCE
==================================================

White balance represents the camera's interpretation of illumination colour.

The system must distinguish:

- illumination colour
- white balance
- camera colour response
- final colour grading.

White balance should remain stable unless intentionally changed.


==================================================
AUTO WHITE BALANCE
==================================================

Auto white balance is disabled by default.

If enabled:

changes must respond to actual changes in illumination or scene composition.

Do not allow uncontrolled colour drift.


==================================================
COLOUR RESPONSE
==================================================

The camera body may influence:

- spectral response
- tonal response
- saturation response
- highlight colour
- shadow colour.

However, camera colour response must remain separate from:

- lighting
- white balance
- lens effects
- grading.

Do not use arbitrary colour shifts to represent a camera body.


==================================================
RECORDING PROFILE
==================================================

The camera may internally use:

- RAW
- Log
- standard video
- other defined recording representations.

These are capture representations, not final cinematic styles.

RAW does not automatically mean cinematic.

Log does not mean the final footage should appear flat.

The final generated image represents the finished image after the intended image pipeline.


==================================================
RAW
==================================================

RAW represents minimally processed sensor capture.

When RAW is selected:

the system may use it as an internal capture model.

The final generated footage must still represent the intended finished image unless the shot explicitly requests a RAW-looking output.


==================================================
LOG
==================================================

Log represents a recording transfer characteristic designed to preserve tonal range.

Log must not be interpreted as:

- washed-out final colour
- low contrast final footage
- cinematic colour.

The final image must be transformed conceptually into the intended finished appearance.


==================================================
STABILIZATION
==================================================

Stabilization is camera-system dependent.

Possible systems include:

- optical stabilization
- sensor stabilization
- electronic stabilization
- mechanical stabilization
- no stabilization.

The actual movement behaviour is controlled by the appropriate CAMERA movement files.

This file only defines the camera body's stabilization capability and state.


==================================================
ELECTRONIC STABILIZATION
==================================================

Electronic stabilization may require:

- additional sensor margin
- image cropping
- reduced FOV
- temporal tracking.

Do not stabilize through independently moving image layers.


==================================================
CAMERA BODY / LENS SEPARATION
==================================================

CAMERA BODY controls:

- sensor
- readout
- shutter
- frame rate
- recording
- dynamic range
- ISO / gain
- stabilization
- noise.

LENS controls:

- focal length
- optical projection
- distortion
- bokeh
- flare
- ghosting
- optical character
- focus behaviour.

CAMERA POSITION controls:

- perspective
- subject scale
- spatial relationships
- parallax.

Never duplicate these responsibilities.


==================================================
CAMERA BODY CONTINUITY
==================================================

During a continuous shot preserve:

- camera identity
- sensor format
- active sensor area
- recording mode
- resolution
- frame rate
- shutter
- ISO / gain
- dynamic-range behaviour
- colour response
- stabilization state
- readout behaviour
- noise characteristics.

Any intentional change must have a physical or production cause.


==================================================
MACHINE-READABLE PARAMETERS
==================================================

camera_body:
  enabled:
  camera_class:
  manufacturer:
  model:
  camera_profile:
  sensor:
  sensor_type:
  sensor_format:
  sensor_width:
  sensor_height:
  active_sensor_area:
    width:
    height:
  pixel_architecture:
  dynamic_range:
  highlight_rolloff:
  shadow_response:
  base_iso:
  iso:
  gain:
  native_sensitivity:
  dual_native_iso:
  frame_rate:
  shutter:
  shutter_angle:
  shutter_speed:
  recording_resolution:
  recording_aspect_ratio:
  recording_mode:
  crop_mode:
  readout_mode:
  sensor_readout_time:
  rolling_shutter:
  global_shutter:
  stabilization:
  stabilization_type:
  stabilization_crop:
  white_balance:
  auto_exposure:
  auto_white_balance:
  colour_response:
  recording_profile:
  raw:
  log:
  noise_character:
  temporal_noise:
  lens_compatibility:
  image_circle_requirement:
  continuity:
  temporal_consistency:


==================================================
PARAMETER DEPENDENCIES
==================================================

SENSOR_FORMAT
+
ACTIVE_SENSOR_AREA
+
FOCAL_LENGTH
→
FIELD_OF_VIEW

FRAME_RATE
+
SHUTTER_ANGLE
→
EXPOSURE_TIME

EXPOSURE_TIME
+
SUBJECT_MOTION
+
CAMERA_MOTION
→
MOTION_RENDERING

SENSOR_READOUT_TIME
+
CAMERA_MOTION
+
SUBJECT_MOTION
→
ROLLING_SHUTTER_BEHAVIOUR

ISO / GAIN
+
EXPOSURE
+
SENSOR_CHARACTERISTICS
→
NOISE_BEHAVIOUR

SENSOR
+
RECORDING_PROFILE
+
EXPOSURE
→
DYNAMIC_RANGE_RESPONSE

STABILIZATION
+
CAMERA_MOVEMENT
→
IMAGE_STABILITY

RECORDING_MODE
+
ACTIVE_SENSOR_AREA
→
CROP / FOV

WHITE_BALANCE
+
LIGHT_SOURCE
→
COLOUR_RESPONSE


==================================================
CONFLICT RESOLUTION
==================================================

When requirements conflict, prioritize:

1. PHYSICAL POSSIBILITY
2. SENSOR / CAMERA COMPATIBILITY
3. LENS COMPATIBILITY
4. EXPOSURE
5. SHUTTER
6. FRAME RATE
7. SENSOR READOUT
8. DYNAMIC RANGE
9. RECORDING MODE
10. STABILIZATION
11. COLOUR RESPONSE
12. STORY PURPOSE
13. SHOT PURPOSE
14. STYLISTIC PREFERENCE

Never reverse this hierarchy merely to obtain a desired cinematic effect.


==================================================
TEMPORAL CONSISTENCY
==================================================

Across consecutive frames preserve:

- sensor geometry
- exposure response
- shutter behaviour
- frame rate
- noise character
- colour response
- readout behaviour
- stabilization behaviour
- dynamic-range behaviour.

Never allow:

- exposure flicker
- colour flicker
- noise crawling
- sensor geometry changes
- FOV changes
- rolling-shutter changes
- stabilization jumps
- resolution jumps
- recording-mode jumps.

Every change must have a physical cause.


==================================================
AI ARTIFACT FIREWALL
==================================================

The camera model must never be used to justify:

- plastic skin
- artificial sharpness
- unstable eyes
- morphing faces
- texture crawling
- unstable noise
- impossible highlight recovery
- impossible shadow recovery
- synthetic motion blur
- unstable rolling shutter
- geometry deformation
- temporal colour drift.

If an artifact cannot be physically explained by the camera system:

REMOVE IT.


==================================================
VALIDATION
==================================================

Before generating a shot verify:

1. Is the camera body defined?
2. Is the sensor defined?
3. Is the active sensor area defined?
4. Is lens coverage valid?
5. Is frame rate defined?
6. Is shutter defined?
7. Is exposure physically plausible?
8. Is ISO / gain appropriate?
9. Is dynamic range plausible?
10. Is highlight response plausible?
11. Is shadow response plausible?
12. Is sensor readout defined?
13. Is rolling shutter behaviour appropriate?
14. Is stabilization defined?
15. Is noise physically plausible?
16. Is white balance defined?
17. Is colour response stable?
18. Is recording mode defined?
19. Is the camera body continuous throughout the shot?
20. Does the final image look like genuine camera capture?

If any answer is NO:

RECALCULATE THE CAMERA CONFIGURATION.


==================================================
FINAL CAMERA BODY RULE
==================================================

The camera body is a physical image-recording system.

It is not a "cinematic look."

Every visible camera characteristic must emerge from:

SENSOR
+
EXPOSURE
+
SHUTTER
+
FRAME_RATE
+
READOUT
+
GAIN
+
RECORDING_MODE
+
STABILIZATION
+
LIGHTING
+
LENS
+
CAMERA_POSITION

The camera body must not manufacture lens behaviour.

The lens must not manufacture sensor behaviour.

The final image must be the physically plausible result of the complete camera system.

When uncertain:

choose the least artificial physically plausible result.

No synthetic camera behaviour.
No arbitrary HDR.
No artificial motion blur.
No fake rolling shutter.
No decorative sensor noise.
No exposure flicker.
No colour instability.
No temporal camera drift.
No AI-generated camera artefacts.

The final footage must look as though it was captured by a real professional cinematographer using a real camera body, real sensor, real lens, real exposure, and real physical conditions.

It must never look AI-generated.
