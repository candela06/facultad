#!/bin/bash
# implementación de Set en bash

SET=()
initialize(){
    SET=()
}

initialize_with(){
    if [ $# -eq 0 ]; then
        echo "╰(◣﹏◢)╯ PERO PONÉ UN VALOOOR"
        return 1
    fi

    SET=()
    for valor in "$@"; do
        add "$valor"
    done
}

add(){
    local val="$1"

    if ! contains "$val"; then
        SET+=("$val")
        return 0
    else
        return 1
    fi
}

remove(){
    local nuevo=()
    local removed=0
    for item in "${SET[@]}"; do
        local skip=0
        for val in "$@"; do
            if [ "$item" = "$val" ]; then
                skip=1
                removed=1
            fi
        done

        if [ "$skip" -eq 0 ];then
            nuevo+=("$item")
        fi
    done

    SET=("${nuevo[@]}")
    return "$removed"
}

contains(){
    local val="$1"

    for item in "${SET[@]}"; do
        if [ "$item" = "$val" ]; then
            return 0
        fi
    done
    return 1
}

print(){
    for item in "${SET[@]}"; do
        echo "$item"
    done
}

print_sorted(){
    for item in "${SET[@]}"; do
        echo "$item"
    done | sort -n
}

