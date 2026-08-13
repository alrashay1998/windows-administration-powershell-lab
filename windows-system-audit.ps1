Write-Host "===================================="
Write-Host "       WINDOWS SYSTEM AUDIT"
Write-Host "===================================="
Write-Host ""

Write-Host "=== SYSTEM INFORMATION ==="

Get-ComputerInfo |
Select-Object CsName, WindowsProductName, WindowsVersion, OsArchitecture

Write-Host ""

Write-Host "=== CURRENT USER ==="

whoami

Write-Host ""

Write-Host "=== NETWORK CONFIGURATION ==="

Get-NetIPConfiguration

Write-Host ""

Write-Host "=== LOCAL USERS ==="

Get-LocalUser |
Select-Object Name, Enabled, LastLogon

Write-Host ""


Write-Host "=== TOP PROCESSES BY MEMORY ==="

Get-Process |
Sort-Object WorkingSet -Descending |
Select-Object -First 10 Name, Id, CPU, WorkingSet

Write-Host ""

Write-Host "=== RUNNING SERVICES ==="

Get-Service |
Where-Object Status -eq "Running" |
Select-Object Name, DisplayName, Status

Write-Host ""






