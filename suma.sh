#!/bin/bash
#
# Autor: Johan Fabi
# Fecha: 15-12-2022
# Descripción: Suma de variables
# Ejecutar en terminal: ./suma.sh

num1=1
num2=0
sum=$((num1 + num2))

echo "La suma es: $sum"

if [ $sum -gt 2 ]; then
    echo "$sum es mayor que 2"
else
    echo "$sum es menor que 2"
fi
