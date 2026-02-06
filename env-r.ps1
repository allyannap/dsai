# Load R into PATH for this PowerShell session (this laptop - Windows).
# Run from repo root:  . .\env-r.ps1

$rBin = "C:\Users\amp388\AppData\Local\Programs\R\R-4.5.2\bin\x64"
$env:PATH = "$rBin;$env:PATH"
Write-Host "R and Rscript are available. Use Rscript for scripts; use Rscript --version (not R --version)."
