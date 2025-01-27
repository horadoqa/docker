#Especifica a imagem base para o contêiner.
FROM nginx

# Fornece informações de contato sobre quem mantém ou desenvolve a imagem
LABEL maintainer="horadoqa@gmail.com"

#Copia o conteúdo da pasta v1 para o CONTAINER
COPY ./site/v2 /usr/share/nginx/html/

# Informa ao Docker que a aplicação vai escutar na porta 80
EXPOSE 80