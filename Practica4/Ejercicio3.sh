#    3. Crea un menú para indicar:
#        1. Cuántos usuarios están conectados
#        2. Usuarios con directorio home y almacenarlos en un fichero llamado all.users
#        3. Lista de cuentas de usuarios ordenados por nombre y por id
#        4. Día mes y año mostradas en pantalla con el formato dia-mes-año
#        5. Cambiar a mayúsculas los nombres de los ficheros pasados por parámetros.
#!/bin/bash
menu(){
    echo "----Menú----"
    echo "1. Listar usuarios conectados."
    echo "2. Listar usuarios con directorio home y almacenarlos en un fichero llamado all.users."
    echo "3. Lista de cuentas de usuarios ordenados por nombre y por id."
    echo "4. Día mes y año mostradas en pantalla con el formato dia-mes-año."
    echo "5. Cambiar a mayúsculas los nombres de los ficheros pasados por parámetros."
    echo "6. Salir."
    echo "Seleccione una opción: "
    read opcion
}
case "${opcion}" in
    1)
        usuariosConectados
        ;;
    2)
       
        ;;
    3)
        echo "item = 3"
        ;;
    4)
        echo "item = 4"
        ;;
    5)
        echo "item = 5"
        ;;
    6)
        echo "item = 6"
        ;;
    *)
        echo "default (none of above)"
        ;;
esac

usuariosConectados(){
    echo "Usuarios conectados: $(who | wc -l)"
}