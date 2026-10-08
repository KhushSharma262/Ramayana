# CAMERA BODY

## SYSTEM ROLE

The camera body is the physical image-capture device.

This file owns only camera-body and capture-system properties.

AUTHORITATIVE FOR:
- camera architecture
- sensor format
- active sensor area
- recording area
- frame rate
- shutter
- sensor readout
- dynamic range
- sensitivity/capture behavior
- recording representation
- camera-body continuity

NOT AUTHORITATIVE FOR:
- lens physics
- lens selection
- camera distance
- camera height
- movement
- framing
- composition
- lighting
- focus operation
- emotional meaning

Those systems must remain separate.

---

## DEFAULT CAMERA

Use a manufacturer-independent professional digital cinema camera.

Reference:

camera_type:
  professional_digital_cinema_camera

sensor_reference:
  full_frame

master_aspect_ratio:
  16:9

default_frame_rate:
  24_fps

default_shutter:
  180_degrees

default_exposure_at_24fps:
  approximately_1_48_second

capture_quality:
  professional_cinema

internal_capture:
  RAW_or_Log_capable

final_output:
  finished_cinematic_image

RAW/Log describes internal capture behavior only.

Do not generate a flat Log-looking final image unless explicitly required.

---

## SENSOR CONSISTENCY

The sensor configuration must remain stable during a continuous shot unless an explicit physical camera-system change occurs.

Track:

- sensor format
- active area
- crop mode
- aspect ratio
- readout
- dynamic range
- noise behavior
- highlight behavior
- shadow behavior

Never allow invisible sensor changes between frames.

---

## FRAME RATE

24 fps is the default.

Other frame rates require a reason such as:

- high-speed photography
- slow motion
- specialized action capture
- explicitly defined temporal treatment

Changing frame rate changes motion rendering.

Do not change it merely to make a shot appear more cinematic.

---

## SHUTTER

Default:

180 degrees.

At 24 fps:

approximately 1/48 second.

Shutter determines exposure duration and therefore contributes to motion rendering.

Motion blur must never be independently invented.

---

## READOUT

Rolling-shutter behavior may be used when appropriate.

Readout artifacts must depend on:

- readout speed
- camera motion
- subject motion
- exposure
- scene geometry

Never add rolling-shutter distortion as decoration.

---

## EXPOSURE

Exposure must remain physically coherent with:

- lighting
- aperture
- sensitivity
- shutter
- sensor behavior

Do not use exposure changes as arbitrary stylistic effects.

---

## COLOR CAPTURE

White balance and color capture must remain temporally stable unless deliberately changed by:

- operator action
- lighting change
- camera configuration change

No random color-temperature drift.

---

## STABILIZATION

Camera-body stabilization is only one component of camera stability.

It must not override:

- support-system behavior
- operator movement
- lens behavior
- camera movement

Shot-level stability belongs to `camera_stability.md`.

---

## TEMPORAL CONTINUITY

Within a continuous shot preserve:

- sensor
- frame rate
- shutter
- readout
- capture characteristics
- sensitivity behavior
- color response
- dynamic range behavior

unless an explicit physical event changes them.

---

## MACHINE INTERFACE

camera_body:
  type:
  sensor_format:
  active_sensor_area:
  aspect_ratio:
  frame_rate:
  shutter_angle:
  exposure_time:
  readout:
  dynamic_range:
  sensitivity:
  white_balance:
  recording_mode:
  stabilization:
  continuity_state:

---

## FAILURE RULE

If another camera parameter conflicts with the camera body's physical capability:

1. reject the impossible configuration
2. preserve the physical camera
3. modify the lower-priority request
4. never simulate impossible capture behavior

---

## FINAL RULE

The camera body must behave as a real physical capture device.
