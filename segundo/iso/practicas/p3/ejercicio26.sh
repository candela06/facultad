#!/bin/bash

# script de funcionalidades basicas

inicializar(){
    array_vacio=()
}

agregar_elem(){
    array_vacio+=("$1")   
}

eliminar_elem(){
    local pos="$1"

    if [ -z "$pos" ]; then
        echo "se debe indicar una posición"
        return 20
    fi

    if ! [[ "$pos" =~ ^[0-9]+$ ]]; then
        echo "debe ser un número entero"
        return 20
    fi
    
    if [ "$pos" -lt 0 ] || [ "$pos" -ge "${#array_vacio[@]}" ]; then
        echo "posición inválida"
        return 20
    fi

    unset "array_vacio[$pos]"
    echo "eliminado"
}

longitud(){
    echo "longitud del arreglo: ${#array_vacio[@]}"
}

imprimir(){
    for item in "${array_vacio[@]}"; do
        echo "$item"
    done
}

inicializar_con_valores(){
    local tamanio="$1"
    local valor="$2"
    
    if ! [[ "$tamanio" =~ ^[0-9]+$ ]] || [ "$tamanio" -le 0 ]; then
        echo "tamaño inválido"
        return 20
    fi

    array=()
    for((i=0;i<$tamanio;i++)); do
        array[i]="$valor"
    done

}
