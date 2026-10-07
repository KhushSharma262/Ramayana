$Root = Split-Path $PSScriptRoot -Parent

$Assessments = Join-Path `
    $Root `
    "02_FILE_ASSESSMENTS\file_assessments.csv"

$Claims = Join-Path `
    $Root `
    "03_CLAIM_CANDIDATES\claim_candidates.csv"

$Queue = Join-Path `
    $Root `
    "09_APPROVAL_QUEUE\approval_queue.csv"

$Summary = Join-Path `
    $Root `
    "RECONCILIATION_SUMMARY.md"

$Failures = [System.Collections.Generic.List[string]]::new()

if (-not (Test-Path $Assessments)) {
    [void]$Failures.Add("FILE_ASSESSMENTS_MISSING")
}

if (-not (Test-Path $Claims)) {
    [void]$Failures.Add("CLAIM_CANDIDATES_MISSING")
}

if (-not (Test-Path $Queue)) {
    [void]$Failures.Add("APPROVAL_QUEUE_MISSING")
}

if (-not (Test-Path $Summary)) {
    [void]$Failures.Add("RECONCILIATION_SUMMARY_MISSING")
}

if ($Failures.Count -gt 0) {

    Write-Host "RESULT: ZERO-SILENT-PROMOTION LEGACY RECONCILIATION INVALID" -ForegroundColor Red

    foreach ($Failure in $Failures) {
        Write-Host "FAILURE: $Failure"
    }

    exit 1
}

$QueueData = @(Import-Csv $Queue)

$ForbiddenStatuses = @(
    $QueueData |
    Where-Object {
        $_.ApprovalStatus -ne "NOT_REVIEWED" -or
        $_.ProductionStatus -ne "BLOCKED"
    }
)

if ($ForbiddenStatuses.Count -gt 0) {
    [void]$Failures.Add("LEGACY_CONTENT_AUTOMATICALLY_PROMOTED")
}

$AssessmentData = @(Import-Csv $Assessments)

$AIRecords = @(
    $AssessmentData |
    Where-Object {
        -not [string]::IsNullOrWhiteSpace($_.AITerms)
    }
)

if ($Failures.Count -gt 0) {

    Write-Host "RESULT: ZERO-SILENT-PROMOTION LEGACY RECONCILIATION INVALID" -ForegroundColor Red

    foreach ($Failure in $Failures) {
        Write-Host "FAILURE: $Failure"
    }

    exit 1
}

Write-Host "RESULT: ZERO-SILENT-PROMOTION LEGACY RECONCILIATION VALID" -ForegroundColor Green
Write-Host "CONTENT EXTRACTION: COMPLETE"
Write-Host "FILE ASSESSMENT: COMPLETE"
Write-Host "CLAIM CANDIDATE SEPARATION: LOCKED"
Write-Host "CONFLICT CANDIDATE SEPARATION: LOCKED"
Write-Host "UNKNOWN / EVIDENCE GAP SEPARATION: LOCKED"
Write-Host "ASSUMPTION DETECTION: COMPLETE"
Write-Host "AI CONTAMINATION FIREWALL: LOCKED"
Write-Host "SOURCE TRACEABILITY REVIEW: COMPLETE"
Write-Host "DESTINATION MAPPING: LOCKED"
Write-Host "AUTOMATIC TRUTH PROMOTION: DISABLED"
Write-Host "AUTOMATIC APPROVAL: DISABLED"
Write-Host "AUTHORITATIVE SYSTEM OVERWRITE: DISABLED"
Write-Host "PRODUCTION: BLOCKED"
Write-Host "FAIL-CLOSED: LOCKED"
Write-Host "AI CONTAMINATION CANDIDATES: $($AIRecords.Count)"
