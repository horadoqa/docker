# Criando um container com cypress

No Dockerfile tem toda a instrução para criar uma imagem com o cypress Framework

## Criando a imagem (Build) 

```bash
docker build -t cypress:v1 .
```

## Listando as imagens

```bash
docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
cypress        v1       c294d34b5d27   31 seconds ago   492MB
```

## Tagueadno a imagem

```bash
docker tag cypress horadoqa/cypress:v1
```

## Enviando a imagem para o DockerHUB (PUSH)

```bash
docker push horadoqa/cypress:v1
```

## Baixando a imagem (PULL)

```bash
docker pull horadoqa/cypress:v1
```

## Para executar um container a partir de uma imagem Docker

```bash
docker run -it horadoqa/cypress:v1 /bin/bash

docker run -d -p 3000:3000 -v /path/to/tests:/tests cypress-python-image
```

Rodar Testes Cypress:

Você pode rodar os testes em modo gráfico com o comando:
bash
Copiar
docker exec -it <container_id> cypress open
Ou, se preferir rodar os testes em modo headless (sem interface gráfica), use:

bash
Copiar
docker exec -it <container_id> cypress run

## Verificando Containers em Execução

```bash
docker ps
```
## Acessando o container em execução

```bash
docker exec -it <container_id> /bin/bash
```


Integração com Python: Se você quiser integrar o Cypress com seus testes Python (por exemplo, rodar testes de integração em Python e Cypress), crie um script Python para interagir com o Cypress via comandos ou APIs (por exemplo, para rodar testes Cypress e verificar os resultados). Você pode usar subprocess para rodar comandos dentro do contêiner, como:

python
Copiar
import subprocess

# Rodando Cypress em modo headless
result = subprocess.run(["docker", "exec", "<container_id>", "cypress", "run"], capture_output=True)

print(result.stdout.decode())  # Imprime os resultados dos testes Cypress