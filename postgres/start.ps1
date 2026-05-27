# ==========================================
# PostgreSQL Background Startup Script
# Save as: start-postgres.ps1
# ==========================================

$PgBin = "C:\Program Files\PostgreSQL\18\bin\"
$PgData = "C:\Program Files\PostgreSQL\18\data"

$PostgresExe = Join-Path $PgBin "postgres.exe"

Write-Host ""
Write-Host "Starting PostgreSQL in background..."
Write-Host ""

Start-Process `
    -FilePath $PostgresExe `
    -ArgumentList "-D `"$PgData`"" `
    -WorkingDirectory $PgBin

Write-Host "PostgreSQL launch command issued."
Write-Host ""