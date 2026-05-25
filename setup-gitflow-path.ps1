# Dodaj git-flow (AVH) do PATH w biezacej sesji PowerShell
$bin = Join-Path $env:USERPROFILE ".local\bin"
if (Test-Path $bin) {
    $env:Path = "$bin;C:\Program Files\Git\usr\bin;C:\Program Files\Git\cmd;" + $env:Path
    git flow version
} else {
    Write-Error "Brak $bin - zainstaluj gitflow-avh (skrypt w RAPORT-LABORATORIUM.md)"
}
