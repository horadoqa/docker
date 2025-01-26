# Executando uma Imagem e Acessando o Contêiner

Para executar uma imagem e acessar o terminal de um contêiner interativo, você pode usar o comando abaixo. Neste exemplo, vamos usar a imagem `ubuntu` e acessar o shell do contêiner.

### Comando:

```bash
docker container run -it ubuntu /bin/bash
```

### Explicação dos parâmetros:

- `docker container run`: Inicia um novo contêiner a partir de uma imagem.
- `-it`: Combinado de duas opções:
  - `-i`: Mantenha a entrada (stdin) aberta, permitindo a interação com o contêiner.
  - `-t`: Aloca um pseudo-terminal, o que é necessário para o shell funcionar corretamente.
- `ubuntu`: Nome da imagem que será usada para criar o contêiner. Neste caso, estamos utilizando a imagem oficial do Ubuntu.
- `/bin/bash`: O comando que será executado no contêiner assim que ele for iniciado. No caso, estamos invocando o shell `bash` para interagir com o sistema dentro do contêiner.

### O que acontece ao rodar este comando?

- O Docker irá buscar a imagem `ubuntu` localmente. Caso ela não exista, o Docker fará o download da imagem a partir do **Docker Hub**.
- Após o contêiner ser iniciado, você será direcionado para o shell `/bin/bash` do Ubuntu dentro do contêiner, permitindo interagir com o sistema como se fosse uma máquina independente.

### Exemplo de saída:

Após rodar o comando, você verá algo como:

```bash
root@<ID-do-conteiner>:/#
```

Aqui, você está no terminal do contêiner, onde pode rodar comandos do Ubuntu.

### Finalizando a Sessão:

Para sair do contêiner, basta digitar:

```bash
exit
```

Isso encerrará a sessão do terminal e parará o contêiner.

### Observações:

- O contêiner é efêmero: assim que você sair do terminal (ou finalizar o contêiner), o contêiner será interrompido, mas a imagem usada para criá-lo ainda estará disponível para futuras execuções.
- Se você quiser rodar o contêiner em segundo plano e acessá-lo mais tarde, pode usar o parâmetro `-d` (detached mode) no comando `run`.

---

Essa versão melhora a clareza da explicação e acrescenta mais detalhes para quem pode estar começando com Docker, incluindo informações sobre o comportamento do contêiner e como sair corretamente do ambiente interativo.