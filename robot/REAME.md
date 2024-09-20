# Criando um container com ROBOT

No Dockerfile tem toda a instrução para criar uma imagem com o ROBOT Framework



## Criando a imagem (Build) 

```bash
docker build -t robot:7.1 .
```

## Listando as imagens

```bash
docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
robot        7.1       c294d34b5d27   31 seconds ago   492MB
```

## Tagueadno a imagem

```bash
docker tag robot horadoqa/robot:7.1
```

## Enviando a imagem para o DockerHUB (PUSH)

```bash
docker push horadoqa/robot:7.1
```

## Baixando a imagem (PULL)

```bash
docker pull horadoqa/robot:7.1
```

## Para executar um container a partir de uma imagem Docker

```bash
docker run -it horadoqa/robot:7.1 /bin/bash
```

## Verificando Containers em Execução

```bash
docker ps
```
## Acessando o container em execução

```bash
docker exec -it <container_id> /bin/bash
```