#!/bin/bash

read -p "Introduce el primer número: "  num1
read -p "Introduce el segundo número: "  num2

suma=$((num1 + num2))
resultado=$((suma / 2))

echo "$resultado"
