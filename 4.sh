#!/bin/bash

echo " os problemas se tornam infantis depois de explicados."
echo "*__________________*"
echo "|Olá, seja bem vindo(a)!|"
echo "------------------"

echo "Escolha uma alternativa:"
echo " a- Liste apenas os diretórios de uma pasta"
echo " b- Liste apenas os arquivos executaváveis"
echo "c- Liste apenas links simbólicos"
echo " x - Saia do script"

while true; do
	read -p "Digite sua opção:" opc
	case $opc in
		"a") ls -la | grep "d" ;; 
		"b") ls -l | grep '^-..x' ;;
		"c") ls -lhaF | grep ^l ;;
		"x") break ;;

	esac

done
