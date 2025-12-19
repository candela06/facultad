#!/bin/bash
# arreglo de todos los doc del home, no tengo doc así que voy a usar txt

archivos=($(find /home -maxdepth 1 -type f -name "*.txt"))

# ------------------------------
# Funciones
# ------------------------------


verArchivo(){
    local nombre=$1
    local encontrado=0

    for archivo in "${archivos[@]}"; do
        if [ "$(basename "$archivo")" = "$nombre"  ]; then
            encontrado=1
            echo "archivo encontrado"
        fi
    done
    if [ "$encontrado" -eq 0  ]; then
        echo "archivo no encontrado"
    fi
}

cantidadArchivo(){
    echo "${#archivos[@]}"
}

borrarArchivo(){
    local nombre="$1"
    local encontre=0
    local nuevo=()
    for archivo in "${archivos[@]}"; do
        if [ "$(basename "$archivo")" = "$nombre" ]; then
            encontre=1

            read -p "¿Lo querés eliminar logicamente (si) o fisicamente (no)?" respuesta
            if [ "$respuesta" = "si"  ]; then
                echo "eliminado"    
            elif [ "$respuesta" = "no" ]; then
                rm -f "$archivo"
            else
                echo "respuesta inválida"
                nuevo+=("$archivo")
            fi
        
        else
            nuevo+=("${archivo}")
        fi
    done
    
    archivos=("${nuevo[@]}")
    if [ "$encontre" -eq 0 ]; then
        echo "archivo no encontrado"
        return 10
    fi


}
