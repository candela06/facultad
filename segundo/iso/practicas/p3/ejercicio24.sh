#!/bin/bash

# script de todos los users en un array

array_users=($(getent group users | cut -d: -f4 | tr ',' ' '))

# procesar parametros

case $1 in
    -b)
        n="$2"
        if [ -z "$n" ]; then
            echo " falta un parámetro"
            exit 1
        fi
        
        if ! [[ "$n" =~ ^[0-9]+$ ]]; then
            echo "el parametro debe ser un número entero"
            exit 1
        fi

        if [ "$n" -ge "${#array_users[@]}" ]; then
            echo posición fuera del rango
            exit 1
        fi

        echo "elemento en la posición $n: ${array_users[$n]}"
        ;;
    -l) 
        echo "longitud del arreglo: ${#array_users[@]}"
        ;;
    -i) 
        for item in "${array_users[@]}"; do
            echo "$item"
        done
        ;;
esac
