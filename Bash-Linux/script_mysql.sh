#!/bin/bash


DIR_HOME=/Users/victor

cd $DIR_HOME

if [ ! -d backup ]
then
	mkdir backup
fi

sudo mysqldump -u root $1 > $DIR_HOME/backup/$1.sql
if [ $? -eq 0 ]
then
	echo "Backup realizado!"
else
	echo "Deu erro!"
fi	

