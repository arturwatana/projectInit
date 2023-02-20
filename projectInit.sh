#!/bin/bash

clear

echo ""
echo "Ola, digite qual o diretorio que gostaria de iniciar o projeto:"
echo -n  "Diretorio: "
read opcao

echo "Alterando diretorio..."
cd $opcao
sleep 1
echo "Diretorio alterado para $(pwd)"

sleep 1
echo ""
echo "Qual sera o framework do projeto?"
echo ""
echo "1- NodeJS" 
echo "2- ReactJS" 
echo -n "Framework: "
read framework 

echo "$framework"
case $framework in 
	1)
		echo "Ira utilizar o express?"
		echo -n "S/N "
		read express

		case $express in 
			S) 
				npm init -y
				sleep 2
				npm i express
				;;
			N)
				npm init -y
				;;
		esac;;
	2)
		echo "Ainda nao sei instalar o ReactJS"
		;;
	*)
		echo "Opcao nao encontrada";;
	
	esac
		
