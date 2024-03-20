
continuar=1
while [ $continuar -eq 1 ]; do
    echo "::. MENU .::"
    echo "1. Mayor 5 numeros."
    echo "2. Tabla de multiplicar."
    echo "3. Salir"
    read -p "Opcion: " opcion

    case $opcion in
        1)
            echo "Mayor de 5 Numeros"
            mayor=0
            for i in $(seq 1 5); do
                read -p "Numero: " num
                if [ $num -ge $mayor ]; then
                    mayor=$num
                fi
            done
            echo "El numero mayor es: $mayor"
            ;;
        2)
            read -p "Tabla de multiplicar: " ntabla
            for i in $(seq 1 10); do
                echo "$ntabla x $i = $(($ntabla*$i))"
            done
            ;;
        3) continuar=2
    esac
done