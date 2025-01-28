## CHMOD Permissoes
## Permissão de leitura +r
## Permissão de escrita +w
## Permissão de execução +x
## Remover permissão de execução -x

curl --write-out %{http_code} --silent --output /dev/null https://adopet-frontend-cypress.vercel.app/home

--silent !tras apenas o codigo HTTP da requisicao
--output !tras os dados da requisicao e tempo de espera

exemplo de funcao em bash
[
function verifica_conflito(){
        local arquivo="$1" #cria uma variavel local
        if grep -q -E '<<<<<<< | ======= | >>>>>>>' "$arquivo"; then #-q nao mostra a linha de erro / -E tras o nome do arquivo
                        echo "O arquivo $arquivo contem marcacoes de conflito de merge"
        fi
}

diretorio="$1"

for arquivo in "$diretorio"/*; do
        if [ -f "$arquivo" ]; then #-f verifica se o argumento e um arquivo regular, nao diretorio, link, etc
                verifica_conflito "$arquivo" #chamada de funcao bash
        fi
done
]
variavel="texto"
variavel=$(comando)

date - Tras a data/hora atual
date +%F - Tras a data atual
date +%F-%H:%M - Tras a data com a hora ordenada
%F DATA
%H HORA
%M MINUTO
%S SEGUNDO

sudo crontab -e - para executar um monitoramento com crontab, sendo necessario remover a linha para cancelar as execucoes

df -h - Faz um monitoramento do disco da maquina / Tras informacoes de sistemas/particoes como tamanho, quantidade de memoria usada/disponivel e onde foi montado
 
df -h /mnt/c/ | awk '{print $5}' - Seleciona a quinta coluna do monitoramento, nesse caso a % de uso do Disco

Operadores
-eq: igual a
-ne: diferente de
-gt: maior que
-lt: menor que
-ge: maior ou igual a
-le: menor ou igual a
-z: string vazia
-n: string não vazia
=: comparação de strings (também ==)
!=: diferente de (strings)
&&: e lógico
||: ou lógico
!: negação lógica


A - Editar arquivo com o VI
:w - Salvar
:q - Sair
:x - Salvar/Fechar