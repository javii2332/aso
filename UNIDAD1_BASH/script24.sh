#!/bin/bash

directorio=$1

if [[ $# -ne 1 ]]; then
	echo "PORFAVOR INTRODUZCA UN SOLO DIRECTORIO Y QUE ESTE SEA VÁLIDO"
		exit 1
elif [[ ! -d $directorio ]]; then
	echo "EL PARÁMETRO INTRODUCIDO NO ES UN DIRECTORIO O NO EXISTE"
		exit 1
fi
contador=0
contador2=0
contador3=0
for i in "$directorio"/*; do
if [[ -f $i ]]; then
	echo "$i ES UN ARCHIVO "
	((contador++))
elif [[ -d $i ]]; then
	echo " $i ES UN DIRECTORIO"
	((contador2++))
else echo "EL CONTENIDO NO CORRESPONDE CON ARCHIVOS NI DIRECTORIOS"
	((contador3++))
	fi
done

echo ""
echo "NUMERO TOTAL DE ARCHIVOS: $contador "
echo ""
echo "NUMERO TOTAL DE DIRECTORIOS: $contador2"
echo ""
echo "NUMERO TOTAL DE OTROS: $contador3"
