[Int]$edad = Read-Host "PORFAVOR INTRODUZCA SU EDAD"

if ($edad -lt 18) {
        Write-Host "ES MENOR DE EDAD, AUN DEBE CRECER UN POCO MAS"
}ElseIf ($edad -ge 18) {
        Write-Host "ENHORABUENA ES MAYOR DE EDAD"
}