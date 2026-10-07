# ECOLOGICAL TEMPORAL CONDITION MATRIX

## Purpose

Ecological plausibility can depend on multiple simultaneous temporal conditions.

## Required Dimensions

date_or_period:
season:
time_of_day:
weather:
recent_weather:
water_state:
vegetation_state:
resource_state:
disturbance_state:

## Rule

Do not validate season in isolation when time/weather/recent events materially affect the claim.

## Example

A species may be:

GEOGRAPHICALLY_PRESENT

but not:

VISIBLE_AT_THIS_TIME
ACTIVE_IN_THIS_CONDITION
AVAILABLE_IN_THIS_MICROHABITAT

## State Separation

PRESENT
≠
VISIBLE
≠
ACTIVE
≠
LOCALLY_CONCENTRATED

## Production

The applicable combination must be recorded where relevant.
