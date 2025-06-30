#!/bin/bash
#. Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y
#QuienEsta. Según la opción elegida se le debe mostrar:
#➢ Listar: lista el contenido del directoria actual.
#➢ DondeEstoy: muestra el directorio donde me encuentro ubicado.
#➢ QuienEsta: muestra los usuarios conectados al sistema.


echo " Elije una opción :) "

select op in listar DondeEstoy QuienEsta salir; do
    case $op in
        listar) ls ;;
        DondeEstoy) pwd ;;
        QuienEsta) who ;;
        salir) 
            echo "Adios!!<3" 
            exit 0 ;;
    esac
done
