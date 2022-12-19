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
    echo "---------------------------------------------------------"
    echo "Creando el directorio $final_path"
    echo "---------------------------------------------------------"
    echo "$final_path ha sido creado"
    ls -lt $locate | grep $directory_name
    echo "---------------------------------------------------------"
    echo "Eliminando el directorio $final_path"
    echo "---------------------------------------------------------"
    rmdir $final_path
    echo "---------------------------------------------------------"
    echo "El directorio $final_path ha sido eliminado..."
    echo "---------------------------------------------------------"
    ls -lt $locate | grep $directory_name
else
    echo "---------------------------------------------------------"
    echo "Creando el directorio $final_path"
    echo "---------------------------------------------------------"
    echo "$final_path no pudo ser creado"
fi



