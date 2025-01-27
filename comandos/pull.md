# docker pull

Se você quer **baixar uma imagem** do **Docker Hub (Docker Registry)** para o seu ambiente local, o comando que você usa é o `docker pull`. Esse comando permite que você baixe uma imagem do Docker Hub para o seu computador, tornando-a disponível para rodar em contêineres.

Aqui está como você pode fazer isso:

### Passo 1: Usar o comando `docker pull`

Para baixar uma imagem do Docker Hub, basta rodar o comando `docker pull` seguido do nome da imagem. Por exemplo, se você quiser baixar a imagem oficial do **nginx**:

```bash
docker pull horadoqa/site-horadoqa:v2
```

### Passo 2: Confirmar que a imagem foi baixada

Após o comando ser executado, o Docker irá baixar a imagem. Você pode verificar se a imagem foi baixada corretamente utilizando o comando:

```bash
docker images
```

Isso listará todas as imagens disponíveis localmente no seu sistema. Você deve ver a imagem `nginx` (ou a imagem que você baixou) na lista.

### Passo 3: Rodar a imagem

```bash
docker run --name site-horadoqa-v2 -p 8080:80 -d site-horadoqa-v2
```