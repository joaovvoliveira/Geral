#!/bin/bash

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

verifica_diretorio "$1"

