#!/bin/bash

pila=()
sp=-1

push(){
    ((sp++))
    pila[$sp]="$1"
}

pop(){
    if [[ $sp -lt 0 ]]; then
        echo "pila vacia" >&2
        return 1
    else
        local dato="${pila[$sp]}"
        unset "pila[$sp]"
        ((sp--))
        echo "$dato"
    fi
}

length(){
    echo "$(($sp+1))"
}

print(){
    if [[ $sp -lt 0 ]]; then
        echo "pila vacia"
    else
        local size=$(length)
        for ((i=size;i>0;i--)); do 
            echo "${pila[i-1]}"
        done
    fi
}
