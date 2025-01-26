# Docker exec

O comando `docker exec` é utilizado para **executar comandos em um contêiner que já está em execução**. Diferente do comando `docker run`, que inicia um contêiner, o `docker exec` permite que você interaja com um contêiner que já foi iniciado, executando comandos ou abrindo um terminal dentro dele.

### Usos principais do `docker exec`:

1. **Executar um comando específico** em um contêiner em execução.
2. **Acessar um terminal interativo** dentro de um contêiner para realizar tarefas de administração ou debug.

### Sintaxe básica:

```bash
docker exec [opções] <nome_ou_id_do_container> <comando>
```

### Exemplo de uso:

#### 1. Executando um comando simples em um contêiner em execução:

Se você tem um contêiner em execução e deseja rodar um comando, como `ls` para listar os arquivos, pode fazer o seguinte:

```bash
docker exec nome_do_container cat /usr/share/nginx/html
```

Isso irá mostrar o conteúdo do diretório `v` dentro do contêiner em execução.

#### 2. Acessando o shell do contêiner interativamente:

Se você deseja abrir um terminal interativo dentro de um contêiner, você pode usar a opção `-it` com o comando `exec`, da mesma forma que no `docker run`:

```bash
docker exec -it nome_do_container /bin/bash
```

Esse comando abrirá um shell `bash` no contêiner em execução, permitindo que você execute comandos diretamente dentro dele.

### Explicação dos parâmetros:

- `docker exec`: O comando principal para executar comandos em contêineres em execução.
- `-it`: Combinação de duas opções:
  - `-i`: Mantenha a entrada (stdin) aberta para interação.
  - `-t`: Aloca um terminal para o contêiner.
- `<nome_ou_id_do_container>`: O nome ou ID do contêiner onde você deseja executar o comando.
- `<comando>`: O comando ou shell que será executado dentro do contêiner.

### Exemplo de saída:

Se você executar o comando para acessar o shell bash de um contêiner:

```bash
docker exec -it meu_container /bin/bash
```

Você verá algo como:

```bash
root@<id_do_container>:/#
```

Agora você pode executar comandos dentro do contêiner como se estivesse em uma máquina normal.

### Quando usar `docker exec`?

- Quando você já tem um contêiner em execução e precisa rodar um comando sem interromper o contêiner.
- Para tarefas de administração, debug ou manutenção dentro de um contêiner.
- Para verificar logs, editar arquivos ou executar scripts no contêiner em tempo de execução.

### Observação:

- **`docker exec` não reinicia o contêiner**. Ele apenas executa comandos enquanto o contêiner está ativo.
- **Contêineres em segundo plano**: Mesmo se o contêiner estiver em modo "detached" (executando em segundo plano), você pode usar `docker exec` para interagir com ele.

Em resumo, o `docker exec` é super útil quando você precisa interagir com contêineres em execução de maneira pontual, sem precisar reiniciar ou interromper o contêiner.