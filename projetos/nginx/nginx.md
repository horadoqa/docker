# NGINX com Docker

Neste guia, você aprenderá como executar o Nginx em um contêiner Docker, incluindo como configurar o conteúdo da aplicação e gerenciar o contêiner.

---

## 1. Listando Imagens no Docker

Para listar as imagens Docker existentes em seu repositório local, use o seguinte comando:

```bash
docker images
```

O comando retornará algo como:

```bash
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

Caso não haja nenhuma imagem, o repositório estará vazio.

---

## 2. Executando o Nginx com Docker

### 2.1. Baixando a Imagem do Nginx

Para começar, baixe a imagem oficial do Nginx a partir do Docker Hub:

```bash
docker pull nginx
```

Após o download, verifique a imagem baixada com o comando `docker images`:

```bash
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
nginx        latest    9bea9f2796e2   2 months ago   192MB
```

### 2.2. Executando o Nginx no Docker

Agora, inicie um contêiner do Nginx com o seguinte comando:

```bash
docker run --name meu-nginx -p 8080:80 -d nginx
```

Explicação dos parâmetros utilizados:
- `--name meu-nginx`: Define o nome do contêiner. Você pode alterar "meu-nginx" para o nome que preferir.
- `-p 8080:80`: Mapeia a porta 80 do contêiner para a porta 8080 da sua máquina local. Isso faz com que o Nginx seja acessível via [http://localhost:8080](http://localhost:8080).
- `-d`: Executa o contêiner em segundo plano (modo "detached").
- `nginx`: Especifica a imagem que será usada para criar o contêiner.

### 2.3. Verificando o Nginx em Execução

Para verificar se o contêiner está em funcionamento, use o comando:

```bash
docker ps -a
```

O retorno será semelhante a:

```bash
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                  NAMES
b6b10319e4e2   nginx     "/docker-entrypoint.…"   23 seconds ago   Up 22 seconds   0.0.0.0:8080->80/tcp   meu-nginx
```

Após iniciar o contêiner, acesse [http://localhost:8080](http://localhost:8080) no seu navegador para verificar a página padrão do Nginx.

---

## 3. Alterando o Conteúdo do Nginx (Opcional)

Se você quiser substituir o conteúdo padrão do Nginx pelos seus próprios arquivos HTML, pode montar um diretório local no contêiner. Suponha que você tenha um diretório chamado `meu-site` com os arquivos HTML desejados. Utilize o seguinte comando:

```bash
docker run --name meu-nginx -p 8080:80 -v /caminho/para/meu-site:/usr/share/nginx/html -d nginx
```

Explicação do parâmetro `-v`:
- `-v /caminho/para/meu-site:/usr/share/nginx/html`: Mapeia o diretório local `meu-site` para o diretório onde o Nginx armazena seus arquivos da web (`/usr/share/nginx/html`).

---

## 4. Gerenciando o Contêiner

### 4.1. Parando o Contêiner

Para parar o contêiner em execução, use o comando:

```bash
docker stop meu-nginx
```

O retorno será:

```bash
meu-nginx
```

### 4.2. Excluindo o Contêiner

Se desejar excluir o contêiner, use o comando:

```bash
docker rm meu-nginx
```

---

## 5. Exemplo de Comando Completo

Se você tiver seus arquivos HTML em um diretório local, como `/home/rfahham/projetos/docker/projetos/nginx/site`, pode executar o Nginx com o seguinte comando:

```bash
docker run --name meu-nginx -p 8080:80 -v /home/rfahham/projetos/docker/projetos/nginx/site:/usr/share/nginx/html -d nginx
```

Isso irá mapear o diretório local `site` para o diretório do Nginx, permitindo que você personalize o conteúdo da página.

---

Com essas etapas, você agora pode facilmente configurar e gerenciar o Nginx usando Docker!