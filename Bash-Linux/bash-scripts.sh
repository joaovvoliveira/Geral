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

function verifica_diretorio(){
    local diretorio="$1"
    local arquivo
    for arquivo in "$diretorio"/*; do
            if [ -f "$arquivo" ]; then
                    verifica_conflito "$arquivo"
            elif [ -d "$arquivo" ]; then # -d verifica se o arquivo e uma diretorio, se sim, ja dentro do diretorio ele executa novamente a funcao no diretorio atual.
                    verifica_diretorio "$arquivo"
            fi
    done
}

function verifica_diretorio(){
        local diretorio="$1"
        local arquivo
        local arquivos=("$diretorio"/*)
        local i=0

        while [ $i -lt ${#arquivos[@]} ]; do    #arquivos[@] traz o tamanho total do diretorio na var "arquivos"
                arquivo="${arquivos[$i]}"       #var arquivo recebe a posicao do vetor atual 
                if [ -f "$arquivo" ]; then
                        verifica_conflito "$arquivo"
                elif [ -d "$arquivo" ]; then
                        verifica_diretorio "$arquivo"
                fi
                ((i++))
        done

# Codigo que compacta/descompacta arquivos
read -p "Entre com a operacao desejada: 'Compactar' ou 'Descompactar'" operacao
case "$operacao" in
        "Compactar")
                read -p "Nome do Arquivo final (.tar.gz)" arquivo_saida
                read -p "Quais arquivos deseja compactar ?(separadas por espaco)" arquivos
                tar -czf "$arquivo_saida" $arquivos
                echo "Compactados com sucesso em $arquivo_saida"
        ;;
        "Descompactar")
                read -p "Nome do arquivo a descompactar (.tar.gz)" arquivo
                read -p "Diretorio destino: " diretorio
                tar -xzf "$arquivo" -C "$diretorio"
                echo "Arquivo $arquivo descompactado em $diretorio"
        ;;
        *)
        echo "Operacao invalida!"
        echo "Selecione descompactar ou compactar"
        exit 1
        ;;
esac

ls ./imagens-livros/algoritmos.jpg | awk -F. '{ print $1 }'     # awk faz manipulacao de textos, F significa FIELD(campo que ira receber a alteracao)
                                                                # . indica o local de separacao do texto { print $1 } trara o primeiro campo

# Verifica se algum servico esta executando
if pgrep nginx &> /dev/null; then
        echo "Nginx esta operando $(date +"%Y-%m-%d%H:%M:%S")"
else
        echo "Nginx fora de operacao $(date +"%Y-%m-%d%H:%M:%S")"
fi

# http://gnu.org/software/grep/manual/grep.html -- Documentacao oficial GREP
# https://www.gnu.org/software/sed/manual/sed.html -- Documentacao oficial SED
# https://www.gnu.org/software/gawk/manual/gawk.html -- Documentacao oficial AWK

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


npm run build

npm start