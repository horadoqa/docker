# Copiar um arquivo do CONTAINER para o LOCAL

Você pode usar o comando `docker cp` para copiar arquivos ou diretórios de um container para o seu sistema local.

### Sintaxe do comando `docker cp`:

```bash
docker cp <container_id>:<caminho_do_arquivo_no_container> <caminho_destino_local>
```

docker cp ee216cfdbff5:/app/example.png .

### Exemplo de uso:

1. **Copiar um arquivo específico de um container para o diretório atual no seu sistema local:**

   Suponha que você tenha um arquivo dentro de um container chamado `meu_container` e você deseja copiá-lo para o diretório atual no seu computador. O comando seria:

   ```bash
   docker cp meu_container:/caminho/do/arquivo/no/container /caminho/destino/no/seu/pc
   ```

   Exemplo específico:

   Se você quiser copiar o arquivo `/app/output.xml` do container `meu_container` para o diretório atual no seu computador, execute:

   ```bash
   docker cp meu_container:/app/output.xml .
   ```

   O `.` indica o diretório atual do seu terminal.

2. **Copiar um diretório do container para o seu sistema local:**

   Se você quiser copiar um diretório inteiro, basta usar o mesmo comando, mas especificando um diretório em vez de um arquivo. Por exemplo, para copiar o diretório `/app` do container para o diretório atual no seu sistema local:

   ```bash
   docker cp meu_container:/app .
   ```

### Encontrar o `container_id`:

Para encontrar o ID do seu container (caso você não saiba qual é), você pode usar o comando:

```bash
docker ps
```

Isso vai listar todos os containers em execução, mostrando o `CONTAINER ID`, o nome e outras informações úteis.

### Resumo:

- **Comando para arquivo**: `docker cp <container_id>:<caminho_arquivo> <caminho_local>`
- **Comando para diretório**: `docker cp <container_id>:<caminho_diretorio> <caminho_local>`

Isso deve resolver a questão de copiar arquivos do container para o seu computador local. Se precisar de mais ajuda, fique à vontade para perguntar!