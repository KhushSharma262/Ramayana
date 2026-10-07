# UNCERTAINTY PROPAGATION

## PURPOSE

Defines how uncertainty moves from ANIMAL_TRUTH into downstream systems.

## REQUIRED CHAIN

UNCERTAINTY
→ AFFECTED SYSTEM
→ RESTRICTION
→ ACKNOWLEDGEMENT
→ APPROVAL
→ RELEASE

## REQUIRED FIELDS

uncertainty_id
system_id
restriction
acknowledgement_status
acknowledged_by
date
approval_status

## ACKNOWLEDGEMENT VALUES

not_sent
sent
acknowledged
rejected
resolved

## RULE

A downstream system must not silently remove an upstream uncertainty.

## EXAMPLE

If species identity is uncertain:

BIOLOGY cannot silently choose species-specific anatomy.

VISUAL_IDENTITY cannot silently lock species-specific appearance.

AI_PRODUCTION cannot silently convert a candidate into a confirmed identity.

## RESOLUTION

When uncertainty is resolved:

update the uncertainty record
create a decision
review affected systems
update acknowledgements
relock affected entities
