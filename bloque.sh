
filename="archivo.txt"
#cat "$filename"

#leer el archivo linea por linea

#while IFS= read -r linea
#do
#    echo "Linea leida: $linea"
#done < "$filename"

grep -v "Script" "$filename" #filtrar la linea que contenga la palabra "Script"
sed -i '/Script/g' "$filename" #remover la linea que contenga la palabra "Script"

echo "Hola chicos" > "$filename" #reemplaza todo el contenido del archivo por "Hola chicos"
echo "que tal, les gusta la programacion con script bash" >> "$filename" #agrega una nueva linea al final del archivo

echo "
    Esto es el uso de varias lineas
    de texto a un archivo.
    Reemplazando todo el contenido.
" > "$filename" #reemplaza todo el contenido del archivo.

archivo="miarchivo.txt"
if [ -e "$archivo" ]; then
    contenido=$(cat "$archivo")
    echo "el contenido del archivo es: $contenido"
else
    echo "$archivo no existe"
fi