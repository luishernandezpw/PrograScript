
nombre="Luis Hernandez"
printf "Hola %s; \nBienvenido a Programacion de Script \n" "$nombre"

echo -e "Hola \e[1;31m$nombre\e[0m; bienvenido a \e[1;33mProgramacion de Script\e[0m"

echo "
Hola que tal, 
estas son muchas lineas
usando echo
"

cat <<EOM
Hola que tal 
esto son muchas lineas
con salto de linea
EOM