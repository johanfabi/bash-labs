#!/bin/bash
#
# Autor: Johan Fabi
# Fecha: 15-12-2022
# Descripción: Validar creación del directorio /tmp/test
# Ejecutar en terminal: ./crear_directorio.sh

directorio="/tmp/test"

comando="/bin/mkdir $directorio"

if $comando; then
    echo "$directorio ha sido creado"
else
    echo "$directorio no pudo ser creado"
fi
