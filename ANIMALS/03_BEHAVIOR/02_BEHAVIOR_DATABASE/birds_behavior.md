# BIRDS BEHAVIOR DATABASE

## Database Identity

database_id: DB-BEH-BRD
database_name: BIRDS Behavior Database
database_version: 1.0
database_status: ACTIVE
taxonomic_scope: Aves

---

# PURPOSE

This file contains species-specific behavioral knowledge for
BIRDS animals used by the Ramayana production system.

This is a DATABASE.

It is not a general essay, visual reference, animation guide,
or generic animal description.

---

# HARD RULES

1. Every species must have a unique ENTITY_ID.
2. One species must have one primary entity section.
3. No species behavior may be copied from another species without
   explicit evidence.
4. Broad common names must remain unresolved when taxonomy is
   unresolved.
5. Unsupported assumptions are BLOCKED.
6. AI-generated material is not biological evidence.
7. Domestic/trained behavior must not be generalized to wild animals.
8. Captive behavior must not automatically be generalized to wild
   populations.
9. One observed behavior does not automatically establish a species-wide rule.
10. Behavioral claims must preserve uncertainty.
11. Conflicting evidence must remain visible.
12. Missing evidence must remain missing.
13. Movement implementation belongs to MOVEMENT, not this database.
14. Anatomy belongs to BIOLOGY, not this database.
15. Ecological system-level behavior belongs to ECOLOGY where appropriate.
16. Production interpretation must remain distinguishable from evidence.

---

# ENTITY FORMAT

Every species section MUST use this structure:

## ENTITY TEMPLATE (DO NOT PARSE AS AN ENTITY)

### Identity

entity_id:
scientific_name:
common_name:
taxonomic_status:
taxonomy_confidence:
geographic_scope:
population_context:

### Production Status

production_status:
approval_state:
entity_version:
database_version:
evidence_snapshot:
last_reviewed:

### Baseline Behavioral Profile

baseline_activity:
rest_behavior:
alertness_baseline:
sociality:
solitary_or_grouping:
territoriality:
resource_competition:

### Behavioral State System

primary_triggers:
perception_channels:
internal_states:
motivations_or_needs:
decision_patterns:
escalation_patterns:
de_escalation_patterns:
recovery_patterns:

### Feeding / Foraging / Drinking

feeding_behavior:
foraging_strategy:
food_selection:
search_behavior:
handling_behavior:
drinking_behavior:
resource_competition:

### Social Behavior

group_structure:
dominance_or_social_structure:
spacing:
affiliation:
conflict:
cooperation:
social_grooming_or_equivalent:

### Communication

visual_signals:
auditory_signals:
olfactory_signals:
tactile_signals:
chemical_or_other_signals:
context_dependence:

### Sensory-Driven Behavior

vision:
hearing:
smell:
touch:
other_relevant_senses:
sensory_response_to_novelty:

### Fear / Defense / Predator-Prey

threat_detection:
initial_response:
avoidance:
freezing_or_inhibition:
defensive_escalation:
escape_behavior:
predator_response:
prey_response:
post_threat_recovery:

### Curiosity / Learning / Habituation

novelty_response:
exploration:
learning:
memory_relevant_behavior:
habituation:
sensitization:
human_habituation:

### Human / Domestic / Managed Context

wild_behavior:
habituated_behavior:
captive_behavior:
domesticated_behavior:
trained_behavior:
working_behavior:
ridden_behavior:
ceremonial_behavior:
companion_behavior:

Only fill states applicable to this species.

### Environment / Weather / Season

habitat_effects:
temperature_effects:
rain_effects:
wind_effects:
light_effects:
seasonal_behavior:
daily_activity_pattern:
resource_availability_effects:

### Age / Sex / Life Stage

juvenile_behavior:
subadult_behavior:
adult_behavior:
elder_behavior:
male_behavior:
female_behavior:
reproductive_state_effects:

### Reproduction / Parenting

courtship:
mate_selection:
mating_behavior:
nest_or_den_or_site_behavior:
pregnancy_or_egg_behavior:
parental_behavior:
offspring_protection:
offspring_learning:

### Individual Variation

personality_or_temperament_variation:
age_variation:
sex_variation:
experience_variation:
health_variation:
training_variation:
habituation_variation:
social_rank_variation:

### Stress / Fatigue / Recovery

stress_signals:
fatigue_behavior:
overload_behavior:
withdrawal_behavior:
recovery_behavior:
abnormal_behavior_warning:

### Animal-Animal Interaction

same_species:
different_species:
predator:
prey:
competitor:
symbiotic_or_associated_species:

### Human Interaction

familiar_human:
unfamiliar_human:
handler:
crowd:
noise:
sudden_human_movement:
physical_contact:

### Production Constraints

must_not_do:
rare_behavior_that_requires_context:
anthropomorphic_interpretations_to_avoid:
implausible_behavior:
continuity_constraints:

### Evidence

For EVERY important production-relevant claim:

source:
source_type:
source_reference:
evidence:
evidence_date:
geographic_applicability:
population_applicability:
interpretation:
claim:
confidence:
uncertainty:
decision:
approval_state:
version:
snapshot:

### Conflicts

known_conflicts:
source_disagreement:
population_difference:
geographic_difference:
captivity_difference:
resolution_status:

### Notes

free_notes:

---

# CLAIM DISCIPLINE

A behavioral statement must distinguish:

OBSERVED FACT
from
SCIENTIFIC INTERPRETATION
from
PRODUCTION DECISION.

Never present a production choice as natural history.

---

# CROSS-SPECIES CONTAMINATION CONTROL

Do not copy a behavioral claim merely because another species
belongs to the same family, order, or broad group.

Taxonomic relatedness may inform research direction but does not
automatically establish identical behavior.

---

# Coverage includes domestic and wild birds. Broad terms such as bird, crow, pigeon, dove, parrot, eagle, hawk, owl, etc. must remain taxonomically explicit.

