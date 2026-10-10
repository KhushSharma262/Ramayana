# MATERIALS Content Migration Audit

Generated: 2026-10-09 11:03:13
Legacy root: C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\_BACKUPS\OLD_MATERIALS_RECOVERY_20261009_105957\MATERIALS
Current root: C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\MATERIALS

## Inventory
- Legacy files examined: 188
- Current files examined: 204
- Legacy empty files: 181
- Current empty files: 49
- Current non-empty files: 155

## Content comparison
- Exact content matches by SHA-256: 0
- Strong similarity candidates (25% or higher): 0
- Partial similarity candidates (8% to under 25%): 7
- No strong similarity candidate: 0

## Important limitation
Similarity is a lexical heuristic, not a semantic or canonical decision. A high score does not prove that the old content was migrated correctly; a low score does not prove the content was lost. Terms absent from current documents may be meaningful, but may also be generic, obsolete, or expressed differently.

## Outputs
- OLD_TO_NEW_CONTENT_MAP.csv: each legacy file and its three closest current candidates.
- LEGACY_DOCUMENT_INVENTORY.csv: legacy sizes, headings and hashes.
- CURRENT_DOCUMENT_INVENTORY.csv: current files, headings and exact legacy hash matches.
- POTENTIALLY_UNREPRESENTED_TERMS.csv: legacy terms not found in any current document.

## Safety
No current MATERIALS files were modified. No legacy files were moved or deleted. No migration was automatically approved. This audit is complete as a comparison pass; content review is still required before declaring the MATERIALS system canonically complete.