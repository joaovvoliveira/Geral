#!/bin/bash

# Funcao que verifica se os arquivos contem algo que mostrar que o merge esta em conflito
function verifica_conflito(){
	local arquivo="$1" 
	if grep -q -E '<<<<<<< | ======= | >>>>>>>' "$arquivo"; then
                        echo "O arquivo $arquivo contem marcacoes de conflito de merge"
	fi
}


#function verifica_diretorio(){
#	local diretorio="$1"
#	local arquivo
#	for arquivo in "$diretorio"/*; do
#		if [ -f "$arquivo" ]; then
#			verifica_conflito "$arquivo"
#		elif [ -d "$arquivo" ]; then
#			verifica_diretorio "$arquivo"	
#		fi
#	done
#}
#
#Creating same function with While

# Funcao que verifica recursivamente os arquivos 
function verifica_diretorio(){
	local diretorio="$1"
	local arquivo
	local arquivos=("$diretorio"/*)
	local i=0
	
	while [ $i -lt ${#arquivos[@]} ]; do
		arquivo="${arquivos[$i]}"
		if [ -f "$arquivo" ]; then
			verifica_conflito "$arquivo"
		elif [ -d "$arquivo" ]; then
			verifica_diretorio "$arquivo"
		fi
		((i++))
	done

}

# Explica o uso correto desse script
if [ $# -ne 1 ]; then
	echo "Uso: $0 <diretorio>"
	exit 1
fi

# Diz que o diretorio nao existe e traz o dir digitado
if [ ! -d "$1" ]; then
	echo "Diretorio nao encontrado: $1"
fi

verifica_diretorio "$1"

