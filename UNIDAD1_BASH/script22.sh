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
for i in "$directorio"/*; do
if [[ -f $i ]]; then
	echo "$i ES UN ARCHIVO "
elif [[ -d $i ]]; then
	echo " $i ES UN DIRECTORIO"
else echo "EL CONTENIDO NO CORRESPONDE CON ARCHIVOS NI DIRECTORIOS"
	fi
	((contador++))
done

echo ""
echo "NUMERO TOTAL DE ENTRADAS PROCESADAS: $contador "
