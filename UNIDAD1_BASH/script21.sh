#!/bin/bash

numero=$((RANDOM%100))

echo "ESTÁ USTED JUGANDO A ADIVINAR EL NÚMERO"
echo "EL NÚMERO PUEDE IR DESDE EL 1 HASTA EL 100, SUERTE EN SU BÚSQUEDA"

while [[ $numero -ne $numintro ]]; do

read -p "PORFAVOR INTRODUZCA UN NÚMERO: " numintro

if [[ $numintro -eq 0 ]]; then
	echo "EL NÚMERO QUE BUSCABAMOS ERA $numero , RENDIRSE NO ES UNA OPCIÓN"
	break
fi
if [[ $numintro -lt $numero ]]; then
	echo "EL NÚMERO QUE BUSCAMOS ES MAYOR"
elif [[ $numintro -gt $numero ]]; then
	echo "EL NÚMERO QUE BUSCAMOS ES MENOR"
else
	echo "ENHORABUENA EL NÚMERO INTRODUCIDO ES EL CORRECTO, GRAN TRABAJO HOY ES SU DÍA DE SUERTE"
fi
done



