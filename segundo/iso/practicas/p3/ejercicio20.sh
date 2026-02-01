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
       # echo "$dato"
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

for ((i=1;i<=10;i++)); do
    push "$i"
done

echo "longitud de la pila: $(length)"
echo "Contenido de la pila:"
print


for ((i=1;i<=3;i++)); do
    pop
done

echo "longitud de la pila: $(length)"
echo "Contenido de la pila:"
print

