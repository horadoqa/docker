# Usando uma imagem base com Python
FROM python:3.9-slim

# Atualizando o pip
RUN pip install --upgrade pip

# Instalar dependências do sistema (caso necessário)
RUN apt-get update && apt-get install -y \
    wget \
    vim \
    unzip \
    libglib2.0-0 \
    libx11-6 \
    libgdk-pixbuf2.0-0 \
    libpango-1.0-0 \
    libatk1.0-0 \
    ca-certificates \
    curl \
    && apt-get clean

# Instalar o Google Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    dpkg -i google-chrome-stable_current_amd64.deb \
    apt-get install -f

# Baixar o ChromeDriver
RUN wget https://storage.googleapis.com/chrome-for-testing-public/132.0.6834.110/linux64/chromedriver-linux64.zip -P /tmp/ && \
    unzip /tmp/chromedriver-linux64.zip -d /tmp/ && \
    mv /tmp/chromedriver-linux64/chromedriver /usr/local/bin/ && \
    rm /tmp/chromedriver-linux64.zip
    
# Definindo o diretório de trabalho no container
WORKDIR /app

# Copiando o arquivo de requisitos (caso você tenha um requirements.txt) para o container
COPY requirements.txt .

# Instalando as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Definir diretório de trabalho
WORKDIR /robot

# Copiar o arquivo de teste do Robot Framework
COPY horadoqa.robot /robot/horadoqa.robot

# Definindo o comando para rodar os testes do Robot Framework
CMD ["robot", "horadoqa.robot"]

