# docker pull

Se você quer **baixar uma imagem** do **Docker Hub (Docker Registry)** para o seu ambiente local, o comando que você usa é o `docker pull`. Esse comando permite que você baixe uma imagem do Docker Hub para o seu computador, tornando-a disponível para rodar em contêineres.

Aqui está como você pode fazer isso:

### Passo 1: Usar o comando `docker pull`

Para baixar uma imagem do Docker Hub, basta rodar o comando `docker pull` seguido do nome da imagem. Por exemplo, se você quiser baixar a imagem oficial do **nginx**:

```bash
docker pull nginx
```

Se você quiser baixar uma imagem com uma tag específica, por exemplo, a versão `alpine` do **nginx**, você deve adicionar a tag:

```bash
docker pull nginx:alpine
```

### Passo 2: Confirmar que a imagem foi baixada

Após o comando ser executado, o Docker irá baixar a imagem. Você pode verificar se a imagem foi baixada corretamente utilizando o comando:

```bash
docker images
```

Isso listará todas as imagens disponíveis localmente no seu sistema. Você deve ver a imagem `nginx` (ou a imagem que você baixou) na lista.

### Resumo:

- **Comando para baixar uma imagem**: `docker pull <nome_da_imagem>:<tag>`
- **Exemplo básico**: `docker pull nginx`
- **Comando para ver as imagens locais**: `docker images`

O `docker pull` pode ser usado para baixar qualquer imagem pública do Docker Hub ou de outros registries. Basta saber o nome e a tag correta da imagem que você quer usar!