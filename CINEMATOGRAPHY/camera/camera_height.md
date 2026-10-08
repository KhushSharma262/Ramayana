# CAMERA HEIGHT

## SYSTEM ROLE

Defines physical vertical camera position.

AUTHORITATIVE FOR:
- camera elevation
- camera height
- vertical camera paths

NOT AUTHORITATIVE FOR:
- emotional meaning
- eye-line interpretation
- composition
- framing
- shot size
- lens selection

---

## HEIGHT REFERENCES

Height may be measured relative to:

- ground
- floor
- subject
- eye level
- architectural reference

Canonical unit:

meters.

---

## PHYSICAL FEASIBILITY

Height must be achievable by the selected camera/support system.

Consider:

- operator height
- tripod range
- shoulder position
- dolly height
- crane capability
- terrain
- obstacles
- access

---

## HEIGHT VS ANGLE

Camera height and camera rotation are independent parameters.

Changing height does not automatically change tilt.

Changing tilt does not automatically change height.

---

## MOVEMENT

Vertical movement must follow a continuous physical path.

No teleportation.

No impossible vertical transitions.

---

## MACHINE INTERFACE

camera_height:
  height_m:
  reference:
  support_system:
  start_height:
  end_height:
  dynamic:
  continuity:

---

## FAILURE RULE

If a requested height is physically inaccessible:

use the nearest physically plausible configuration and preserve the shot's purpose through other variables.

---

## FINAL RULE

Camera height describes physical camera placement, not cinematic meaning.
