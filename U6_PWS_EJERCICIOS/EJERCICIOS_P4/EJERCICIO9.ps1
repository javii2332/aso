Write-Host "Bienvenido al juego de adivinar la contraseña"
[string]$passwd = "contraseña"


$gan = Read-Host "Porfavor introduzca la contraseña correcta"
$a = 1


do {
	if ($gan -eq $passwd) {
        Write-Host "LA CONTRASEÑA ES CORRECTA"
    } else {
        Write-Host "LA CONTRASEÑA NO ES CORRECTA"
        $gan = Read-Host "Porfavor vuelva a probar la contraseña" #PEDIR NUM DESPUES DE MOSTRAR PISTA
        $a++ #INCREMENTAR INTENTOS 
    } 
}
until ($passwd -eq $gan)

Write-Host "LA CONTRASEÑA ES CORRECTA, PUEDE ACCEDER!!!"
Write-Host "INTENTOS TOTALES QUE HA NECESITADO = $a"