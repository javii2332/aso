[int]$x = Read-Host "Introduzca su edad porfavor"

If ($x -lt 4) {
    Write-Host "El cliente puede entrar totalmente gratis"
}Elseif ($x -ge 4 -and $x -lt 18) {
    Write-Host "El cliente debe pagar 5€"
}Elseif ($x -ge 18) {
    Write-Host "El cliente debe pagar 10€"
}