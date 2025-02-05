#!/bin/bash

cd log/

regex="\b[0-9]{1,4}\-[0-9]{2}\-[0-9]{2}\b"

if [[ $1 =~ $regex ]]
then
	cat snapd.log | grep $1
	if [ $? -ne 0 ]
	then 
		echo "Nao existe informacao com essa data!"
	fi
else
	echo "Data Invalida!"
fi
