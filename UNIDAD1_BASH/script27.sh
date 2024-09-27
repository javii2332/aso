#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "PORFAVOR INTRODUZCA UN FICHERO"
	exit 1
fi

function existe() {
	if [[ -e $1 ]]; then
		chmod 700 $1
		echo "ES VÁLIDO Y LOS PERMISOS DEL ARCHIVO $1 HAN SIDO MODIFICADOS"
	else
		echo "EL FICHERO NO ES VÁLIDO"
	fi
}

existe "$1"
