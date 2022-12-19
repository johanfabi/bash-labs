#!/bin/bash
#
# Autor: Johan Fabi
# Fecha: 15-12-2022
# Descripción: Suma usando parametros de entrada
# Ejecutar en terminal: ./suma_parametros.sh num1 num2
# Ejemplo: ./suma_parametros.sh 4 5

num1=$1
num2=$2
sum=$((num1 + num2))

echo "La suma es: $sum"

if [ $sum -gt 2 ]; then
    echo "$sum es mayor que 2"
else
    echo "$sum es menor que 2"
fi

