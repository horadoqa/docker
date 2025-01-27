# Usando uma imagem base com o OpenJDK
FROM openjdk:17-slim

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
    && rm -rf /var/lib/apt/lists/*

# Baixando o Selenium Server Standalone
RUN wget https://github.com/SeleniumHQ/selenium/releases/download/selenium-4.5.0/selenium-server-4.5.0.jar -O /selenium-server.jar

# Baixando o ChromeDriver (alterar a versão conforme necessário)
RUN wget https://chromedriver.storage.googleapis.com/113.0.5672.63/chromedriver_linux64.zip -O /chromedriver.zip \
    && unzip /chromedriver.zip -d /usr/local/bin/ \
    && rm /chromedriver.zip

# Baixando o Google Chrome
RUN curl -sSL https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o google-chrome.deb \
    && dpkg -i google-chrome.deb \
    && apt-get -f install -y \
    && rm google-chrome.deb

# Expondo a porta padrão do Selenium
EXPOSE 4444

# Comando para rodar o Selenium
CMD ["java", "-jar", "/selenium-server.jar", "standalone", "--host", "0.0.0.0"]
