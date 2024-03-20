
seguir=1
while [ $seguir -eq 1 ]; do
    read -p "Tabla de multiplicar: " ntabla
    for i in $(seq 1 10); do
        echo "$ntabla x $i = $(($ntabla*$i))"
    done
    read -p "Continuar: 1; Salir: Cualquier otro numero o letra: " seguir
done