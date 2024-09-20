FROM ubuntu:22.04

# Instalar dependências necessárias
RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    wget \
    curl \
    unzip \
    gnupg2 \
    software-properties-common \
    python3.10 \
    python3.10-distutils \
    python3-pip \
    libnss3 \
    libxss1 \
    libgconf-2-4 \
    libxi6 \
    libxrandr2 \
    libasound2 \
    fonts-liberation \
    libappindicator3-1 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libdrm2 \
    libgbm1 \
    libvulkan1 \
    xdg-utils \
    && rm -rf /var/lib/apt/lists/*

# Copiar Google Chrome e ChromeDriver para o container
COPY google-chrome-stable_current_amd64.deb /tmp/

COPY chromedriver /usr/local/bin/

COPY script.sh /tmp/
ENTRYPOINT ["/tmp/script.sh"]

# Instalar Google Chrome
RUN dpkg -i /tmp/google-chrome-stable_current_amd64.deb || apt-get -y install -f && rm /tmp/google-chrome-stable_current_amd64.deb

# Garantir que o ChromeDriver é executável
RUN chmod +x /usr/local/bin/chromedriver

# Upgrade do pip e instalação do Robot Framework e SeleniumLibrary
RUN python3.10 -m pip install --upgrade pip && \
    pip3 install robotframework robotframework-seleniumlibrary webdriver-manager && \
    rm -rf ~/.cache/pip

# RUN apt --fix-broken install

# Definir diretório de trabalho
WORKDIR /robot

# Copiar o arquivo de teste do Robot Framework
COPY cnn.robot .

# Definir volume
VOLUME ["/robot"]

# Comando padrão para rodar os testes
CMD ["robot", "--headless", "cnn.robot"]