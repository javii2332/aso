#!/bin/bash


read -p "INTRODUZCA UN NÚMERO PORFAVOR: " num

#PARA QUE NOS SAQUE EL RESTO
division=$(( $num %2 ))

if [[ $division -eq 0 ]]; then
	echo "EL NÚMERO ES PAR"
elif [[ $division -ne 0 ]] ; then
	echo "EL NÚMERO ES IMPAR"
fi

