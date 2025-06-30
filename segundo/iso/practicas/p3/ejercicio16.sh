#!/bin/bash
#   Realizar un script que reciba como parámetro una extensión y haga un repote con 2 columnas, 
#el nombre de usuario y la cantidad de archivos que posee con esa extensión. 
#Se debe guardar el resultado en un archivo llamado reporte.txt


if [ $# -ne 1 ]; then
    echo "Tenes que pasar un parametro"
    echo "por ejemplo, ./ejercicio16.sh txt"
else


    extension=$1
    echo "" > reporte.txt

#por cada usuario en el home...

    for usuario in /home/*; do
        if [ -d "$usuario" ]; then
            user=$(basename "$usuario")
            cantidad=$(find "$usuario" -name "*.$extension" | wc -l)
            echo "$user $cantidad" >> reporte.txt
        fi
    done

    echo "¡Listo, reporte realizado (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧"
fi
