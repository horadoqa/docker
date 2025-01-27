# Usar uma imagem base com Python
FROM python:3.9-slim

# Instalar as dependências do sistema para Playwright
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    vim \
    libglib2.0-0 \
    libnss3 \
    libgdk-pixbuf2.0-0 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libx11-xcb1 \
    libgbm1 \
    libnspr4 \
    libnss3 \
    libxcomposite1 \
    libxrandr2 \
    libxss1 \
    libxtst6 \
    fonts-liberation \
    libappindicator3-1 \
    libasound2 \
    xdg-utils \
    && apt-get clean

# Instalar o Playwright
RUN pip install playwright

# Baixar os navegadores necessários para o Playwright
RUN python -m playwright install

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o código para dentro do container
COPY . .

# Rodar o script com Playwright
CMD ["python", "horadoqa.py"]
