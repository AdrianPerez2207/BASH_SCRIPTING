#    3. Crea un menú para indicar:
#        1. Cuántos usuarios están conectados
#        2. Usuarios con directorio home y almacenarlos en un fichero llamado all.users
#        3. Lista de cuentas de usuarios ordenados por nombre y por id
#        4. Día mes y año mostradas en pantalla con el formato dia-mes-año
#        5. Cambiar a mayúsculas los nombres de los ficheros pasados por parámetros.
#!/bin/bash
usuariosConectados(){
    echo "Usuarios conectados: $(who | wc -l)"
}
listarYAlmacenar(){
    echo "Usuarios en /home: $(ls /home)"
    ls /home > all.users.txt
    echo $(cat all.users.txt)
}
usuariosOrdenados(){
    echo "Usuarios ordenados por nombre: $(cat /etc/passwd | cut -d: -f1,3 | sort -t: -k1)"
    echo "------------------------------"
    echo "Usuarios ordenados por id: $(cat /etc/passwd | cut -d: -f1,3 | sort -t: -k2 -n)"
}
fecha(){
    echo "Fecha: $(date +"%d-%m-%Y")"
}
nombresMayusculas(){
    echo "Pasar a mayúsculas"
}
menu(){
    echo "----Menú----"
    echo "1. Listar usuarios conectados."
    echo "2. Listar usuarios con directorio home y almacenarlos en un fichero llamado all.users."
    echo "3. Lista de cuentas de usuarios ordenados por nombre y por id."
    echo "4. Día mes y año mostradas en pantalla con el formato dia-mes-año."
    echo "5. Cambiar a mayúsculas los nombres de los ficheros pasados por parámetros."
    echo "6. Salir."
    echo "Seleccione una opción: "
}
while true; do
    menu
    read opcion
    case $opcion in
        1)
            usuariosConectados
            ;;
        2)
            listarYAlmacenar
            ;;
        3)
            usuariosOrdenados
            ;;
        4)
            fecha
            ;;
        5)
            nombresMayusculas $@
            ;;
        6)
            echo Saliendo..
            exit
            ;;
        *)
            echo Error. Opción no válida.
            exit
            ;;
    esac
done
