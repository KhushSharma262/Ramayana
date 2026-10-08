# CAMERA STABILITY

## SYSTEM ROLE

Determines the required stability state and the physically appropriate way to achieve it.

AUTHORITATIVE FOR:
- stability state
- support selection
- expected camera steadiness

NOT AUTHORITATIVE FOR:
- detailed tripod physics
- detailed handheld physics
- gimbal mechanics
- movement physics

---

## STABILITY STATES

- locked
- highly stable
- controlled stable
- stabilized
- restrained handheld
- active handheld
- intentionally unstable

---

## SUPPORT SELECTION

Possible systems:

- tripod
- dolly
- crane
- gimbal
- shoulder
- handheld
- other physically justified systems

---

## HUMAN REALISM

Human operation does not mean random shake.

Professional operation can be:

- extremely stable
- smoothly controlled
- precisely corrected
- deliberately imperfect

Imperfection must have a physical cause.

---

## STABILIZATION

Stabilization must not create:

- floating-camera behavior
- impossible smoothness
- digital warping
- sudden stabilization changes

---

## SUPPORT CONSISTENCY

Do not change support type mid-shot without a physical transition.

---

## MACHINE INTERFACE

camera_stability:
  state:
  support_system:
  stabilization:
  operator_mode:
  expected_micro_motion:
  correction_level:
  continuity:

---

## FINAL RULE

Stability must look like the natural result of the chosen physical camera-support system.
