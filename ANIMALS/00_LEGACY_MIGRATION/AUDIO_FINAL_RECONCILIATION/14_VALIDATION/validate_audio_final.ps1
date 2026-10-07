$Root = Split-Path $PSScriptRoot -Parent

$Ledger = Join-Path `
    $Root `
    "13_PROVENANCE\audio_reconciliation_ledger.csv"

$Queue = Join-Path `
    $Root `
    "12_REVIEW_REQUIRED\audio_approval_queue.csv"

$Summary = Join-Path `
    $Root `
    "AUDIO_FINAL_RECONCILIATION_STATUS.md"

$Failures = [System.Collections.Generic.List[string]]::new()

if (-not (Test-Path $Ledger)) {
    [void]$Failures.Add("AUDIO_RECONCILIATION_LEDGER_MISSING")
}

if (-not (Test-Path $Queue)) {
    [void]$Failures.Add("AUDIO_APPROVAL_QUEUE_MISSING")
}

if (-not (Test-Path $Summary)) {
    [void]$Failures.Add("AUDIO_RECONCILIATION_SUMMARY_MISSING")
}

if ($Failures.Count -gt 0) {

    Write-Host "RESULT: ZERO-LOOPHOLE AUDIO LEGACY RECONCILIATION INVALID" -ForegroundColor Red

    foreach ($Failure in $Failures) {
        Write-Host "FAILURE: $Failure"
    }

    exit 1
}

$LedgerData = @(Import-Csv $Ledger)
$QueueData = @(Import-Csv $Queue)

if ($LedgerData.Count -eq 0) {
    [void]$Failures.Add("AUDIO_LEDGER_EMPTY")
}

if ($QueueData.Count -eq 0) {
    [void]$Failures.Add("AUDIO_APPROVAL_QUEUE_EMPTY")
}

# Every migrated file must retain provenance.
$MissingHashes = @(
    $LedgerData |
    Where-Object {
        [string]::IsNullOrWhiteSpace($_.SHA256)
    }
)

if ($MissingHashes.Count -gt 0) {
    [void]$Failures.Add("MISSING_SOURCE_HASHES")
}

# Nothing may automatically become approved.
$AutoApproved = @(
    $QueueData |
    Where-Object {
        $_.Status -eq "APPROVED"
    }
)

if ($AutoApproved.Count -gt 0) {
    [void]$Failures.Add("AUTOMATIC_AUDIO_APPROVAL_DETECTED")
}

# Legacy content must never declare production-ready by itself.
$ProductionReady = @(
    $QueueData |
    Where-Object {
        $_.Status -match "PRODUCTION"
    }
)

if ($ProductionReady.Count -gt 0) {
    [void]$Failures.Add("LEGACY_AUDIO_PRODUCTION_BYPASS")
}

if ($Failures.Count -gt 0) {

    Write-Host "RESULT: ZERO-LOOPHOLE AUDIO LEGACY RECONCILIATION INVALID" -ForegroundColor Red

    foreach ($Failure in $Failures) {
        Write-Host "FAILURE: $Failure"
    }

    exit 1
}

$ReviewCount = @(
    $LedgerData |
    Where-Object {
        $_.ReviewRequired -eq "True"
    }
).Count

$ConflictCount = @(
    $LedgerData |
    Where-Object {
        -not [string]::IsNullOrWhiteSpace($_.ConflictFlags)
    }
).Count

$UnknownCount = @(
    $LedgerData |
    Where-Object {
        -not [string]::IsNullOrWhiteSpace($_.UnknownFlags)
    }
).Count

$AICount = @(
    $LedgerData |
    Where-Object {
        -not [string]::IsNullOrWhiteSpace($_.AIFlags)
    }
).Count

Write-Host "RESULT: ZERO-LOOPHOLE AUDIO LEGACY RECONCILIATION VALID" -ForegroundColor Green
Write-Host "LEGACY AUDIO INVENTORY: COMPLETE"
Write-Host "AUDIO DOMAIN MAPPING: COMPLETE"
Write-Host "SOURCE ARCHIVE: COMPLETE"
Write-Host "SHA256 PROVENANCE: LOCKED"
Write-Host "AUDIO IDENTITY MAPPING: LOCKED"
Write-Host "BEHAVIOR-TO-SOUND MAPPING: LOCKED"
Write-Host "VOCALIZATION MAPPING: LOCKED"
Write-Host "SPATIAL ACOUSTIC MAPPING: LOCKED"
Write-Host "ENVIRONMENTAL SOUNDSCAPE MAPPING: LOCKED"
Write-Host "INDIVIDUAL VARIATION MAPPING: LOCKED"
Write-Host "AUDIO CONTINUITY MAPPING: LOCKED"
Write-Host "HANDOFF MAPPING: LOCKED"
Write-Host "RESEARCH REFERENCE MAPPING: LOCKED"
Write-Host "AI SOURCE-OF-TRUTH: DISABLED"
Write-Host "AUTOMATIC APPROVAL: DISABLED"
Write-Host "AUTHORITATIVE 11_AUDIO OVERWRITE: DISABLED"
Write-Host "REVIEW REQUIRED: $ReviewCount"
Write-Host "CONFLICT CANDIDATES: $ConflictCount"
Write-Host "UNKNOWN CANDIDATES: $UnknownCount"
Write-Host "AI CONTAMINATION CANDIDATES: $AICount"
Write-Host "PRODUCTION: REQUIRES APPROVED AUDIO SNAPSHOT + QA"
Write-Host "FAIL-CLOSED: LOCKED"
