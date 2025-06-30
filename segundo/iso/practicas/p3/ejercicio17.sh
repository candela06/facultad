#!/bin/bash
#17. Escribir un script que al ejecutarse imprima en pantalla los nombre de los
#archivos que se encuentran en el directorio actual, intercambiando minúsculas
#por mayúsculas, además de eliminar la letra a (mayúscula o minúscula).
#Por ejemplo, si en el directorio actual están los siguientes archivos:


for archivo in *; do
    if [ -f "$archivo" ]; then
        echo "$archivo" | tr -d 'Aa' | tr '[:lower:][:upper:]' '[:upper:][:lower:]'
    fi
done
