# ECOLOGICAL SCENE OVERRIDE CONTROL

## Purpose

Allow deliberate production deviations without corrupting ecological truth.

## Override Types

CAMERA_SELECTION
CINEMATIC_COMPOSITION
TEMPORARY_NARRATIVE_EXCEPTION
SUPERNATURAL_EXCEPTION
HISTORICAL_RECONSTRUCTION_EXCEPTION

## Required Fields

override_id:
scene_id:
base_snapshot_id:
affected_claim_ids:
override_type:
reason:
visual_effect:
ecological_truth_preserved:
approval_state:
version:

## Hard Rule

An override changes the production representation.

It does NOT change the underlying ecological database.

## Example

Natural ecology:
animals distributed across a large habitat.

Production:
camera selects a local concentration for one shot.

Result:

BASE ECOLOGY = unchanged
SCENE OVERRIDE = recorded

## Forbidden

A scene override may not be copied back into:
- species distribution
- abundance
- habitat definition
- population density
- historical evidence
- canonical evidence

without independent research.
