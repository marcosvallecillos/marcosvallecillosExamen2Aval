total_consumo=0
contador_consumo=0


while IFS= read -r linea; do

    consumo=$(echo "$linea" | awk '{print $4}')

    
    total_consumo=$((total_consumo + consumo))
    contador_consumo=$((contador_consumo + 1))
done < consumos.txt
echo "Por favor, ingrese una ciudad:"
read ciudad
if [ -n "$ciudad" ]; then
    if [ $contador_consumo -gt 0 ];then
    consumo_promedio=$(( total_consumo / contador_consumo))
    echo "La media de "$ciudad" es $consumo_promedio € de consumo"
    else
    echo "No son mayores que 0"
    fi
 fi