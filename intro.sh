#!/bin/bash
nombre="Luis Hernandez"
edad=15

echo "Hola, $nombre; tu edad es: $edad"

if [ $edad -ge 18 ]; then
    echo "$nombre, eres mayor de edad"
else
    echo "$nombre, eres menor de edad"
fi