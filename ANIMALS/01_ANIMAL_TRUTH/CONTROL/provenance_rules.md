# PROVENANCE RULES

## PURPOSE

Defines how every important claim is traced.

## REQUIRED CHAIN

SOURCE
→ SOURCE_MENTION
→ EVIDENCE
→ INTERPRETATION
→ DECISION
→ ENTITY
→ DOWNSTREAM USE

## REQUIRED IDENTIFIERS

source_id
source_mention_id
evidence_id
decision_id
entity_id

## FIELD-LEVEL PROVENANCE

A single citation must not be assumed to support every field in a record.

Major factual fields should identify their supporting evidence.

## FACT CLASSES

direct_canon
derived_canon
traditional_interpretation
historical_reconstruction
zoological_fact
scientific_evidence
visual_reconstruction
directorial_choice
production_choice
unknown
uncertain

## SOURCE AUTHORITY

Every source should have an authority classification appropriate to the project.

Examples:

primary_canonical
traditional_commentary
scholarly_secondary
historical
scientific
zoological
archaeological
iconographic
production_reference
unverified_lead

## UNVERIFIED LEADS

A lead may be useful for research.

It is not evidence until verified.

## PROVENANCE FAILURE

If a major claim has no identifiable provenance:

status = NOT_VERIFIED

Do not promote it to approved fact.

## PROVENANCE PRESERVATION

Never remove old provenance when updating a conclusion.

Add new evidence and record the change.

## SOURCE VERSION

Where a source can change over time, record:

version
publication date
access date
edition
archive/reference information where applicable

## AI SOURCES

AI-generated answers may assist discovery.

They are not automatically authoritative evidence.
