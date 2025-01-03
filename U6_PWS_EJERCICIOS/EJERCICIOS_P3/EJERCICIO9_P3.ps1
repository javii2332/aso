[int]$x = Read-Host "Introduzca su renta anual porfavor"

If ($x -lt 10000) {
    Write-Host "Le corresponde un tipo impositivo del 5%"
}Elseif ($x -ge 10000 -and $x -lt 20000) {
    Write-Host "Le corresponde un tipo impositivo del 15%"
}Elseif ($x -ge 20000 -and $x -lt 35000) {
    Write-Host "Le corresponde un tipo impositivo del 20%"
}Elseif ($x -ge 35000 -and $x -lt 60000) {
    Write-Host "Le corresponde un tipo impositivo del 30%"
}Elseif ($x -gt 60000) {
    Write-Host "Le corresponde un tipo impositivo del 45%"
}