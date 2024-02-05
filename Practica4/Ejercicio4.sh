#    4. Crear un menú para:
#        1. Visualizar las particiones de todos los discos :: lsblk para no necesitar permisos de administrados
#        2. Visualizar la memoria libre :: free -h
#        3. Visualizar el espacio ocupado por directorios :: du -a
#        4. Visualiza la versión completa del sistema :: uname -a
#!/bin/bash
#Funciones
menu(){
    echo "
        1. Visualizar las particiones de todos los discos.
        2. Visualizar la memoria libre.
        3. Visualizar el espacio ocupado por directorios.
        4. Visualizar la versión completa del sistema.
        5. Salir.
        "
}
# Programa principal
while true;do
    menu
    read option
    case $option in
        1)
            lsblk
            ;;
        2)  
            ;; 
        3)  
            ;;
        4)  
            ;;
        5)  
            echo "Saliendo."
            exit
            ;;   

    esac
done