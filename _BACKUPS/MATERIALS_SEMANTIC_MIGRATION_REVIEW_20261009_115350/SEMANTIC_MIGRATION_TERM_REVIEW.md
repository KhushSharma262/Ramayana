# Semantic Migration Term Review

Generated: 2026-10-09 11:53:51

## Limitations

This audit checks a limited set of terms in paired legacy and current control documents. A missing term is a review flag, not automatic proof that a rule was lost; equivalent wording may exist elsewhere. A present term does not prove the original rule was preserved correctly.

## Summary

- Terms checked: 60
- Possible migration gaps: 10
- Missing legacy sources: 0
- Missing current targets: 0

## Possible Migration Gaps

| Area | Term | Legacy occurrences | Current occurrences |
|---|---|---:|---:|
| Material identity locks | base material | 1 | 0 |
| Identity and changing states | dry | 1 | 0 |
| Identity and changing states | persistence | 1 | 0 |
| Material selection | function | 1 | 0 |
| Material selection | environment | 1 | 0 |
| Material selection | physical plausibility | 1 | 0 |
| Material selection | continuity | 1 | 0 |
| Material selection | feasibility | 1 | 0 |
| Overall material system | domain boundaries | 1 | 0 |
| Overall material system | generic shader | 1 | 0 |

## Pair-by-Pair Review

### Scope and domain boundaries

- Legacy: _BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS\README.md
- Current: MATERIALS\README.md

| Term | Legacy | Current | Status |
|---|---:|---:|---|
| material identity | 1 | 9 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| surface behavior | 1 | 4 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| out of scope | 0 | 0 | TERM_NOT_IN_LEGACY_SOURCE |
| domain | 0 | 6 | TERM_NOT_IN_LEGACY_SOURCE |
| lighting | 1 | 6 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| costume | 2 | 5 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| props | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |

### Evidence classification

- Legacy: _BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS\CORE\material_evidence_rules.md
- Current: MATERIALS\01_CORE\source_classification.md

| Term | Legacy | Current | Status |
|---|---:|---:|---|
| DIRECT_SOURCE | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| TRADITIONAL_SOURCE | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| HISTORICAL_RESEARCH | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| TECHNICAL_RECONSTRUCTION | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| DIRECTORIAL_CHOICE | 1 | 3 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| confidence | 1 | 8 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| rationale | 0 | 2 | TERM_NOT_IN_LEGACY_SOURCE |
| alternatives | 1 | 5 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |

### Material identity locks

- Legacy: _BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS\CORE\material_lock_system.md
- Current: MATERIALS\01_CORE\material_identity.md

| Term | Legacy | Current | Status |
|---|---:|---:|---|
| base material | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| category | 1 | 3 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| physical identity | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| texture | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| behavior | 1 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| construction | 1 | 3 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| identity | 2 | 30 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| substitution | 0 | 0 | TERM_NOT_IN_LEGACY_SOURCE |

### Identity and changing states

- Legacy: _BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS\CORE\material_state_system.md
- Current: MATERIALS\06_STATES\material_state_model.md

| Term | Legacy | Current | Status |
|---|---:|---:|---|
| identity | 2 | 5 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| state | 6 | 7 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| dust | 2 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| moisture | 0 | 1 | TERM_NOT_IN_LEGACY_SOURCE |
| weathering | 0 | 0 | TERM_NOT_IN_LEGACY_SOURCE |
| damage | 4 | 2 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| wet | 2 | 1 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| dry | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| persistence | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| cause | 6 | 3 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |

### Material selection

- Legacy: _BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS\CORE\material_selection_rules.md
- Current: MATERIALS\02_MATERIAL_DATABASE\03_source_and_evidence_rules.md

| Term | Legacy | Current | Status |
|---|---:|---:|---|
| evidence | 2 | 8 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| history | 0 | 0 | TERM_NOT_IN_LEGACY_SOURCE |
| tradition | 1 | 2 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| function | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| environment | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| construction | 3 | 7 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| physical plausibility | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| continuity | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| feasibility | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| reconstruction | 2 | 7 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |

### Material QA

- Legacy: _BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS\CORE\material_qa.md
- Current: MATERIALS\10_CONTINUITY_QA\realism_qa.md

| Term | Legacy | Current | Status |
|---|---:|---:|---|
| identity | 1 | 11 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| physical response | 0 | 3 | TERM_NOT_IN_LEGACY_SOURCE |
| scale | 4 | 6 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| state | 3 | 7 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| continuity | 1 | 6 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| AI artifacts | 0 | 2 | TERM_NOT_IN_LEGACY_SOURCE |
| renderer | 0 | 1 | TERM_NOT_IN_LEGACY_SOURCE |
| shader | 1 | 3 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| subsurface | 0 | 3 | TERM_NOT_IN_LEGACY_SOURCE |
| transmission | 1 | 5 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |

### Overall material system

- Legacy: _BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS\CORE\material_system.md
- Current: MATERIALS\01_CORE\material_master.md

| Term | Legacy | Current | Status |
|---|---:|---:|---|
| scope | 0 | 5 | TERM_NOT_IN_LEGACY_SOURCE |
| domain boundaries | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| light | 5 | 3 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| generic shader | 1 | 0 | POSSIBLE_MIGRATION_GAP |
| material identity | 3 | 5 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |
| physical behavior | 0 | 1 | TERM_NOT_IN_LEGACY_SOURCE |
| continuity | 1 | 6 | TERM_PRESENT_REQUIRES_CONTEXT_REVIEW |

