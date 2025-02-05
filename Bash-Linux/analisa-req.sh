#!/bin/bash

if [ -Z $1 ]
then
	while [ -z $requisicao ]
	do
		read -p "Digite o tipo de requisicao(GET,POST,PUT ou DELETE): " requisicao
		req=$( echo $requisicao | awk '{ print toupper($1) }' )
	done
else
	req=$( echo $1 | awk '{ print toupper($1) }' )
fi

case $req in
	GET)
	cat apache.log | grep GET
	;;

	POST)
	cat apache.log | grep POST
	;;

	DELETE)
	cat apache.log | grep DELETE
	;;
	
	PUT)
	cat apache.log | grep PUT
	;;

	*)
	echo "Req invalida!"
	;;
esac

#cat apache.log | grep $1
#
#if [ $1 == "GET"]
#then
#	cat apache.log | grep GET
#elif [ $1 == "POST" ]
#then
#	cat apache.log | grep POST
#elif [ $1 == "DELETE" ]
#then 
#	cat apache.log | grep DELETE
#elif [ $1 == "PUT" ]
#then
#	cat apache.log | grep PUT
#fi
