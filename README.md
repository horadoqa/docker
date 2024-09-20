# Docker

Isolando ambientes de testes

## O que é Docker e por que ele é tão importante

Docker é um conjunto de produtos de plataforma como serviço que usam virtualização de nível de sistema operacional para entregar software em pacotes chamados contêineres. Os contêineres são isolados uns dos outros e agrupam seus próprios softwares, bibliotecas e arquivos de configuração.

Linguagem de programação: Go

Possibilita criar imagens das aplicações e podem ser utilizadas tanto localmente quanto em kubernetes.


## Conceitos básicos de Imagens e Containers 

Imagem - Tudo que é necessário para executar um container, uma aplicação.

Container - Uma imagem de contêiner do Docker é um pacote de software leve, autônomo e executável que inclui tudo o que é necessário para executar um aplicativo: código, tempo de execução, ferramentas do sistema, bibliotecas do sistema e configurações.

## Comandos essenciais do Docker para criar, gerenciar e remover containers

Common Commands:
  - [run](./comandos/run.md)         Create and run a new container from an 
  - [exec](./comandos/exec.md)        Execute a command in a running container
  - [ps](./comandos/ps.md)          List containers
  - [build](./comandos/build.md)       Build an image from a Dockerfile
  - [pull](./comandos/pull.md)        Download an image from a registry
  - [push](./comandos/push.md)        Upload an image to a registry
  - [images](./comandos/images.md)      List images
  - [login](./comandos/login.md)       Log in to a registry
  - [logout](./comandos)      Log out from a registry
  - [search](./comandos)      Search Docker Hub for images
  - [version](./comandos)     Show the Docker version information
  - [info](./comandos)        Display system-wide information


## Como criar seu próprio Dockerfile e construir imagens customizadas

```bash
FROM nginx

LABEL maintainer="rfahham@hotmail.com"
  
COPY ./site /usr/share/nginx/html/
```

## Dependências

Ter uma conta no [Dockerhunb](https://hub.docker.com/)

Baixar o Docker HUB desktop

Instalar o DOCKER CLI

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Logar no DOCKER CLI

## Criar uma imagem
