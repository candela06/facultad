#!/bin/bash
#script para crear directorio_iso en los homes de usuarios

#recorrer todos los argumentos (seran usuarios)

for usuario in "$@"; do
    # verificar si el usuario existe me quedo con su home
    if id "$usuario" >/dev/null 2>&1; then 
        home=$(getent passwd "$usuario" | cut -d: -f6)
        
        mkdir -p "$home/directorio_iso"/{2025,2026}/{01,02}
        touch "$home/directorio_iso"/{2025,2026}/{01,02}/archivo.txt
        
        chown -R "$usuario":"$usuario" "$home/directorio_iso"
    else
        echo "No existe el usuario $usuario :'("
    fi
done
