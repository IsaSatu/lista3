#!/bin/bash
echo -e "Digite sua senha:\n"
read -s senha

echo "$senha" | grep -qP '^.*(?=.{5,})(?=.*[A-Z])(?=.*\d)(?=.*[a-z]).*$';

VAL=$? 
if [ $VAL = '0' ];then
	echo -e "\nSenha Validada"
else
	echo -e "\nSenha Inválida,tente novamente."
fi
