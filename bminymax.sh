#!/bin/bash


consumo=$( awk '{print $4}' consumos.txt)
ciudad=$(awk '{print $1}' consumos.txt)
mes=$(awk '{print $2}' consumos.txt)
ano=$(awk '{print $3}' consumos.txt)
consumo_max=$(echo "$consumo","$ciudad","$mes","$ano"  | sort -n | head -n2)

consumo_min=$(echo "$consumo" | sort -n | tail -n1)


echo "Consumo maximo: $consumo_max"
echo "La persona más mayor tiene $consumo_min años."
