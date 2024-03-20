

select opcion in "Mayor" "Tabla" "Fibonacci" "Salir"; do
    case $opcion in
        "Mayor")
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
        "Tabla")
            read -p "Tabla de multiplicar: " ntabla
            for i in $(seq 1 10); do
                echo "$ntabla x $i = $(($ntabla*$i))"
            done
            ;;
        "Fibonacci")
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
        "Salir")
            break
            ;;
        *) echo "Opcion no valida";;
    esac
done