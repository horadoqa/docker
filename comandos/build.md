# BUILD

Criando um imagem a partir do [Dockerfile](criar-dockerfile.md)

```bash
docker build -t <nome da imagem> -f Dockerfile .
```

Executando

```bash
docker run -d -p 8080:8080 <nome da imagem>
```

