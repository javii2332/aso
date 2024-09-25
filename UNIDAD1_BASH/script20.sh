#!/bin/bash

	if [[ $# -ne 1 ]]; then
	echo "SE REQUIERE UN NÚMERO COMO ARGUMENTO"
	exit 1
	elif [[ $1 -le 0 ]]; then
	echo "EL NÚMERO QUE HA INTRODUCIDO NO ES VÁLIDO"
	exit 1
	fi

	if [[ $1 -eq 1 ]]; then
	echo "EL NUMERO 1 NO ES PRIMO"
	exit 1
	fi

	for ((i=2; i<$1; i++)); do
		if [[ $(( $1 % i )) -eq 0 ]]; then
			echo "El número 1 no es primo"
			exit 0
		fi
	done

echo "El número $1 es primo"
