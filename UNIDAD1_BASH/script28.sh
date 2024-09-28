#!/bin/bash

fichero="informe_red.txt"

interfaz_red() {
    ip route | grep default | awk '{print $5}'
}

info_red() {
    interfaz=$(interfaz_red)
    ip=$(ip addr show "$interfaz" | grep "inet " | awk '{print $2}' | cut -d/ -f1)
    mascara=$(ip addr show "$interfaz" | grep -w inet | awk '{print $2}' | cut -d/ -f2)
    broadcast=$(ip addr show "$interfaz" | grep brd | awk '{print $4}')

    echo "Interfaz activa: $interfaz" >> "$fichero"
    echo "Dirección IP: $ip" >> "$fichero"
    echo "Máscara de subred: $mascara" >> "$fichero"
    echo "Broadcast: $broadcast" >> "$fichero"
}

ping_ip() {
    local ip=$1
    if ping -c 1 -W 1 "$ip" &> /dev/null; then
        echo "$ip está OCUPADA" >> "$fichero"
    else
        echo "$ip está LIBRE" >> "$fichero"
    fi
}

generar_informe() {
    local ip_prefix="${ip%.*}"
    local mascara_bin=$(( 32 - mascara ))
    local start_ip="$ip_prefix.1"
    local end_ip="$ip_prefix.254"

    for i in $(seq 1 254); do
        ping_ip "$ip_prefix.$i"
    done
}
echo "Generando informe de IPs en la red..." >> "$fichero"
info_red
echo "TODAS LAS DIRECCIONES LIBRES Y OCUPADAS INFORME" >> "$fichero"
generar_informe
