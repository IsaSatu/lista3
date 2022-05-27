#!/bin/bash
read -p "Digite um endereço IP: " ip

OLD_IFS=$IFS
IFS='.'


set - $ip


converterBase() {
       	echo "obase=2; $1" | bc
}

primeiro_octeto=`converterBase $1`
segundo_octeto=`converterBase $2`
tercerio_octeto=`converterBase $3`
quarto_octeto=`converterBase $4`

cont=0
for f in $primeiro_octeto $segundo_octeto $tercerio_octeto $quarto_octeto
do
	adc=$(( cont+=1 ))
	if [ $cont == '1' ];then
	       	printf "Primeiro Octeto: %08d\n" $f			
	elif [ $cont == '2' ];then
		printf "Segundo Octeto: %08d\n" $f
	elif [ $cont == '3' ];then
		printf "Terceiro Octeto: %08d\n" $f
	elif [ $cont == '4'];then 
		printf "Quarto Octeto: %08d\n" $f
	fi

done

