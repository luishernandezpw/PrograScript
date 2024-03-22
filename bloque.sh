#read -p "Num 1: " num1
#read -p "Num 2: " num2

#if [[ "$num1" =~ ^[0-9]+$ && "$num2" =~ ^[0-9]+$ ]]; then
#    suma=$((num1+num2))
#    echo "La suma es: $suma"
#else
#    echo "Los numeros NO son validos"
#fi

#manejar numeros decimales

#guardar la configuracion local
local_config=$(locale)

#cambiar temporalmente la configuracion a una que utilice numeros decimales.
export LC_NUMERIC="en_US.UTF-8"
read -p "Num 1: " num1
read -p "Num 2: " num2

suma=$(echo "$num1 + $num2" | bc) #realizar operaciones con decimales
echo "La suma es: $suma"

resta=$(echo "$num1 - $num2" | bc)
echo "La resta es: $resta"