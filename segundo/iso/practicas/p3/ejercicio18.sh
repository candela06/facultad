#!/bin/bash


if [ $# -ne 1 ]; then
    echo "¡Debes pasar un usuario! (>_<)"
    exit 1
fi

usuario=$1

#hasta que el usuario se loguee
while true; do
    
    #si usuario aparece en la lista de usuarios logueados
    if who | grep -w "$usuario" > /dev/null; then
        echo "usuario $usuario logueado en el sistema"
    fi

    sleep 10
done
