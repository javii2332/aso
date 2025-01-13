Function Sumar ($x, $y) {
	$sumar = $x + $y
	return $sumar
}

Function Restar ($x, $y) {
	$restar = $x - $y
	return $restar
}

Function Multiplicar ($x, $y) {
	$multiplicar = $x * $y
	return $multiplicar
}

Function Dividir ($x, $y) {
	$dividir = $x / $y
	return $dividir
}



Write-Host "****** CALCULADORA ********"
Write-Host "
    1.Sumar
    2.Restar
    3.Multiplicar
    4.Dividir
    5.Salir"
Write-Host "¿Que desea hacer? Elige una opcion"

[Int]$opcion = Read-Host "OPCION ELEGIDA"

switch ($opcion) {
    1 {
    #SUMAR
        [Int]$x = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$y = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
        $resultado = Sumar $x $y
        echo "EL RESULTADO OBTENIDO DE LA SUMA ES $resultado"
    }
    2 {
    #RESTAR
        [Int]$x = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$y = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
        $resultado = Restar $x $y
        echo "EL RESULTADO OBTENIDO DE LA RESTA ES $resultado"
    }
    3 {
    #MULTIPLICAR
        [Int]$x = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$y = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
        $resultado = Multiplicar $x $y
        echo "EL RESULTADO OBTENIDO DE LA MULTIPLICACION ES $resultado"
    }
    4 {
    #DIVIDIR
        [Int]$x = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
        [Int]$y = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"
        $resultado = Dividir $x $y
        echo "EL RESULTADO OBTENIDO DE LA DIVISION ES $resultado"
    }
    5 {
    #SALIR
    echo "HASTA PRONTO, ESPERO QUE LE HAYA GUSTADO EL MENÚ"
    }
}

