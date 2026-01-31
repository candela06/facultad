#!/bin/bash

# Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menú, el cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados en esta práctica. Las instrucciones de cómo proceder deben mostrarse junto con el menú. El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir. 

scripts=(*.sh Salir)

select opt in "${scripts[@]}"; do
    
    if [[ -n $opt ]]; then
        if [[ $opt == "Salir" ]]; then
            echo "¡Chauchis 💖!"
            exit 0
        fi
        echo "ejecutando..."
        ./"$opt"
    else
        echo "cualquier cosa pusiste, qué poronga es $opt"
    fi
done
    
    
