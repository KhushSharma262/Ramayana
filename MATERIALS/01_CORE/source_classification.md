# SOURCE CLASSIFICATION

## PURPOSE

Defines how evidence is classified and prevents unsupported claims from
becoming material truth.

---

# 1. SOURCE CLASSES

## direct_canon

Explicitly stated or directly described by an approved canonical source.

## derived_canon

Reasonably derived from an explicit canonical description but not directly
stated.

## traditional_interpretation

Supported by established traditional practice, commentary, craft tradition,
or culturally transmitted interpretation.

## historical_reconstruction

Reconstructed from historical, archaeological, technological, or contextual
evidence.

## scientific_fact

Established by scientific evidence concerning physical, chemical, biological,
or material behavior.

## engineering_reference

Supported by engineering standards, technical references, manufacturing data,
conservation references, or comparable technical sources.

## visual_reconstruction

A production reconstruction of appearance based on available evidence.

## directorial_choice

Intentional creative decision.

## production_choice

Technical or logistical decision made to produce the series.

## unknown

Evidence does not establish the claim.

## uncertain

Evidence exists but does not support sufficient confidence.

---

# 2. CLAIM-LEVEL CLASSIFICATION

Classification applies to claims, not necessarily to entire materials.

One material may have:

identity → direct_canon
density → scientific_fact
historical preparation → historical_reconstruction
visual appearance → visual_reconstruction
cinematic treatment → directorial_choice

---

# 3. SOURCE AUTHORITY DEPENDS ON QUESTION

No source class is universally authoritative.

Canonical question:
canonical evidence has priority.

Physical question:
scientific/engineering evidence has priority.

Historical manufacturing question:
historical, archaeological, and craft evidence has priority.

Creative presentation:
directorial choice controls presentation but does not become physical fact.

---

# 4. NO AUTHORITY COLLAPSE

Do not treat:

AI images
paintings
modern engineering tables
traditional artwork
modern materials
modern manufacturing

as interchangeable evidence.

Each source only supports claims appropriate to its nature.

---

# 5. SOURCE RECORD

Important evidence should preserve:

- source
- author/tradition where applicable
- work/publication
- edition/version where relevant
- date where relevant
- page/section/verse/reference where available
- access date for online material
- claim supported
- source classification
- confidence
- limitations
- notes

---

# 6. PRIMARY / SECONDARY / TERTIARY

Where possible identify:

primary source
secondary analysis
tertiary summary

A summary must not silently replace a primary source when the primary source
is necessary.

---

# 7. SCIENTIFIC VALUE TRANSFER

A scientific value measured for one material does not automatically apply to
another.

Differences may include:

- species
- alloy
- composition
- moisture
- temperature
- manufacturing
- age
- density
- treatment

Transfer requires justification.

---

# 8. MODERN DATA VS HISTORICAL MATERIAL

Modern scientific information may explain physical principles.

It does not automatically establish:

- ancient composition
- ancient manufacturing
- ancient availability
- ancient appearance

These must remain separate claims.

---

# 9. INFERENCE REQUIREMENT

An inference must identify:

evidence
→ reasoning
→ conclusion
→ confidence
→ assumptions

Inference cannot be silently presented as direct fact.

---

# 10. HISTORICAL RECONSTRUCTION

A reconstruction must identify:

- known evidence
- assumptions
- reconstruction method
- alternative possibilities
- uncertainty
- reason for chosen interpretation

---

# 11. VISUAL REFERENCES

Visual references can support appearance reconstruction.

They do not automatically establish:

- composition
- density
- mechanical properties
- historical fact
- canonical fact

---

# 12. AI-GENERATED REFERENCES

AI-generated images are not evidence of:

- historical fact
- canonical fact
- material composition
- physical properties
- archaeological reality

They are production references unless independently supported.

---

# 13. CONFLICTS

When credible sources disagree:

1. preserve all relevant claims
2. identify sources
3. identify exact disagreement
4. classify the type of conflict
5. do not silently average
6. record production consequences
7. resolve explicitly

---

# 14. CONFLICT TYPES

canonical
historical
scientific
engineering
visual
interpretive
production

---

# 15. CONFLICT SEVERITY

minor:
little or no production impact

moderate:
affects visual or physical representation

major:
affects material identity or significant behavior

critical:
affects canonical identity, core physical truth, or major repeated assets

Critical conflicts require explicit resolution before locking affected truth.

---

# 16. CONFIDENCE

Allowed:

confirmed
strongly_supported
probable
plausible
uncertain
unknown

Confidence describes evidence quality.

It does not describe how convincing the generated image looks.

---

# 17. UNCERTAINTY PROPAGATION

If an upstream claim is uncertain, downstream claims derived from it inherit
appropriate uncertainty.

Uncertainty must never disappear merely because the information entered a
later production system.

---

# 18. UNKNOWN INFORMATION

Use:

unknown
not_specified
uncertain
requires_research
multiple_possibilities
requires_user_decision

Do not fill gaps with plausible-sounding inventions.

---

# 19. USER DECISION

When multiple defensible interpretations remain and the choice materially
affects production:

requires_user_decision

AI must present the alternatives and consequences rather than silently choosing.

---

# 20. PROHIBITED PRACTICES

Never:

- invent sources
- invent measurements
- fabricate historical certainty
- fabricate canonical certainty
- treat AI output as evidence
- silently resolve conflicts
- label reconstruction as direct canon
- label production convenience as physical truth
- use unsupported exact values
- erase uncertainty
- transfer physical values without checking conditions

---

# 21. TRACEABILITY

Important claims must be traceable:

SOURCE
→ EVIDENCE
→ CLAIM
→ CLASSIFICATION
→ MATERIAL
→ MATERIAL VERSION
→ PHYSICAL MODEL
→ ASSET
→ SHOT
→ EPISODE

---

# 22. FINAL EVIDENCE RULE

The system must always distinguish:

KNOWN
INFERRED
RECONSTRUCTED
SCIENTIFICALLY ESTABLISHED
VISUALLY RECONSTRUCTED
DIRECTORIAL
PRODUCTION
UNKNOWN

No category may silently masquerade as another.

---

## Legacy migration controls — Evidence classification and material selection

<!-- MIGRATION-CONTROL-ID: LEGACY_EVIDENCE_RULES -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- Distinguish direct source evidence, traditional interpretation, historical research, technical reconstruction, and directorial or production choice.
- For uncertain material identity, record alternatives, supporting evidence, the selected treatment, confidence, and rationale.
- Select materials using source evidence, intended function, character and environmental context, construction logic, physical plausibility, continuity, and production feasibility.
- Do not present a reconstruction or production choice as established canon or measured fact.
- Unknown identity, composition, historical use, and physical properties must remain explicitly unknown until supported.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.

---

## Legacy requirement: modern synthetic material policy

<!-- MIGRATION-CONTROL-ID: LEGACY_SYNTHETIC_MATERIAL_POLICY -->

- Do not use a modern synthetic material for a historically or culturally significant depiction unless the production's documented reconstruction policy explicitly justifies it.
- When the exact material is unknown, document the candidate alternatives, available evidence, selected reconstruction, confidence, and rationale.
- Production feasibility does not turn an unsupported material choice into historical fact.

**Verification status:** NOT_VERIFIED. Confirm against the legacy source and production evidence before sign-off.


## MATERIALS_ONE_PASS_EVIDENCE_DECISION_GATE

### Evidence classes
- DIRECT_SOURCE: evidence directly present in the applicable primary source or production
  artifact.
- TRADITIONAL_SOURCE: a traceable traditional account or established tradition, with its
  context and limitations stated.
- HISTORICAL_RESEARCH: traceable historical, archaeological, conservation, or scholarly
  research relevant to the material and period.
- TECHNICAL_RECONSTRUCTION: a physically reasoned reconstruction that is not represented
  as a directly attested historical fact.
- DIRECTORIAL_CHOICE: an explicitly chosen production interpretation.

### Decision requirements
For a material-specific historical claim, record the source, exact claim supported,
applicable period and context, limitations, confidence, and alternatives considered.
Do not treat a general source about a material as proof that the material was used for
a particular object, region, period, or character.

When evidence is insufficient:
1. keep the identity UNKNOWN or PROVISIONAL;
2. list plausible alternatives;
3. identify the evidence needed to distinguish them;
4. document the selected reconstruction, if production needs one;
5. label the choice as reconstruction or directorial choice;
6. do not silently promote the choice to historical fact.

A URL or bibliography entry alone is not proof that a source supports a claim.
