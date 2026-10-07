# SNAPSHOT FINGERPRINT INTEGRITY

Every approved continuity snapshot receives an integrity fingerprint.

The fingerprint is derived from its canonical references:

entity identities
domain snapshot IDs
timeline
branch
temporal position
event references
dependency references
version

If the stored snapshot content changes without a new version:

FINGERPRINT MISMATCH = BLOCKED

A fingerprint detects accidental mutation.

It does not itself establish truth.
