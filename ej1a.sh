#!/bin/bash

total= cat nombres.txt | wc -l

for i in `seq 1 $total`
do
	linea= cat nombres.txt | head -n $i  | tail -n 1
	mkdir $linea

	for j in `seq 1 $1`
	do
		mkdir -p "$linea/personal$j"
	done
done
