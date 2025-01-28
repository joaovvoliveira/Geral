#!/bin/bash

function verifica_conflito(){
	local arquivo="$1" 
	if grep -q -E '<<<<<<< | ======= | >>>>>>>' "$arquivo"; then
                        echo "O arquivo $arquivo contem marcacoes de conflito de merge"
	fi
}

diretorio="$1"

for arquivo in "$diretorio"/*; do
	if [ -f "$arquivo" ]; then
		verifica_conflito "$arquivo"	
	fi
done


