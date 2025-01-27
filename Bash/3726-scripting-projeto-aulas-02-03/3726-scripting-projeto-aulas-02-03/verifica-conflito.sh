#!/bin/bash

arquivo=$1

if [ $# -ne 1 ]; then
	echo "Uso: $0 arquivo"
	exit 1
fi

if [ ! -f "$arquivo" ]; then
	echo "O Arquivo $arquivo nao existe"
	exit 1
fi


if grep -q -E '<<<<<<< | ======= | >>>>>>>' $arquivo; then
 	echo "O arquivo $arquivo contem marcacoes de conflito de merge"
else
	echo "O arquivo $arquivo nao contem marcacoes de merges"
fi

