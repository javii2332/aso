#!/bin/bash

directorio=$1

if [[ $# -ne 1 ]]; then
	echo "PORFAVOR INTRODUZCA UN SOLO DIRECTORIO Y QUE ESTE SEA VÁLIDO"
	exit 1
fi

if [[ ! -d $directorio ]]; then
	echo "PORFAVOR INTRODUZCA UN DIRECTORIO VÁLIDO"
	exit 1
fi

contador=0
for contenido in "$directorio"/*; do
if [[ -f $contenido ]]; then
	echo "EL CONTENIDO MOSTRADO ES UN FICHERO"
elif [[ -d $contenido ]]; then
	echo "EL CONTENIDO MOSTRADO ES UN DIRECTORIO"
else
	echo "EL CONTENIDO MOSTRADO ES OTRO"
fi
((contador++))
done

echo "EL NÚMERO DE PARÁMETROS INTRODUCIDO ES $contador "
