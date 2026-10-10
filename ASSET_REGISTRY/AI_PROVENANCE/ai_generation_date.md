<!-- AI_PROVENANCE_STANDARD_V1 -->

# AI Generation Date

Field: generation_date

Record the actual date and, when available, time when the asset output was generated.
Preferred timestamp format: ISO 8601 with timezone, for example 2026-10-09T14:30:00+05:30.

Evidence: generation log, platform history, file metadata, or dated production record.
Do not substitute file modification time for generation time without labeling it as an estimate.
If unavailable, use NOT_CAPTURED in the registry.



<!-- MANAGED_AI_PROVENANCE_STANDARD_V2 -->

# Generation Date and Time

## Canonical fields
generation_date, generation_timezone, generation_date_evidence, generation_date_status.

## Accepted evidence
Original platform history, job logs, API response, timestamped production log, or file metadata when explicitly labeled as a proxy.

## Rules
1. Preserve timezone and original timestamp precision.
2. Use ISO 8601 when the actual timestamp is known.
3. Do not infer generation time from a file's modified time without recording that limitation.
4. Creation, download, edit, export, and upload dates are different events.
5. If only a date is known, do not fabricate a time.
6. If unknown, use NOT_CAPTURED and state what was checked.
7. Do not claim an asset was generated on a particular date solely because that is when it was first seen in the project.
8. If conflicting dates exist, preserve both pieces of evidence and set CONFLICT_FOUND until reviewed.

## Verification
Record the evidence location, verification method, and reviewer when available. A timestamp proves only what the underlying system actually timestamps.

