# docker push

Para enviar uma imagem para o Docker Hub, você deve seguir alguns passos. Aqui está um passo a passo básico:

### 1. **Faça login no Docker Hub:**

Primeiro, se você ainda não está autenticado, faça login no Docker Hub com o comando:

```bash
docker login
```

Isso pedirá seu nome de usuário e senha do Docker Hub.

### 2. **Marque (tag) a imagem com o nome de usuário e o repositório no Docker Hub:**

Antes de enviar a imagem, você precisa garantir que ela tenha o nome correto. O formato para a tag é:

```
<usuário>/<nome_do_repositório>:<tag>
```

Por exemplo, se seu nome de usuário no Docker Hub for `meuusuario` e você quiser enviar a imagem chamada `minhaimagem` com a tag `v1`, o comando seria:

```bash
docker tag site-horadoqa-v1 horadoqa/site-horadoqa:v1
```

```bash
docker tag site-horadoqa-v2 horadoqa/site-horadoqa:v2
```

### 3. **Envie a imagem para o Docker Hub:**

Agora, você pode enviar a imagem usando o comando `docker push`:

```bash
docker push horadoqa/site-horadoqa:v1
```

```bash
docker push horadoqa/site-horadoqa:v2
```

Isso fará o upload da sua imagem para o repositório `horadoqa/site-horadoqa` com a tag `v1` no Docker Hub.

### Resumo do fluxo:
1. Faça login: `docker login`
2. Marque a imagem: `docker tag site-horadoqa horadoqa/site-horadoqa:v1`
3. Envie a imagem: `docker push horadoqa/site-horadoqa:v1`

Depois de enviado, sua imagem estará disponível no seu Docker Hub, e você poderá compartilhá-la com outros ou usá-la em diferentes ambientes.
