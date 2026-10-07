# EVENT REPLAY FIREWALL

An event must not be applied twice.

Event application requires:

event_id
source_snapshot_id
resulting_snapshot_id
application_id

Each application is unique.

Rollback/reprocessing must not duplicate a previously applied event.

If:

EVENT_ID + SOURCE_SNAPSHOT_ID

has already been applied:

REPLAY = BLOCKED

unless an explicit new application context is approved.
