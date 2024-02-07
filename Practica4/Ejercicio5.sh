#    5. Crear un menú para: 
#        1. Mostrar la fecha del sistema
#        2. Mostrar la información sobre qué usuarios han iniciado sesión y qué están haciendo.
#        3. Mostrar los 10 procesos que consumen más cpu
#        4. Mostrar los 5 procesos que consumen más memoria
#        5. Mostrar el estado de la red
#        6. Salir del menú
#!/bin/bash
menu(){
    echo "
        1. Mostrar la fecha del sistema.
        2. Mostrar la información sobre qué usuarios han iniciado sesión y qué están haciendo.
        3. Mostrar los 10 procesos que consumen más cpu.
        4. Mostrar los 5 procesos que consumen más memoria.
        5. Mostrar el estado de la red.
        6. Salir del menú.
        "
}
#
opcion=0
while [ $opcion -ne 6 ];do #-ne = no equals.
    menu
    read opcion
    case $opcion in
        1)  
            echo "Fecha del sistema."
            date
            ;;
        2)  
            last      
            ;; 
        3)  
            ps -aux | sort -r -k3 | head -10
            ;;
        4)  
            ps -aux | sort -r -k4 | head -5
            ;;
        5)  
            ip a
            ;;
        6)  
            echo "Saliendo."
            exit
            ;;   

    esac
done