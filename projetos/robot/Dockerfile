FROM ubuntu:latest

# Instalar dependências necessárias
RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    wget \
    curl \
    unzip \
    gnupg2 \
    software-properties-common \
    libnss3 \
    libxss1 \
    libxi6 \
    libxrandr2 \
    fonts-liberation \
    libappindicator3-1 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libdrm2 \
    libgbm1 \
    libvulkan1 \
    xdg-utils \
    chromium-browser \
    && rm -rf /var/lib/apt/lists/*

# Adicionar o repositório do Python 3.10 e instalar
RUN apt-get update && apt-get install -y \
    software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update \
    && apt-get install -y python3.10 python3.10-distutils python3.10-dev

# Instalar o pip para o Python 3.10
RUN wget https://bootstrap.pypa.io/get-pip.py && python3.10 get-pip.py && rm get-pip.py

# Instalar o Google Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp/ && \
    dpkg -i /tmp/google-chrome-stable_current_amd64.deb || apt-get -y install -f && rm /tmp/google-chrome-stable_current_amd64.deb

# Baixar o ChromeDriver
RUN wget https://storage.googleapis.com/chrome-for-testing-public/132.0.6834.110/linux64/chromedriver-linux64.zip -P /tmp/ && \
    unzip /tmp/chromedriver-linux64.zip -d /tmp/ && \
    mv /tmp/chromedriver-linux64/chromedriver /usr/local/bin/ && \
    rm /tmp/chromedriver-linux64.zip

# Instalar o webdriver-manager para gerenciamento do ChromeDriver
RUN python3.10 -m pip install webdriver-manager

# Copiar o script e garantir que o mesmo seja executável
COPY script.sh /tmp/
RUN chmod +x /tmp/script.sh
ENTRYPOINT ["/tmp/script.sh"]

# Upgrade do pip e instalação do Robot Framework e SeleniumLibrary
RUN python3.10 -m pip install --upgrade pip && \
    python3.10 -m pip install robotframework robotframework-seleniumlibrary && \
    rm -rf ~/.cache/pip

# Definir diretório de trabalho
WORKDIR /robot

# Copiar o arquivo de teste do Robot Framework
COPY horadoqa.robot /robot/horadoqa.robot

# Definir volume
VOLUME ["/robot"]

# Comando padrão para rodar os testes
CMD ["robot", "/robot/horadoqa.robot"]
