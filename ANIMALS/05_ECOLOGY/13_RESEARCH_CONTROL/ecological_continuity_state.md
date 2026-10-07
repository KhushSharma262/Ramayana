# ECOLOGICAL CONTINUITY STATE

## Purpose

The environment must persist through time and across scenes.

## Continuity Variables

location:
season:
date_or_period:
time_of_day:
weather:
water_state:
vegetation_state:
soil_state:
animal_availability:
human_activity:
disturbance_state:
recent_events:
resource_state:

## Rule

A scene begins with the previous approved ecological state unless a documented change occurs.

## Change Types

NATURAL_CHANGE
SEASONAL_CHANGE
WEATHER_CHANGE
HYDROLOGICAL_CHANGE
DISTURBANCE
HUMAN_CHANGE
HISTORICAL_CHANGE
PRODUCTION_CHANGE

## Hard Rule

An environment cannot silently reset between scenes.

## Example

If a previous scene establishes:

HEAVY_RAIN
→ FLOODED_RIVERBANK

the next scene cannot silently show:

DRY_RIVERBANK

without a temporal/environmental explanation.

## Snapshot

Every production scene ecology should reference an approved ecological snapshot.
