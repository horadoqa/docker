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

Utilizar o dbeaver para acessar o banco de dados

DBEAVER