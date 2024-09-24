#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "PORFAVOR PROPORCIONA UN NÚMERO CORRECTO"
	exit 1
fi

num=$1
	echo "TABLA DE MULTIPLICAR DEL: "
for (( i=1; i<=10; i=i+1 )); do
	resultado=$((i * num))
	echo "$num x $i = $resultado"
done
