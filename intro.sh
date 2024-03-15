#!/bin/bash
read -p "Dime un numero: " num1
read -p "Dime otro numero: " num2

suma=$((num1 + num2))
resta=$((num1 - num2))
multiplicacion=$((num1 * num2))
division=$((num1 / num2))
echo "La suma de $num1 + $num2 = $suma"
echo "La resta de $num1 - $num2 = $resta"
echo "La multiplicacion de $num1 * $num2 = $multiplicacion"
echo "La division de $num1 / $num2 = $division"
