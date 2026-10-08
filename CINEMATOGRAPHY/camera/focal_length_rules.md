# FOCAL LENGTH RULES

## SYSTEM ROLE

Validates the selected focal length during camera execution.

Lens physics belong to LENSES.

Lens selection belongs to the lens-selection system.

This file does not override either.

---

## FOCAL LENGTH STABILITY

For a fixed lens:

focal_length = constant.

It changes only through:

- optical zoom
- lens change
- explicitly defined optical configuration change

---

## CAMERA POSITION

Focal length does not replace camera distance.

Camera position determines perspective.

Focal length determines field of view and magnification.

---

## ZOOM

A physical zoom changes focal length continuously.

Do not simulate optical zoom with:

- digital scaling
- artificial warping
- synthetic magnification

---

## DOLLY ZOOM

Requires:

camera_position_change
+
focal_length_change

Both must be physically synchronized.

---

## CONTINUITY

Do not allow:

- focal-length flicker
- unexplained FOV changes
- sudden magnification changes
- changing optical character without lens change

---

## FAILURE RULE

If the requested framing requires an incompatible focal length:

return the problem to lens selection rather than silently altering another parameter.

---

## FINAL RULE

Focal length is an optical variable and must remain physically consistent.
