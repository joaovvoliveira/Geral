#!/bin/bash

monitoramento_total=$(free | grep -i mem | awk '{ print $2}')
monitoramento_consumida=$(free | grep -i mem | awk '{ print $3}')
memoria_atual=$(bc <<< "scale=2;$monitoramento_total/2567920 * 100" | awk -F. '{ print $1 }')


if [ $memoria_atual -gt 50 ]
then
mail -s "Consumo de memoria acima do limite" jooao.voliveira@gmail.com<<del
O consumo esta acima do limite. Atualmente e de $(free -h | grep -i mem | awk '{ print $3 }')

fi

