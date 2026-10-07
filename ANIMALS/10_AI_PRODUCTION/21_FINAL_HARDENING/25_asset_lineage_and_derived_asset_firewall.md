# ASSET LINEAGE AND DERIVED ASSET FIREWALL

Every derived asset must retain lineage.

Required:

parent_asset_id
derived_asset_id
operation
tool
tool_version
operator_or_process
timestamp
reason
validation_status

Examples:

IMAGE -> UPSCALE -> IMAGE
IMAGE -> INPAINT -> IMAGE
VIDEO -> INTERPOLATE -> VIDEO
VIDEO -> EDIT -> VIDEO
IMAGE -> COMPOSITE -> IMAGE
VIDEO -> GRADE -> VIDEO

Derived assets cannot lose the identity of their source state.

Broken lineage = BLOCKED.
