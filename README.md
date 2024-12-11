# Docker

Isolando ambientes de testes

## O que é Docker e por que ele é tão importante

Docker é um conjunto de produtos de plataforma como serviço que usam virtualização de nível de sistema operacional para entregar software em pacotes chamados contêineres. Os contêineres são isolados uns dos outros e agrupam seus próprios softwares, bibliotecas e arquivos de configuração.

Linguagem de programação: Go

Possibilita criar imagens das aplicações e podem ser utilizadas tanto localmente quanto em kubernetes.

## Conceitos básicos de Imagens e Containers 

Imagem - Sistema de arquivos para criar um container, uma aplicação.

Container - Uma imagem de contêiner do Docker é um pacote de software leve, autônomo e executável que inclui tudo o que é necessário para executar um aplicativo: código, tempo de execução, ferramentas do sistema, bibliotecas do sistema e configurações.

## Arquitetura

A arquitetura do Docker é baseada em um modelo cliente-servidor, com três componentes principais:

**Docker Client:** A interface com o usuário, onde comandos Docker são executados (por exemplo, docker run). O cliente se comunica com o Docker daemon para realizar ações como construir, executar e gerenciar containers.

**Docker Daemon:** O processo que executa e gerencia containers. Ele lida com a criação, execução e monitoramento de containers, além de se comunicar com o Docker registry para baixar ou armazenar imagens.

**Docker Registry:** Repositório onde as imagens Docker são armazenadas e distribuídas. O Docker Hub é o registry público mais popular, mas também é possível configurar registros privados.

## Instalação

- [MAC ou WINDOWS](./install/mac-win.md)
- [WSL](./install/wsl.md)
- [LINUX](./install/linux.md)

## Comandos essenciais do Docker para criar, gerenciar e remover containers

Common Commands:
  - [run](./comandos/run.md) - Criando e executando um novo container a partir de uma imagem 
  - [exec](./comandos/exec.md) - Executa um comando em um container
  - [ps](./comandos/ps.md) - Listando os containers
  - [tag](./comandos/tag.md) - Cria a TAG da imagem
  - [build](./comandos/build.md) - Construindo uma imagea a partir do Dockerfile
  - [pull](./comandos/pull.md) - Fazendo o Download de uma imagem do Docker Registry(DockerHub)
  - [push](./comandos/push.md) - Fazendo o Upload de uma imagem para o Docker Registry(DockerHub)
  - [images](./comandos/images.md) - Listandos as imagens
  - [login](./comandos/login.md) - Fazendo o Log in no Docker Registry(DockerHub)
  - [logout](./comandos/logout.md) - Fazendo o Log out no Docker Registry(DockerHub)
  - [search](./comandos/search.md) - Procurando no Docker Hub as images
  - [version](./comandos/versao.md) - Verifica a versão do Docker
  - [info](./comandos/info.md) - Verificando informações do system-wide
  - [Dockerfile](./comandos/criar-dockerfile.md) - Criando um Dockerfile
  - [rm](./comandos/rm.md) - Removendo um container 
  - [rmi](./comandos/rmi.md) - Removendo uma imagem
  - [stop](./comandos/stop.md) - Parando a execução de um container

## Recomendações

No VSCODE, instalar a extensão `Docker`, irá ajudar durante o trabalho.

# Projetos

- [NGINX](./projetos/nginx/nginx.md)
- [POSTGRESQL](./projetos/postgresql/postgres.md)
- [CYPRESS](./projetos/cypress/README.md)
- [ROBOT](./projetos/robot/README.md)
- [SELENIUM](./projetos/selenium/README.md)