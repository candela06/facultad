#!/bin/bash
#realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.

for (( i=1; i<=100; i++ )); do
    echo "$i, $i^2=$(( $i * $i))"
done
