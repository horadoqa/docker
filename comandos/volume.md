# Criando Volumes

No Docker, você pode criar e usar volumes para persistir dados de contêineres, compartilhar dados entre contêineres e gerenciar armazenamento de maneira eficiente. Para criar e usar volumes no Docker, você pode seguir as instruções abaixo.

### 1. **Criar um Volume Docker**
Para criar um volume, você pode usar o comando `docker volume create`.

```bash
docker volume create nome-do-volume
```

Exemplo:
```bash
docker volume create meu_volume
```

Isso cria um volume chamado `meu_volume`. O Docker irá gerenciar esse volume para você e ele será armazenado no diretório de volumes do Docker (geralmente em `/var/lib/docker/volumes` no host).

### 2. **Listar Volumes Criados**
Você pode listar todos os volumes criados no Docker com o comando:

```bash
docker volume ls
```

Isso mostrará uma lista de volumes disponíveis.

### 3. **Inspecionar um Volume**
Para ver informações detalhadas sobre um volume (como o ponto de montagem), você pode usar o comando `docker volume inspect`:

```bash
docker volume inspect nome-do-volume
```

Exemplo:
```bash
docker volume inspect meu_volume
```

### 4. **Usar um Volume em um Contêiner**
Você pode montar um volume em um contêiner usando a opção `-v` ou `--mount` ao executar o contêiner. Isso permite que o contêiner armazene dados persistentes ou compartilhe dados com outros contêineres.

#### Usando `-v` (modo curto):
```bash
docker run -v nome-do-volume:/caminho/no/container nome-da-imagem
```

Exemplo:
```bash
docker run -v meu_volume:/data my_image
```
Isso irá montar o volume `meu_volume` no diretório `/data` do contêiner.

#### Usando `--mount` (modo longo, mais flexível):
```bash
docker run --mount source=nome-do-volume,target=/caminho/no/container nome-da-imagem
```

Exemplo:
```bash
docker run --mount source=meu_volume,target=/data my_image
```

### 5. **Remover um Volume**
Se você quiser remover um volume que não está mais em uso, pode usar o comando `docker volume rm`.

```bash
docker volume rm nome-do-volume
```

Exemplo:
```bash
docker volume rm meu_volume
```

Isso excluirá o volume, desde que não esteja mais em uso por nenhum contêiner. Se houver contêineres usando o volume, o Docker não permitirá que o volume seja removido até que ele não esteja mais em uso.

### 6. **Remover Volumes Não Usados**
Para limpar volumes que não estão mais em uso por nenhum contêiner, você pode usar o comando `docker volume prune`. Isso removerá todos os volumes que não estão em uso por contêineres ativos.

```bash
docker volume prune
```

Ele pedirá confirmação antes de excluir volumes não usados.

### Exemplos de Comandos:

1. Criar um volume:
   ```bash
   docker volume create meus_dados
   ```

2. Rodar um contêiner com volume montado:
   ```bash
   docker run -d -v meus_dados:/app/data my_image
   ```

3. Listar volumes:
   ```bash
   docker volume ls
   ```

4. Inspecionar um volume:
   ```bash
   docker volume inspect meus_dados
   ```

5. Remover um volume:
   ```bash
   docker volume rm meus_dados
   ```

6. Remover volumes não utilizados:
   ```bash
   docker volume prune
   ```

Esses são os passos básicos para criar e gerenciar volumes no Docker. Volumes são uma ótima maneira de persistir dados e garantir que os dados do seu contêiner não sejam perdidos ao reiniciar ou remover contêineres.
