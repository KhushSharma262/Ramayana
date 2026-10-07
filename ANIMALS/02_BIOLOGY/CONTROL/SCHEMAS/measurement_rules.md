---
file_id: BIO-CONTROL_SCHEMAS_measurement_rules
domain: CONTROL
canonical_owner: CONTROL
file_role: CONTROL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# BIOLOGICAL MEASUREMENT RULES

Numeric biological data must never exist without context.

Required where applicable:

value
unit
measurement_type
method
conditions
population
sex
age
sample_size
source
confidence.

## EXAMPLE

INCORRECT:

horse speed: 70

CORRECT STRUCTURE:

value:
70

unit:
km/h

measurement_type:
maximum_recorded_speed

conditions:
...

population:
...

source:
...

confidence:
...

## IMPORTANT

Maximum recorded speed is not automatically normal sustained speed.

Captive measurements are not automatically wild measurements.

One individual measurement is not automatically a species average.

Ranges are preferred where biological variation is substantial.


