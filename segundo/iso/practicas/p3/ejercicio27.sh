#!/bin/bash

# existe o no el directorio

name="$1"
dir=$(find /home -type d -name "$name" 2>/dev/null)
# validar la existencia

if [ -z "$dir" ]; then
    echo "no existe el directorio $name"
    exit 4
fi
    
# incializar el contador

lectura=0
escritura=0

# recorrer archivos y contar

for arch in "$dir"/*; do
    if [ -f "$arch" ]; then
        [ -r "$arch" ] && ((lectura++))
        [ -w "$arch" ] && ((escritura++))
    fi
done

echo "directorio: $dir"
echo "cantidad de archivos con permisos de lectura: $lectura"
echo "cantidad de archivos con permisos de escritura: $escritura"
