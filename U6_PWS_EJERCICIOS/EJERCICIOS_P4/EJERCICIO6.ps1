Write-Host "Bienvenido al juego de adivinar el numero"
$num = Get-Random -Maximum 100


$gan = Read-Host "Porfavor introduzca un numero para empezar a jugar"
$a = 1


do {
	if ($gan -lt $num) {
        Write-Host "El numero que se busca es mayor"
    } elseIf ($gan -gt $num) {
        Write-Host "El numero que se busca es menor"
    } 

    $gan = Read-Host "Porfavor introduzca otro número" #PEDIR NUM DESPUES DE MOSTRAR PISTA
    $a++ #INCREMENTAR INTENTOS 
}
until ($gan -eq $num)

Write-Host "EL NUMERO ES CORRECTO, FELICIDADES!!! $num"
Write-Host "INTENTOS TOTALES QUE HA NECESITADO = $a"


