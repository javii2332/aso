#!/bin/bash

function extraccion_info_red() {

	interfaz=$(ip route | grep default | awk '{print $5}')
	ip_equipo=$(ip addr show "$interfaz" | grep inet | awk '{print $2}' | cut -d/ -f1)
	mascara=$(ip addr show "$interfaz" | grep inet | awk '{print $2}' | cut -d/ -f2)
	broadcast=$(ip addr show "$interfaz" | grep brd | awk '{print $4}')
	nombre_red=$(ip calc -n "$ip_equipo/$mascara" | grep Network | awk '{print $2}')
	tipo_red=$()
}
