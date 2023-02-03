#!/bin/bash


while read linea;do
	if ((linea % 2 == 0));then
		echo $linea >> pares.txt
	else
		echo $linea >> impares.txt
	fi
done < numeros.txt

