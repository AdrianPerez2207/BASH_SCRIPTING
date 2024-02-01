#!/usr/bin/env bash

#Solicita un archivo e indica el tipo de archivo 
# y si tiene permisos de r
clear
read -p "Archivo: " archivo

#Existe
if [ -e "$archivo" ]; then
    echo "El archivo" $archivo "existe"
    #Tipo de archivo
    if [ -b $archivo ]; then
        echo "Es un archivo especial de bloques"
        elif [ -c $archivo ]; then
            echo "Es un archivo de caracteres"
        elif [ -d $archivo ]; then
            echo "Es un directorio"
        elif [ -f $archivo ]; then
            echo "Es un fichero ordinario"
        elif [ -h $archivo ]; then     
            echo "Es un archivo simbólico"
    fi
    #Permisos
    if [ -r $archivo ]; then
        echo "Tiene permisos de lectura"
    fi
else
    echo "El archivo" $archivo "no existe"
fi    