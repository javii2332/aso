#!/bin/bash

num1=0
num2=0

read -p "INTRODUZCA UN NÚMERO: " num1
read -p "INTRODUZCA UN SEGUNDO NÚMERO: " num2

	if [[ "$num1" -gt "$num2"  ]];then
		echo "El primer número es mayor que el segundo número"
else
	if [[ "$num2" -gt "$num1"  ]];then
		echo "El segundo número es mayor que el primer número"
else
	if [[ "$num1" -eq "$num2"  ]];then
		echo "Los números son iguales"

fi
fi
fi
