Write-Host "****** CALCULADORA ********"
Write-Host "
    1.Sumar
    2.Restar
    3.Multiplicar
    4.Dividir"
Write-Host "¿Que desea hacer? Elige una opcion"

[Int]$opcion = Read-Host "OPCION ELEGIDA"

switch ($opcion) {
        1 {
		#SUMAR
        [Int]$num1 = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$num2 = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
        [Int]$suma = $num1 + $num2
		Write-Host "EL RESULTADO DE LA SUMA ES $suma"
	    }
	    2 {
		#RESTAR
        [Int]$num1 = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$num2 = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
		[Int]$resta = $num1 - $num2
		Write-Host "EL RESULTADO DE LA RESTA ES $resta"
	    }
	    3 {
		#MULTIPLICAR
		[Int]$num1 = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$num2 = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
        [Int]$multi = $num1 * $num2
		Write-Host "EL RESULTADO DE LA MULTIPLICACION ES $multi"
	    }
        4 {
		#DIVIDIR
        [Int]$num1 = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$num2 = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
		[Int]$division = $num1 / $num2
		Write-Host "EL RESULTADO DE LA DIVISION ES $division"
	    }
}