[int]$num1 = Read-Host "Escribe un numero porfavor"
[int]$num2 = Read-Host "Escribe otro numero porfavor"

$suma= $num1 + $num2
$resta= $num1 - $num2
$multiplicacion= $num1 * $num2
$division= $num1 / $num2
$resto= $num1 % $num2

Write-Host "RESULTADO DE LA SUMA =" $suma
Write-Host "RESULTADO DE LA RESTA =" $resta 
Write-Host "RESULTADO DE LA MULTIPLICACION =" $multiplicacion 
Write-Host "RESULTADO DE LA DIVISION =" $division
Write-Host "RESULTADO DEL RESTO =" $resto 