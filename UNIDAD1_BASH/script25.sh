#!/bin/bash

echo "ÚLTIMAS CONEXIONES REALIZADAS: "
last | egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}'

