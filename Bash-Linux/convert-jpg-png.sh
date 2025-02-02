#!/bin/bash

## unzip arquivos 
#
#

converter_imagem(){

cd ./imagens-livros/

if [ ! -d png ] #verifica se o diretorio png existe, caso nao, ira executar o mkdir png
then
	mkdir png
fi

for image in *

do
	imagem_sem_extencao=$(ls $image | awk -F. '{ print $1 }') #armazena o valor do texto da imagem antes do .
	convert ./$imagem_sem_extencao.jpg ./png/$imagem_sem_extencao.png #adiciona a imagem_sem_extencao ao tipo png, e entao converte dentro da pasta criada anteriormente
done
        echo "Execucao realizada com sucesso!"
}


converter_imagem
