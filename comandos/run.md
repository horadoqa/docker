# Executando uma imagem

```bash
docker run <imagem>
```

ou

```bash
docker container run <imagem>
```

Exemplo:

```bash
docker container run hello-world
```

Nesse processo, o comando vai fazer o download da imagem `hello-world`, executar a imagem e depois destruir o container.

Na próxima execução, não fará mais o download.

