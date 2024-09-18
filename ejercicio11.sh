#!/bin/bash

read -p "INTRODUZCA EL PRIMER PARÁMETRO: " param1
read -p "INTRODUZCA EL SEGUNDO PARÁMETRO: " param2

#COMPROBAR QUE SE HAN INTRODUCIDO DOS PARÁMETROS
if [[ "$#" -ne 2 ]]; then
	 echo "EL NÚMERO DE PARÁMETROS ES INCORRECTO"
		exit 1

#PRIMER PARÁMETRO ES ARCHIVO ORDINARIO
elif [[ ! -f "$param1" ]]; then
	 echo "ERROR: EL PRIMER PARÁMETRO NO ES ARCHIVO ORDINARIO O NO EXISTE"
		exit 1

elif [[ -e "$param2" ]]; then
	echo "ERROR: YA EXISTE UN FICHERO CON EL MISMO NOMBRE"
		exit 1
fi

#REALIZAMOS LA COPIA
cp "$param1" "$param2"
echo "COPIA REALIZADA CON EXITO $PARAM1 COMO $PARAM2"
