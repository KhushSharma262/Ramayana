$ScriptPath = "C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\ANIMALS\02_BIOLOGY\BIOLOGY_V6_FINAL.ps1"

$tokens = $null
$errors = $null

[System.Management.Automation.Language.Parser]::ParseFile(
    $ScriptPath,
    [ref]$tokens,
    [ref]$errors
) | Out-Null

if ($errors.Count -eq 0) {
    Write-Host ""
    Write-Host "PARSER: PASSED" -ForegroundColor Green
    Write-Host ""
}
else {
    Write-Host ""
    Write-Host "PARSER: FAILED" -ForegroundColor Red
    Write-Host ""

    foreach ($e in $errors) {
        Write-Host "Line   : $($e.Extent.StartLineNumber)" -ForegroundColor Yellow
        Write-Host "Column : $($e.Extent.StartColumnNumber)" -ForegroundColor Yellow
        Write-Host "Error  : $($e.Message)" -ForegroundColor Red
        Write-Host "Text   : $($e.Extent.Text)"
        Write-Host ""
    }
}