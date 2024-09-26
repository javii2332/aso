#!/bin/bash

echo "GENERANDO FICHERO DE ARCHIVOS PELIGROSOS"

cadena=$(find / -exec ls -l {} \; 2> /dev/null | egrep '(^[-dbcstrwx]{7}[rwx]{3})')

contador=0

for i in $cadena; do
	echo "$i" | egrep -o "^.*/.*$" >> archivos_peligrosos.txt
((contador++))
done

