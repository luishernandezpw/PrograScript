#!/bin/bash
echo "** CALCULADORA BASICA **"

read -p "Dime un numero: " num1
read -p "Dime otro numero: " num2

echo "MENU"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicacion"
echo "4. Division"
echo "5. Porcentaje"
echo "6. Exponenciacion"

read -p "Opcion: " opcion
respuesta=0
if [ $opcion = 1 ]; then
    respuesta=$((num1+num2))
elif [ $opcion = 2 ]; then
    respuesta=$((num1-num2))
elif [ $opcion = 3 ]; then
    respuesta=$((num1*num2))
elif [ $opcion = 4 ]; then
    respuesta=$((num1/num2))
elif [ $opcion = 5 ]; then
    respuesta=$((num1*num2/100))
elif [ $opcion = 6 ]; then
    respuesta=$((num1**num2))
    #respuesta=$(echo "$num1 ^ $num2" | bc)
fi 
echo "La respuesta es: $respuesta"