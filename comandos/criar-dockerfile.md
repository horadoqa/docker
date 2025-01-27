# Criando e Gerenciando um Dockerfile

O objetivo de criar um `Dockerfile` é definir as instruções necessárias para construir uma imagem Docker. O `Dockerfile` descreve o ambiente e os passos necessários para construir e configurar uma aplicação, que será executada dentro de um contêiner. Ele automatiza a configuração do contêiner, incluindo a instalação de dependências, cópia de arquivos, definição de variáveis de ambiente e especificação do comando que será executado ao iniciar o contêiner.

### Exemplo de um Dockerfile simples:

```Dockerfile
FROM nginx
LABEL maintainer="horadoqa@gmail.com"
EXPOSE 80
```

### Passos para construir e executar a imagem

#### 1. Criando a Imagem

Para criar uma imagem a partir de um `Dockerfile`, você deve executar o seguinte comando no diretório onde o arquivo `Dockerfile` está localizado:

```bash
docker build -t site-horadoqa .
```

- **`-t site-horadoqa`**: Define o nome da imagem como `site-horadoqa`.
- **`.`**: Especifica o contexto de build, ou seja, o diretório atual (onde está o Dockerfile).

#### 2. Executando o Contêiner

Após a construção da imagem, você pode executar um contêiner a partir dela. O comando abaixo cria um contêiner e mapeia a porta 80 do contêiner para a porta 8080 no seu computador local:

```bash
docker run --name site-horadoqa -p 8080:80 -d site-horadoqa
```

- **`--name site-horadoqa`**: Dá um nome ao contêiner.
- **`-p 8080:80`**: Mapeia a porta 80 do contêiner para a porta 8080 no host local.
- **`-d`**: Executa o contêiner em modo "detached" (em segundo plano).
- **`site-horadoqa`**: Especifica a imagem a ser usada para criar o contêiner.

#### 3. Verificando o Contêiner em Execução

Para verificar se o contêiner está em execução, você pode usar o comando:

```bash
docker ps
```

Isso mostrará os contêineres em execução, incluindo o ID do contêiner, nome, status e as portas mapeadas.

Exemplo de saída:

```bash
CONTAINER ID   IMAGE           COMMAND                  CREATED         STATUS         PORTS                  NAMES
cfab89fb98de   site-horadoqa   "/docker-entrypoint.…"   4 seconds ago   Up 3 seconds   0.0.0.0:8080->80/tcp   site-horadoqa
```

#### 4. Acessando o Site no Navegador

Agora, você pode abrir o navegador e acessar o site utilizando o seguinte endereço:

[http://localhost:8080](http://localhost:8080)

#### 5. Removendo o Contêiner

Quando não precisar mais do contêiner, você pode removê-lo utilizando o comando:

```bash
docker rm -f <ID do CONTAINER>
```

Substitua `<ID do CONTAINER>` pelo ID do contêiner listado pelo comando `docker ps`.

### Criando e Executando uma Nova Versão da Imagem

#### 6. Exemplo do Dockerfile para a Versão 1

Agora, vamos criar uma versão 1 da aplicação. Para isso, você pode modificar o `Dockerfile` para copiar o conteúdo de um diretório local para o contêiner.

Exemplo do `Dockerfile`:

```Dockerfile
FROM nginx
LABEL maintainer="horadoqa@gmail.com"
COPY ./site/v1 /usr/share/nginx/html/
EXPOSE 80
```

Aqui, estamos copiando os arquivos da pasta `./site/v1` para o diretório onde o Nginx serve os arquivos web (`/usr/share/nginx/html/`).

#### 7. Criando a Imagem da Versão 1

Para criar a imagem `site-horadoqa-v1` a partir do `Dockerfile` atualizado, execute o comando:

```bash
docker build -t site-horadoqa-v1 .
```

#### 8. Executando a Versão 1 da Imagem

Após criar a imagem, execute um contêiner da versão 1 com o seguinte comando:

```bash
docker run --name site-horadoqa-v1 -p 8080:80 -d site-horadoqa-v1
```

#### 9. Verificando a Versão 1 do Contêiner

Para verificar se o contêiner da versão 1 está em execução, use novamente o comando:

```bash
docker ps
```

#### 10. Removendo o Contêiner da Versão 1

Após verificar que a versão 1 do contêiner está funcionando corretamente, você pode removê-lo com:

```bash
docker rm -f <ID do CONTAINER>
```

---

[Próximo passo...Enviar a imagem criada para o Docker Hub](push.md)