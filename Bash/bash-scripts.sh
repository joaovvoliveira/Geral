## CHMOD Permissoes
## Permissão de leitura +r
## Permissão de escrita +w
## Permissão de execução +x
## Remover permissão de execução -x

curl --write-out %{http_code} --silent --output /dev/null https://adopet-frontend-cypress.vercel.app/home

--silent !tras apenas o codigo HTTP da requisicao
--output !tras os dados da requisicao e tempo de espera

A - Editar arquivo com o VI
:w - Salvar
:x - Salvar/Fechar