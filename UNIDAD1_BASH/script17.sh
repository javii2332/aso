#!/bin/bash

suma=0


read -p "INTRODUCE UN NÚMERO PORFAVOR: " numero
if [[ $numero -eq 0 ]]; then
	echo "EL RESULTADO ES $suma"
else

if [[ $numero -ne 0 ]]; then
	suma=$(( numero + suma ))
	echo "$suma"
fi
