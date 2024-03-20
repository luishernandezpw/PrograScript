read -p "Num 1: " num1
read -p "Num 2: " num2

respuesta=$((num1+num2))
echo "La suma es: $respuesta"

resp=$(expr $num1 + $num2)
echo "Respuesta: $resp"