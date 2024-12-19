[double]$num_h = Read-Host "Escribe el numero de horas trabajadas"
[double]$cost_h = Read-Host "Escribe el coste de una hora tuya de trabajo"
$total = $num_h * $cost_h 

Write-Host "TOTAL A COBRAR" $total