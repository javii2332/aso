#!/bin/bash

num1=0
num2=0

echo "Con la primera opción podrá realizar una suma 1"
echo "Con la segunda opción podrá realizar una resta 2"
echo "Con la tercera opción podrá realizar una multiplicación 3"
echo "Con la cuarta opción podrá realizar una división 4"

read -p "INTRODUCE UNA OPCIÓN 1-2-3-4: " opcion
case $opcion in
	1)
read -p "INTRODUZCA EL PRIMER NÚMERO CON EL QUE OPERAR: " num1
read -p "INTRODUZCA EL SEGUNDO NÚMERO CON EL QUE OPERAR: " num2
	SUMA=$(( "$num1" + "$num2" ))
	echo "EL RESULTADO ES $SUMA"
exit 0 ;;
	2)
read -p "INTRODUZCA EL PRIMER NÚMERO CON EL QUE OPERAR: " num1
read -p "INTRODUZCA EL SEGUNDO NÚMERO CON EL QUE OPERAR: " num2
	RESTA=$(( "$num1" - "$num2" ))
	echo "EL RESULTADO ES $RESTA"
exit 0 ;;
	3)
read -p "INTRODUZCA EL PRIMER NÚMERO CON EL QUE OPERAR: " num1
read -p "INTRODUZCA EL SEGUNDO NÚMERO CON EL QUE OPERAR: " num2
	MULTIPLICACION=$(( "$num1" * "$num2" ))
	echo "EL RESULTADO ES $MULTIPLICACION"
exit 0 ;;
	4)
read -p "INTRODUZCA EL PRIMER NÚMERO CON EL QUE OPERAR: " num1
read -p "INTRODUZCA EL SEGUNDO NÚMERO CON EL QUE OPERAR: " num2
	DIVISION=$(( "$num1" / "$num2" ))
	echo "EL RESULTADO ES $DIVISION"
exit 0 ;;
	*)
	echo "INTRODUZCA UNA OPCIÓN VÁLIDA 1-2-3-4"
exit 1 ;;
esac
