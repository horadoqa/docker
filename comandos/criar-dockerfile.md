# Criando um Dockerfile

```bash
FROM nginx

LABEL maintainer="horadoqa@gmail.com"
  
COPY ./site /usr/share/nginx/html/

# Expôr a porta 80 (padrão do Nginx)
EXPOSE 80
```

## Construindo e executando a imagem

1. Criar a imagem a partir do Dockerfile (no mesmo diretório onde o Dockerfile está localizado):

```bash
docker build -t meu-nginx .
```

2. Executar o contêiner a partir da imagem gerada (com o mapeamento de volume local):

```bash
docker run --name meu-nginx -p 8080:80 -d meu-nginx
```

3. Verificando o container criado com o Dockerfile
```bash
docker ps

CONTAINER ID   IMAGE       COMMAND                  CREATED         STATUS         PORTS                  NAMES
cfab89fb98de   meu-nginx   "/docker-entrypoint.…"   4 seconds ago   Up 3 seconds   0.0.0.0:8080->80/tcp   meu-nginx
```

4. Abrir o site no browser no seguinte endereço: http://localhost:8080/

5. Excluir o `CONTAINER` que está em execução:

```bash
 docker rm cfa

Error response from daemon: cannot remove container "/meu-nginx": container is running: stop the container before removing or force remove
```

No caso acima estamos tentando excluir um container que está em execução, recebemos a mensagem que não pode ser excluído. 

6. Para excluir um `CONATINER` que está em execução: 

```bash
docker rm -f cfa
```