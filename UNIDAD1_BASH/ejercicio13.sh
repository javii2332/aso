#!/bin/bash

echo "1)AÑADIR UN REGISTRO"
echo "2)BUSCAR ENTRADAS POR NOMBRE DIRECCIÓN O TELÉFONO"
echo "3)VISUALIZAR TODO EL ARCHIVO"
echo "4)ORDENAR REGISTROS ALFABÉTICAMENTE"
echo "5)BORRAR EL ARCHIVO"

read -p "ELIJA UNA DE LAS OPCIONES: " opcion

case $opcion in
		1)
	read -p "INTRODUZCA NOMBRE, DIRECCION Y TELEFONO: " datos
	echo $datos >> lista.txt
	echo "LOS DATOS HAN SIDO INTRODUCIDOS CORRECTAMENTE"
exit 0 ;;
		2)
	read -p "INTRODUZCA NOMBRE, DIRECCION O TELEFONO PARA PODER BUSCAR LA ENTRADA DESEADA: " entrada
	cat lista.txt | grep $entrada
exit 0 ;;
		3)
	cat lista.txt
exit 0 ;;
		4)
	sort lista.txt
exit 0 ;;
		5)
	rm lista.txt
exit 0 ;;
	*)
exit 1 ;;

esac
