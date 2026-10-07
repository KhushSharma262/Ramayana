# DOMESTIC / TRAINED CONTINUITY

## PURPOSE

Maintain animal state across the entire story.

## CONTINUITY STATE

Every important animal may carry:

identity
age
sex
training
conditioning
work_role
handler
relationships
equipment
injury
fatigue
rest
location
last_seen
current_state

## TRANSITION

SCENE_N
→ APPROVED_ANIMAL_STATE
→ SCENE_N+1

Unless an explicit change event occurs, the state persists.

## CHANGE EVENTS

- new training
- retraining
- injury
- recovery
- aging
- new handler
- loss of handler
- equipment change
- work-role change
- ownership change
- death
- replacement
- retirement

## HARD RULE

AI regeneration does not constitute a continuity event.
