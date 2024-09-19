#!/bin/bash


#COMPROBAR QUE SE HAN INTRODUCIDO DOS PARÁMETROS
if [[ "$#" -ne 2 ]]; then
	 echo "EL NÚMERO DE PARÁMETROS ES INCORRECTO"
		exit 1
fi

origen=$1
destino=$2

#PRIMER PARÁMETRO ES ARCHIVO ORDINARIO
if [[ ! -f "$origen" ]]; then
	 echo "ERROR: EL PRIMER PARÁMETRO NO ES ARCHIVO ORDINARIO O NO EXISTE"
		exit 1
fi

if [[ -e "$destino" ]]; then
	echo "ERROR: YA EXISTE UN FICHERO CON EL MISMO NOMBRE"
		exit 1
fi

#REALIZAMOS LA COPIA
cp "$origen" "$destino"
echo "COPIA REALIZADA CON EXITO $origen COMO $destino"
