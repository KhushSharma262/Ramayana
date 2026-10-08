# CAMERA DISTANCE

## SYSTEM ROLE

Defines the physical distance between the camera's optical reference position and a defined scene reference point.

AUTHORITATIVE FOR:
- physical camera distance
- distance relationships
- distance changes during movement

NOT AUTHORITATIVE FOR:
- focal length
- shot size
- framing
- focus distance
- DOF
- perspective theory
- composition

---

## REFERENCE POINT

For human subjects, default reference:

primary subject head/eye region.

Other reference points may be used:

- body center
- object center
- group center
- ground point
- architectural feature
- environmental reference

The reference point must remain consistent during the shot unless deliberately changed.

---

## MEASUREMENT

Canonical unit:

meters.

Distance represents actual physical camera placement.

It must not represent apparent image magnification.

---

## CAMERA DISTANCE VS FOCAL LENGTH

These are different physical variables.

Changing focal length changes:

- field of view
- magnification
- framing

Changing camera distance changes:

- perspective
- parallax
- spatial relationships
- relative scale between foreground and background

Do not treat them as interchangeable.

---

## HUMAN SUBJECT PROTECTION

Do not place the camera unnecessarily close to human faces.

If required framing produces implausible facial geometry:

1. increase physical distance
2. reconsider focal length
3. preserve the intended framing where possible
4. preserve realistic facial proportions

Never create extreme perspective merely for visual impact.

---

## ENVIRONMENTAL RELATIONSHIPS

Where relevant maintain:

camera_to_subject
camera_to_foreground
camera_to_background
subject_to_background
subject_to_foreground

These relationships must remain physically consistent.

---

## MOVEMENT

During camera or subject movement:

distance changes continuously according to actual spatial movement.

No frame-to-frame teleportation.

---

## MACHINE INTERFACE

camera_distance:
  reference_point:
  distance_m:
  camera_to_subject:
  camera_to_foreground:
  camera_to_background:
  subject_to_background:
  dynamic:
  continuity:

---

## FAILURE RULE

If framing cannot be achieved from the required physical distance:

do not secretly change distance.

Return the conflict to the lens/framing/shot-design system.

---

## FINAL RULE

Camera distance represents where the real camera physically is.
