FROM node:20 ->     Isso diz a versao do node que usara
WORKDIR /app ->     Definir o diretorio onde iremos trabalhar / Padronizando o ambiente que o time esta trabalhando
COPY package* . ->  Fazer um COPY de todas as configuracoes do sistema (package.json/package-lock.json) / O . diz que sera dentro do WORKDIR definido
RUN npm install ->  Comando de criara a imagem Docker
COPY . . ->         Copia todo o projeto para dentro do Container
ENTRYPOINT npm start -> Comando que ira criar o Container com todos os dados copiados anteriormente

npm install -> Atualiza dependencias

Comando para criar a imagem:
docker build -t adopet-front:1.0 . -> -t permite criar uma tag(nome) para ela, junto com a versao / o ponto na final busca pelo arquivo DOCKERFILE na pasta que estamos 

docker images -> Consulta imagens
docker run -d -p 80:3000 adopet-front:1.0 -> Sobe um container com a imagem. -d para subir em background, -p para definir a porta 80:3000. 80-meu computador/3000-porta docker

docker ps -a -> para ver os containers em execucao

https://www.alura.com.br/artigos/desvendando-o-dockerfile

A imagem docker e uma ferramente que inclui tudo que e necessario para a nossa aplicacao.

sudo service postgresql status

sudo service postgresql start

sudo -u postgres psql

CREATE DATABASE db_adopet; -> Cria o banco de dados.

\q sai do banco

npm run typeorm migration:run

npm start -> Ira abrir na porta 3000/adotante

