#!/bin/bash

set -eu

for arg in "$@"; do
    case $arg in
    --INSTANCIA=*)
        INSTANCIA="${arg#*=}"
        ;;
    --FUNCION=*)
        FUNCION="${arg#*=}"
        ;;
    --CAMBIO=*)
        CAMBIO="${arg#*=}"
        ;;
    --PRODUCTO=*)
         PRODUCTO="${arg#*=}"
        ;;
    --DESCRIPCION=*)
         DESCRIPCION="${arg#*=}"
        ;;
    --CAMBIOPCSEG=*)
         CAMBIOPCSEG="${arg#*=}"
        ;;
    --TIPO_PROYECTO=*)
         TIPO_PROYECTO="${arg#*=}"
        ;;
    --ID_PROYECTO=*)
         ID_PROYECTO="${arg#*=}"
        ;;
    esac
    shift
done

showUsage() {
    echo " Esta pasando los siguiente parametros:
        build-embargos.sh \\
            --INSTANCIA= \\
            --FUNCION= \\
            --CAMBIO= \\
            --PRODUCTO= \\
            --DESCRIPCION= \\
            --CAMBIOPCSEG= \\
            --TIPO_PROYECTO= \\
            --ID_PROYECTO=
        You currently passed:
        --INSTANCIA: $INSTANCIA
        --FUNCION: $FUNCION
        --CAMBIO: $CAMBIO
        --PRODUCTO: $PRODUCTO
        --DESCRIPCION: $DESCRIPCION
        --CAMBIOPCSEG: $CAMBIOPCSEG
        --TIPO_PROYECTO: $TIPO_PROYECTO
        --ID_PROYECTO: $ID_PROYECTO
    " 
}

showUsage

echo 'mostrando variables'
echo $INSTANCIA '-----' $FUNCION '-----' $CAMBIO '-----' $PRODUCTO '-----' $DESCRIPCION '-----' $CAMBIOPCSEG '-----' $TIPO_PROYECTO '-----' $ID_PROYECTO

ls -all
