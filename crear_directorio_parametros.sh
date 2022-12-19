#!/bin/bash
#
# Autor: Johan Fabi
# Fecha: 15-12-2022
# Descripción: Validar creación del directorio /tmp/test
# Ejecutar en terminal: ./crear_directorio_parametros.sh $1 $2
# Ejemplo: ./crear_directorio_parametros.sh "/tmp" "my-directory"

locate=$1 # Ruta donde va a crearse la nueva carpeta o directorio
directory_name=$2 # Nombre de la nueva carpeta o directorio
final_path="$locate/$directory_name" # Ruta definitiva de la carpeta o directorio

command="/bin/mkdir $final_path"

if $command; then
    echo "$final_path ha sido creado"
    ls -lt $locate | grep $directory_name
else
    echo "$final_path no pudo ser creado"
fi



