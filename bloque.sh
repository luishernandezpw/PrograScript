
continuar=1
while [ $continuar -eq 1 ]; do
    echo "::. MENU .::"
    echo "1. Mayor 5 numeros."
    echo "2. Tabla de multiplicar."
    echo "3. Secuencia Fibonacci"
    echo "4. Salir"
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
        3)
            echo "Fibonacci"
            a=0
            b=1
            c=1
            while [ $c -le 1000 ]; do
                c=$(($a+$b))
                echo "$a+$b=$c"
                b=$a
                a=$c
            done
            ;;
        4) continuar=2
    esac
done