# Usando uma imagem base com Python e Node.js
FROM python:3.9-slim

# Instalando dependências do sistema e Node.js (para instalar o Cypress)
RUN apt-get update && apt-get install -y \
    curl \
    libgtk2.0-0 \
    libgbm-dev \
    libx11-dev \
    libxcomposite1 \
    libxrandr2 \
    libgdk-pixbuf2.0-0 \
    libasound2 \
    libnss3 \
    libxtst6 \
    xdg-utils \
    && rm -rf /var/lib/apt/lists/*

# Instalando o Node.js (necessário para o Cypress)
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Instalando o Cypress
RUN npm install -g cypress

# Instalando as dependências Python necessárias para interagir com o Cypress (usando, por exemplo, o `pytest` e `requests` para integração com APIs, etc.)
RUN pip install --no-cache-dir pytest requests

# Criando um diretório para os testes
WORKDIR /tests

# Expondo a porta 3000 para o Cypress (caso esteja rodando uma aplicação de teste)
EXPOSE 3000

# Comando para rodar os testes Cypress (executando a interface gráfica, se necessário)
CMD ["cypress", "open"]
