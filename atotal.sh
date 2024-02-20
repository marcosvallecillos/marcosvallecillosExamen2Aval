#!/bin/bash
while true; do
echo "Por favor, ingrese una ciudad:"
read ciudad

total_consumo=0
ciudad=$(awk -v ciudad="$ciudad" '$1 == ciudad {print}' consumos.txt)
consumo=$(awk '{print $4}' consumos.txt)

if [ -n "$ciudad" ]; then
   suma_consumo=$((consumo + total_consumo))
else
    echo "No se encontraron esta $ciudad."
fi 
done
