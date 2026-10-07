# RECORD VERSIONING

## PURPOSE

Prevents future research from silently changing the historical basis of
an already approved production decision.

## REQUIRED

entity_id
version
previous_version
change_id
decision_id
date
status
summary

## VERSION FORMAT

Recommended:

v1
v2
v3

## RULE

Every material identity change creates a new version.

## SNAPSHOT

An approved production decision should identify the exact research version
used at the time of approval.

## IMPORTANT

Current truth and historical production truth may differ.

The project must preserve both.

## ROLLBACK

Returning to an earlier version requires a new decision.

Do not simply erase the current version.

## DOWNSTREAM

Downstream systems must record which identity version they consumed.
