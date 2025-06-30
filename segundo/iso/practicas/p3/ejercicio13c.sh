#!/bin/bash
#Crear un script que reciba como parámetro el nombre de un archivo e
#informe si el mismo existe o no, y en caso aﬁrmativo indique si es un
#directorio o un archivo. En caso de que no exista el archivo/directorio cree
#un directorio con el nombre recibido como parámetro.


echo "¡Buquemos tu archivo! <3"
read -p "¿Cómo se llama?: " archivo

buscar() {
    echo "Mmm… estoy buscando… ¡hay mucha mugre por acá!"
    # Ojo al espacio antes del ] en cada condición
    if [ -e "$1" ]; then
        if [ -d "$1" ]; then
            echo "¡OMG!, existe y es un directorio."
        elif [ -f "$1" ]; then
            echo "¡OMG!, existe y es un archivo."
        else
            echo "¡Existe!, pero no tengo idea qué es :'c"
        fi
    else
        echo "No lo encontré, perdón… ¡Pero ya mismo lo creo!"
        mkdir -p "$HOME/$1"
        echo "¡Listo ʕっ•ᴥ•ʔっ❤! Podés encontrar '$1' en tu home: $HOME/$1"
    fi
    exit 0
}

if [ -z "$archivo" ]; then
    echo "¿Vacío? No manejo nombres vacíos."
    exit 1
else
    buscar "$archivo"
fi

