#!/bin/bash
# juego bingo del ejercicio 30

source ./ejercicio30.sh

initialize

max=${1:-99}
if [ "$max" -le 0 ] || [ "$max" -gt 32767 ]; then
    echo "el maximo debe estar entre 0 y 32767"
    exit 1
fi

while true; do

    # generar num aleatorio
    num=$((RANDOM % (max+1)))
    while contains "$num"; do
        num=$((RANDOM % (max+1)))
    done

    # guardar en el set
    add "$num"
    echo "numero cantado: $num"

    # preguntar al usuario para seguir o bingo

    read -p "Presiona ENTER para seguir o escribe BINGO para terminar" opc

    if [ "$opc" = "BINGO" ]; then
        echo "!BINGO!"
        echo "numeros cantados en orden:"
        print_sorted
        break
    fi
done
