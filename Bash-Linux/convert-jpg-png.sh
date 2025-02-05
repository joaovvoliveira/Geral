#!/bin/bash

## unzip arquivos 
#
#

function converte_imagem(){

cd ./imagens-livros/

if [ ! -d png ] #verifica se o diretorio png existe, caso nao, ira executar o mkdir png
then
	mkdir png
fi

for image in *

do
	local imagem_sem_extencao=$(ls $image | awk -F. '{ print $1 }') #armazena o valor do texto da imagem antes do .
	convert ./$imagem_sem_extencao.jpg ./png/$imagem_sem_extencao.png #adiciona a imagem_sem_extencao ao tipo png, e entao converte dentro da pasta criada anteriormente
	echo "$imagem_sem_extencao.png convertida com sucesso"
done
}

converte_imagem 2> erros.log
if [ $? -eq 0 ] # $? pega o valor de saida da funcao e valida se for igual a zero significa que deu tudo certo
	echo "Cadastro de boa"
else
	echo "Deu erro"
fi



#function verifica_diretorio(){
#    local diretorio="$1"
#    local arquivo
#    for arquivo in "$diretorio"/*; 
#    do
#     	if [ -f "$arquivo" ] then
#        	converte_imagem
#      	elif [ -d "$arquivo" ]; then # -d verifica se o arquivo e uma diretorio, se sim, ja dentro do diretorio ele executa novamente a funcao no diretorio atual.
#            	verifica_diretorio "$arquivo"
#	fi
#    done
#}


#verifica_diretorio
