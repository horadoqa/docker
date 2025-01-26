#Especifica a imagem base para o contêiner.
FROM nginx

# Fornece informações de contato sobre quem mantém ou desenvolve a imagem
LABEL maintainer="horadoqa@gmail.com"

# O comando COPY copia arquivos ou diretórios do sistema local (no caso, o diretório ./site) para o sistema de arquivos do contêiner. 
COPY ./site /usr/share/nginx/html/

# Informa ao Docker que a aplicação vai escutar na porta 80
EXPOSE 80