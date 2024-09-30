#!/bin/bash

# Comprobamos que se han pasado los argumentos correctos
if [ "$#" -lt 4 ] && [ "$#" -gt 5 ]; then
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

accion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

# Función para generar el identificador
generar_identificador() {
local id="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"
echo "$id"
}

# Acción de alta
if [ "$accion" == "alta" ]; then
id_usuario=$(generar_identificador)

# Si no se indica grupo, se crea uno nuevo
if [ -z "$grupo" ]; then
grupo=$id_usuario
groupadd "$grupo"
fi

# Se crea el usuario
useradd -m -g "$grupo" "$id_usuario"
echo "Usuario $id_usuario creado y agregado al grupo $grupo."

# Acción de baja
if [ "$accion" == "baja" ]; then
id_usuario=$(generar_identificador)

# Se elimina el usuario
userdel -r "$id_usuario"
echo "Usuario $id_usuario eliminado."

else
echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
exit 1
fi


