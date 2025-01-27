# Usando uma imagem base com Python
FROM python:3.9-slim

# Instalando dependências do sistema
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
    ca-certificates \
    libx11-dev \
    libxi6 \
    libgconf-2-4 \
    libnss3 \
    libgdk-pixbuf2.0-0 \
    libdbus-1-3 \
    libxtst6 \
    xdg-utils \
    google-chrome-stable \
    && rm -rf /var/lib/apt/lists/*

# Instalando o Selenium e o WebDriver Manager
RUN pip install --no-cache-dir selenium webdriver-manager

# Baixando o ChromeDriver (versão compatível com o Chrome instalado)
RUN wget https://chromedriver.storage.googleapis.com/113.0.5672.63/chromedriver_linux64.zip -O /chromedriver.zip \
    && unzip /chromedriver.zip -d /usr/local/bin/ \
    && rm /chromedriver.zip

# Expondo a porta padrão do Selenium
EXPOSE 4444

# Definindo o comando para rodar o servidor do Selenium no modo Grid
CMD ["python", "-m", "http.server", "4444"]
