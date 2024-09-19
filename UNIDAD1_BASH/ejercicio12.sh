#!/bin/bash

hora=$(date +"%H")

if [[ $hora -ge 8 ]] && [[ $hora -le 15 ]]; then
	echo "BUENOS DIAS"
elif [[ $hora -gt 15 ]] && [[ $hora -le 20 ]]; then
	echo "BUENAS TARDES"
else
	echo "BUENAS NOCHES"
fi
