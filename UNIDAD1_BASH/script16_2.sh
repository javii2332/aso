#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "PORFAVOR PROPORCIONA UN NÚMERO CORRECTO"
	exit 1
fi

suma=0
i=0
while [[ $i -ne 1000 ]]; do
	((i++))
	suma=$(( i + suma ))
done

echo "EL RESULTADO ES $suma"
