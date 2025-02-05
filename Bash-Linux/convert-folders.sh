#!/bin/bash


converte_imagem(){
	local caminho_imagem=$1
	local imagem_sem_extencao=$(ls $caminho_imagem | awk -F. '{ print $1 }')
	convert ./$imagem_sem_extencao.jpg ./png/$imagem_sem_extencao.png

}

#cd ./imagens-livros/
#
#if [ ! -d png ] #verifica se o diretorio png existe, caso nao, ira executar o mkdir png
#then
#	mkdir png
#fi
#
#for image in *
#
#do
#	local imagem_sem_extencao=$(ls $image | awk -F. '{ print $1 }') #armazena o valor do texto da imagem antes do .
#	convert ./$imagem_sem_extencao.jpg ./png/$imagem_sem_extencao.png #adiciona a imagem_sem_extencao ao tipo png, e entao converte dentro da pasta criada anteriormente
#	echo "$imagem_sem_extencao.png convertida com sucesso"
#done
#}
#
#converte_imagem 2> erros.log
#if [ $? -eq 0 ] # $? pega o valor de saida da funcao e valida se for igual a zero significa que deu tudo certo
#	echo "Cadastro de boa"
#else
#	echo "Deu erro"
#fi

valida_dir(){
cd $1
for arquivo in *
do
	local caminho_arquivo=$(find ./imagens-livros -name $arquivo)
	if [ -d $caminho_arquivo ]
	then
		valida_dir $caminho_arquivo
	else
		converte_imagem $caminho_arquivo
	fi
done
}


valida_dir 
if [ $? -eq 0 ]
then
	echo "Conversao OK!"
else
	echo "Deu ruim!"
fi



