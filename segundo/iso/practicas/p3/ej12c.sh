#!/bin/bash
# Realizar un script que le solicite al usuario 2 números, los lea de 
# la entrada Standard e imprima la multiplicación, suma, resta y cual 
# es el mayor # de los números leídos

# Modificar el script creado en el inciso anterior para que los 
# números sean recibidos como parámetros. El script debe controlar que 
# los dos parámetros sean enviados.

#  Realizar una calculadora que ejecute las 4 operaciones básicas: +, 
# - ,*, %. Esta calculadora debe funcionar recibiendo la operación y 
# los números como parámetros

if [ $# -eq 3 ]; then
    num1=$1
    num2=$2
    op=$3

    case $op in
        "+") echo "$num1 + $num2 = $(($num1+$num2))";;
        "-") echo "$num1 - $num2 = $(($num1-$num2))";;
        "*") echo "$num1 * $num2 = $(($num1*$num2))";;
        "/") 
            if [ $num2 -eq 0 ]; then
                echo "ANIMAL NO SE PUEDE DIVIDIR POR CERO"
                exit 2
            else
                echo "$num1 / $num2 = $(($num1/$num2))"
            fi 
            ;;
        *)  echo "ni idea de esa operación disculpa"
            exit 3;;
    esac
else 
    echo "tenes que pasarme los parametros de la siguiente forma: numero numero operación" 
    exit 2
fi 
