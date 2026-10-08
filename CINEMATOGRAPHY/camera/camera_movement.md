# CAMERA MOVEMENT

## SYSTEM ROLE

This is the camera folder's movement-orchestration layer.

It decides what physical camera movement, if any, best serves the shot.

Detailed physical laws remain in the root movement system.

---

## PRIMARY QUESTION

Do not ask:

"Which camera movement looks cinematic?"

Ask:

"What would a real cinematographer physically do here to serve the shot?"

---

## MOVEMENT OPTIONS

- static
- pan
- tilt
- dolly
- tracking
- crane
- orbit
- handheld
- stabilized movement
- combined movement

---

## MOVEMENT DECISION

Consider:

- story purpose
- subject behavior
- blocking
- environment
- camera position
- lens
- framing
- focus
- support system
- operator limitations
- available physical path
- continuity

---

## MOVEMENT PRIORITY

1. physical feasibility
2. subject/blocking compatibility
3. continuity
4. focus/framing feasibility
5. narrative purpose
6. emotional effect
7. stylistic preference

---

## STATIC IS A VALID MOVEMENT DECISION

Do not move the camera when movement adds no meaningful information.

A static shot can be the most deliberate cinematographic choice.

---

## COMBINED MOVEMENT

Combined movements are allowed only when each component is physically achievable.

Example:

dolly + pan

means actual translation plus actual rotation.

Do not use mathematically perfect compound motion unless a physical support system can produce it.

---

## START / STOP

Movement must include physically plausible:

- initiation
- acceleration
- travel
- deceleration
- settling

---

## NO RANDOM MOVEMENT

Never add movement solely to prevent the shot from looking static.

Never add:

- random drift
- random shake
- arbitrary push-ins
- arbitrary pull-outs
- arbitrary orbiting

---

## MACHINE INTERFACE

camera_movement:
  type:
  purpose:
  direction:
  path:
  start_position:
  end_position:
  speed:
  acceleration:
  deceleration:
  duration:
  support:
  operator_mode:
  subject_relationship:
  focus_interaction:
  framing_interaction:

---

## FINAL RULE

Movement is selected by cinematographic purpose and executed through physical camera behavior.
