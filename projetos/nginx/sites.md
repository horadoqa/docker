# Executar Container em portas diferentes

Para executar os três sites ao mesmo tempo em contêineres separados, você precisará **variar as portas** no host (máquina local) para garantir que cada contêiner possa ser acessado de forma independente.

### Como funciona?

Cada contêiner Docker pode expor a mesma porta interna (por exemplo, a porta 80, que é a porta padrão para servidores web), mas as portas expostas no host (máquina local) devem ser **diferentes** para evitar conflito. Ou seja, você mapeará a mesma porta interna 80 do contêiner para diferentes portas do host.

### Exemplo:

Vamos supor que você tenha três imagens de contêineres diferentes para os três sites. Você pode executar os contêineres da seguinte maneira:

#### 1. Contêiner 1 (Site 1):

```bash
docker run --name site-horadoqa -p 8080:80 -d site-horadoqa
```

Aqui, a porta 80 do contêiner `site-horadoqa` está sendo mapeada para a porta 8080 no seu host.

#### 2. Contêiner 2 (Site 2):

```bash
docker run --name site-horadoqa-v1 -p 8081:80 -d site-horadoqa-v1
```

Neste caso, a porta 80 do contêiner `site-horadoqa-v1` está sendo mapeada para a porta 8082 no seu host.

#### 3. Contêiner 3 (Site 3):

```bash
docker run --name site-horadoqa-v2 -p 8082:80 -d site-horadoqa-v2
```

Aqui, a porta 80 do contêiner `site-horadoqa-v1` está sendo mapeada para a porta 8083 no seu host.

### Como acessar os sites?

Agora, você pode acessar os três sites simultaneamente, através de diferentes portas no seu navegador:

- **Site 1**: [http://localhost:8081](http://localhost:8081)
- **Site 2**: [http://localhost:8082](http://localhost:8082)
- **Site 3**: [http://localhost:8083](http://localhost:8083)

### Resumo:

- **Sim**, você precisa variar as portas **no host** para que os contêineres não entrem em conflito.
- **Não há problema em os contêineres compartilharem a mesma porta interna** (por exemplo, 80), mas você precisa mapear portas diferentes no host para acessá-los simultaneamente.

Se precisar de mais alguma coisa, estou por aqui!