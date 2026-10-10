# ASSET_REGISTRY architecture

Generated: 2026-10-09 12:42:02

## Design principles
- Global asset identity is stored once in CORE/asset_master.csv.
- Episode usage is stored separately in USAGE/asset_episode_usage.csv.
- Bālakāṇḍ event intake starts under EPISODE_01/BAAL_KAND.
- Complex assets use component relationships and assembly records.
- Physical material definitions remain in MATERIALS; asset assignments link to them.
- Source claims remain unverified until exact references are checked.
- Do not reuse an ID for a different asset or create duplicate IDs for repeated appearances.
- Do not mark assets approved merely because a template or candidate record exists.
- New asset categories can be added to ASSET_TYPES/asset_type_dictionary.csv.

## Folder responsibilities
- CORE: master registry and system rules
- IDENTITY: identity locks and canonical identifiers
- ASSET_TYPES: category/type dictionary and schemas
- CHARACTERS, ANIMALS, COSTUMES, PROPS, ARCHITECTURE, LOCATIONS: category-specific documentation
- VEHICLES_TRANSPORT, RITUALS_CEREMONIES, RAW_MATERIALS, SETS_ASSEMBLIES, CROWD_GROUPS: extended physical asset families
- MATERIALS_TEXTURES: links to the separate MATERIALS system
- EPISODE_01/BAAL_KAND: episode-scoped intake and event usage
- USAGE, RELATIONSHIPS, DEPENDENCIES: where assets appear and how they connect
- REFERENCES, PROVENANCE, AI_PROVENANCE: sources and generation history
- STATUS, APPROVAL, CHANGE_CONTROL, VERSIONING, CONTINUITY: governance
- FILE_METADATA, STORAGE, ARCHIVE: file tracking and lifecycle
- RENDER, CAMERA_LIGHTING, AUDIO, PERFORMANCE, VFX_COMPOSITING: production implementation
- QA, REPORTS, INDEX: validation and navigation
- LEGAL: rights, permissions and provenance review

## Current completion boundary
This command creates architecture, schemas and a preliminary Bālakāṇḍ event index. It does not create verified canon, approved designs, final asset records, or completed renderer tests.
