# Para instalar o Docker utilizando o WSL (Windows Subsystem for Linux), siga as etapas abaixo:

## Pré-requisitos:
1. **Windows 10 ou superior** com WSL 2.
2. **WSL 2** instalado e configurado com uma distribuição Linux (por exemplo, Ubuntu).

## Passo 1: Habilitar WSL e Instalar o WSL 2
1. **Habilitar o WSL e a Virtualização**:
   - Abra o PowerShell como administrador e execute:
     ```powershell
     wsl --install
     ```
     Isso instalará o WSL e configurará o WSL 2 por padrão.
   - Se o comando acima não funcionar, siga os passos para habilitar o WSL manualmente:
     1. Execute os seguintes comandos no PowerShell para habilitar os recursos necessários:
        ```powershell
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
        dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
        ```
     2. Reinicie o computador, se solicitado.

2. **Instalar uma distribuição Linux**:
   - Baixe uma distribuição Linux da Microsoft Store (por exemplo, Ubuntu).

3. **Verificar a versão do WSL**:
   - Após a instalação, defina o WSL 2 como a versão padrão, se necessário:
     ```powershell
     wsl --set-default-version 2
     ```

4. **Iniciar a distribuição Linux**:
   - Abra o terminal da distribuição Linux (por exemplo, Ubuntu) e configure-a com o usuário desejado.

## Passo 2: Instalar o Docker no WSL
1. **Instalar as dependências no Linux (Ubuntu)**:
   - Abra a distribuição Linux no WSL e execute os seguintes comandos para instalar o Docker:
     ```bash
     sudo apt update
     sudo apt install apt-transport-https ca-certificates curl software-properties-common
     ```

2. **Adicionar o repositório oficial do Docker**:
   - Adicione a chave GPG do Docker:
     ```bash
     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
     ```
   - Adicione o repositório Docker ao seu sistema:
     ```bash
     sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
     ```

3. **Instalar o Docker**:
   - Atualize os pacotes e instale o Docker:
     ```bash
     sudo apt update
     sudo apt install docker-ce
     ```

4. **Iniciar o serviço do Docker**:
   - Após a instalação, inicie o Docker e configure-o para iniciar automaticamente:
     ```bash
     sudo service docker start
     sudo systemctl enable docker
     ```

5. **Adicionar seu usuário ao grupo Docker**:
   - Para usar o Docker sem o `sudo`, adicione seu usuário ao grupo Docker:
     ```bash
     sudo usermod -aG docker $USER
     ```
   - Em seguida, saia e entre novamente no terminal para que as alterações tenham efeito.

## Passo 3: Testar a instalação do Docker
1. **Verificar a versão do Docker**:
   - No terminal do WSL, execute:
     ```bash
     docker --version
     ```
   - Isso deve mostrar a versão instalada do Docker.

2. **Testar a execução de um container**:
   - Execute o seguinte comando para testar o Docker com um container simples:
     ```bash
     docker run hello-world
     ```
   - Isso fará o download da imagem "hello-world" e executará um container para verificar se tudo está funcionando corretamente.

## Passo 4: Instalar o Docker Desktop (opcional)
Se preferir usar a interface gráfica do Docker, instale o **Docker Desktop** para Windows:
1. Baixe o Docker Desktop em [docker.com](https://www.docker.com/products/docker-desktop).
2. Durante a instalação, marque a opção para usar o WSL 2 como backend.
3. Após a instalação, o Docker Desktop se integrará ao WSL, oferecendo uma interface gráfica e facilitando a execução e gerenciamento de containers.

Agora o Docker deve estar instalado e funcionando corretamente no WSL, pronto para ser utilizado!