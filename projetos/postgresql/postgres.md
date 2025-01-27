# POSTGRES

Precisa passar informações com variáveis de ambiente, conforme a documentação

POSTGRES_PASSWORD
POSTGRES_USER
POSTGRES_DB

```bash
docker run -d -e POSTGRES_PASSWORD=1q2w3e4r -e POSTGRES_USER=horadoqa -e POSTGRES_DB=horadoqa -p 5432:5432 postgres
```

Criando um volume

```bash
docker run -d -e POSTGRES_PASSWORD=1q2w3e4r -e POSTGRES_USER=horadoqa -e POSTGRES_DB=horadoqa -p 5432:5432 -v /custom/mount:/var/lib/postgresql/data postgres
```


Como executar o script Python:
Rodando o Script Python no Docker:

O script Python pode ser rodado diretamente dentro do contêiner. Para isso, copie o script Python para o contêiner usando um volume ou rode diretamente o script via docker exec.
Exemplo de como rodar o script dentro do contêiner:

```bash
docker exec -it <container_id> python3 /path/to/your/script.py
```

Utilizar o dbeaver para acessar o banco de dados

DBEAVER