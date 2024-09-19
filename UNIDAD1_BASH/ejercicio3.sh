#!/bin/bash

ls -l /etc > listado.txt
cat  listado.txt
lineas=$(wc -l < listado.txt)
caracteres=$(wc -m < listado.txt)

echo
echo "Contiene esta cantidad de lineas $lineas"
echo "Contiene esta cantidad de caracteres $caracteres"
