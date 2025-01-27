import psycopg2

# Conectando ao banco de dados PostgreSQL
connection = psycopg2.connect(
    dbname="testdb",
    user="testuser",
    password="testpassword",
    host="localhost",  # Pode ser "localhost" ou o IP do contêiner
    port="5432"
)

cursor = connection.cursor()

# Criando uma tabela de exemplo
cursor.execute("CREATE TABLE IF NOT EXISTS users (id SERIAL PRIMARY KEY, name VARCHAR(100));")

# Inserindo dados
cursor.execute("INSERT INTO users (name) VALUES (%s)", ("Alice",))

# Cometendo as alterações
connection.commit()

# Consultando os dados
cursor.execute("SELECT * FROM users;")
print(cursor.fetchall())  # Imprime todos os dados na tabela

# Fechando a conexão
cursor.close()
connection.close()
