#!/bin/bash

	if [[ $# -ne 1 ]]; then
	echo ""
	exit 1
	elif [[ $1 -le 0 ]]; then
	echo "EL NÚMERO QUE HA INTRODUCIDO NO ES PRIMO"
	exit 1
	fi

#i le damos el valor 1 y le sumamos 1 hasta llegar al número introducido en parámetros.
	for ((i=1; i<=$1; i++)); do
		operacion=$(( $1 % 1 ))
		echo "$operacion" | grep ^0 >> SOLOLOSCEROS.txt #indicamos que redirija solamente los restos iguales a 0.
	done

	resultado=$(cat SOLOLOSCEROS.txt | wc -l)

	if [[ $resultado -eq 2 ]]; then
	echo "EL NÚMERO QUE SE HA INTRODUCIDO ES PRIMO"
	else
	echo "EL NÚMERO QUE SE HA INTRODUCIDO NO ES PRIMO"
	fi

	rm SOLOLOSCEROS.txt
