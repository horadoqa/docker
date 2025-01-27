# Criando um container com playwright

No Dockerfile tem toda a instrução para criar uma imagem com o playwright Framework

## Criando a imagem (Build) 

```bash
docker build -t playwright:v1 .
```

## Listando as imagens

```bash
docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
playwright        v1       c294d34b5d27   31 seconds ago   492MB
```

## Tagueadno a imagem

```bash
docker tag playwright horadoqa/playwright:v1
```

## Enviando a imagem para o DockerHUB (PUSH)

```bash
docker push horadoqa/playwright:v1
```

## Baixando a imagem (PULL)

```bash
docker pull horadoqa/playwright:v1
```

## Para executar um container a partir de uma imagem Docker

```bash
docker run -it horadoqa/playwright:v1 /bin/bash
```

## Verificando Containers em Execução

```bash
docker ps
```
## Acessando o container em execução

```bash
docker exec -it <container_id> /bin/bash
```