[float]$x = Read-Host "Introduzca la puntuación conseguida, por favor"

#CALCULOS DEL TOTAL
$ina = 2400*0.0
$ace = 2400*0.4
$mer = 2400*0.6

If ([math]::Round($x, 1) -eq 0.0) {
    Write-Host "SU NIVEL DE RENDIMIENTO ES INACEPTABLE Y LA CANTIDAD DE DINERO RECIBIDA SERÁ $ina €"
}ElseIf ([math]::Round($x, 1) -eq 0.4) {
    Write-Host "SU NIVEL DE RENDIMIENTO ES ACEPTABLE Y LA CANTIDAD DE DINERO RECIBIDA SERÁ $ace €"
}ElseIf ([math]::Round($x, 1) -ge 0.6) {
   $total = 2400 * $x  # Para puntuaciones mayores, calcular directamente
    Write-Host "SU NIVEL DE RENDIMIENTO ES MERITORIO Y LA CANTIDAD DE DINERO RECIBIDA SERÁ $total €"
}Else {
    Write-Host "La puntuación introducida no es válida. Por favor, introduzca 0.0, 0.4 o 0.6 o más."
}