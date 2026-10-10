# PHYSICS DATA STANDARD

Every physical property record should contain, where applicable:

- physics_id
- material_id
- property_name
- quantity
- SI_value
- SI_unit
- range
- uncertainty
- distribution if scientifically justified
- temperature
- pressure
- humidity
- moisture_content
- loading_condition
- loading_direction
- strain_rate
- surface_condition
- contact_pair
- specimen_condition
- scale
- measurement_method
- source
- provenance
- confidence
- validity_range
- limitations
- model
- version
- date_verified

## Provenance

Allowed provenance:

MEASURED
LITERATURE_REPORTED
CALCULATED
DERIVED
EMPIRICAL_MODEL
ESTIMATED
SIMULATION_PARAMETER
ASSUMED
UNKNOWN

## Mandatory rule

A numerical value without enough conditions to interpret it scientifically must not be treated as universally valid.

## Significant figures

Precision must not exceed the evidence.

If a source supports only approximately 700 kg/m³, do not store 700.000 kg/m³.

## Ranges

Use ranges when variation is physically meaningful.

## Distributions

Use probability distributions only when there is evidence that the distribution is justified.

Do not invent Gaussian distributions merely because a simulation requires one.

## Zero

Zero means physically zero.

It must not be used as a placeholder for missing information.

## Not applicable

Use NOT_APPLICABLE only when the property genuinely has no physical meaning for the material/system.

## Unknown

Use UNKNOWN when the property matters but reliable information is unavailable.

## Dependency

A property that depends on another property must reference that dependency.

Example:

thermal conductivity
→ moisture
→ temperature
→ density
→ structure

## Versioning

Any changed physical value creates a new physics record/version and must be traceable.
