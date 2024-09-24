#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "PORFAVOR PROPORCIONA UN NÚMERO CORRECTO"
	exit 1
fi

suma=0

for (( i=1; i <=1000; i++ )); do
	suma=$((i + suma))
done

echo "EL RESULTADO ES $suma"
