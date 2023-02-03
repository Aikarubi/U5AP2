#!/bin/bash

win=0
lin=0

total= cat listado.txt | wc -l

for i in `seq 1 $total`;do
	linea= cat listado.txt | head -n $i  | tail -n 1
	if [ $linea = "Windows" ];then
		let $win=`expr $win + 1`
	else
		let $lin=`expr $lin + 1`
	fi
done
echo "Hay $win de Windows y $lin de Linux"