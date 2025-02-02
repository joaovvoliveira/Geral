#!/bin/bash

## unzip arquivo.zip

DIR_IMG=./imagens-livros/


for image in $@

do
	convert $DIR_IMG/$image.jpg $DIR_IMG/$image.png
done
