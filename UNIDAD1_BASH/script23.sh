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
elif [[ -h $i ]]; then
	echo " $i ES UN ENLACE SIMBÓLICO"
elif [[ -b $i ]]; then
	echo " $i ES UN ARCHIVO ESPECIAL DE BLOQUE"
elif [[ -c $i ]]; then
	echo " $i ES UN ARCHIVO ESPECIAL DE CARÁCTER"
	fi
	((contador++))
done

echo ""
echo "NUMERO TOTAL DE ENTRADAS PROCESADAS: $contador "
