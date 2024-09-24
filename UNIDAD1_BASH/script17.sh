#!/bin/bash

suma=0


read -p "INTRODUCE UN NÚMERO PORFAVOR: " numero
while [[ $numero -ne 0 ]]; do
	suma=$(( numero + suma ))
	echo "$suma"
read -p "INTRODUCE UN NÚMERO PORFAVOR: " numero
done

echo "EL RESULTADO FINAL ES $suma"
