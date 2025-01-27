# Usando a imagem base do Python
FROM python:3.9-slim

# Instalando dependências do sistema
RUN apt-get update && apt-get install -y \
    postgresql \
    postgresql-contrib \
    && rm -rf /var/lib/apt/lists/*

# Instalando o psycopg2 para o Python
RUN pip install --no-cache-dir psycopg2-binary

# Criando um banco de dados de teste
RUN service postgresql start && \
    sudo -u postgres psql -c "CREATE DATABASE testdb;" && \
    sudo -u postgres psql -c "CREATE USER testuser WITH PASSWORD 'testpassword';" && \
    sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE testdb TO testuser;"

# Expondo a porta padrão do PostgreSQL
EXPOSE 5432

# Comando para rodar o PostgreSQL em segundo plano e, em seguida, rodar o Python
CMD service postgresql start && tail -f /dev/null
