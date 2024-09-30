#!/bin/bash

if [ "$#" -lt 3 ] || [ "$#" -gt 5 ]; then
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

# Asignamos los argumentos a variables
accion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=${5:-""}  # Si no se pasa grupo, se deja vacío

# Generamos el identificador del usuario
id_usuario="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

if [ "$accion" == "alta" ]; then
    # Comprobamos si el grupo fue proporcionado
    if [ -z "$grupo" ]; then
        # Creamos un nuevo grupo con el mismo identificador que el usuario
        grupo=$id_usuario
        groupadd "$grupo"
    fi

    # Creamos el usuario con el identificador y el grupo
    useradd -m -g "$grupo" "$id_usuario"
    echo "Usuario $id_usuario creado y agregado al grupo $grupo."

elif [ "$accion" == "baja" ]; then
    # Damos de baja al usuario
    userdel -r "$id_usuario"
    echo "Usuario $id_usuario eliminado."

else
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi
