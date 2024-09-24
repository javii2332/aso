#!/bin/bash

read -p "PORFAVOR INTRODUZCA EL NÚMERO QUE DESEA COMPROBAR: " numero

if [[ $numero -le 1 ]]; then
	echo "EL NÚMERO QUE HA INTRODUCIDO NO ES PRIMO"
exit
fi

primo=1
	for (( i=2; i*i<numero; i++ )); do
		if (( numero % i == 0 )); then
	primo=0
	break
fi
done

if [[ primo == 1 ]]; then
	echo "EL NUMERO $numero ES PRIMO"
else
	echo "EL NUMERO $numero NO ES PRIMO"
fi
