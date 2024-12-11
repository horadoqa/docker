# Para instalar o Docker no Ubuntu, siga as etapas abaixo:

## Passo 1: Atualizar o Sistema
Antes de instalar qualquer pacote, é uma boa prática garantir que seu sistema esteja atualizado.

1. Abra o terminal e execute o seguinte comando para atualizar os pacotes:
   ```bash
   sudo apt update
   sudo apt upgrade -y
   ```

## Passo 2: Instalar as Dependências
Instale as dependências necessárias para adicionar o repositório Docker:

1. Execute o comando abaixo:
   ```bash
   sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
   ```

## Passo 3: Adicionar o Repositório Oficial do Docker
Agora, você precisa adicionar o repositório oficial do Docker ao seu sistema.

1. Baixe e adicione a chave GPG do Docker:
   ```bash
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
   ```

2. Adicione o repositório Docker à lista de fontes do seu sistema:
   ```bash
   sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
   ```

## Passo 4: Instalar o Docker
Agora você pode instalar o Docker usando o repositório que acabou de adicionar.

1. Atualize o índice de pacotes novamente:
   ```bash
   sudo apt update
   ```

2. Instale o Docker:
   ```bash
   sudo apt install docker-ce -y
   ```

   - **docker-ce**: Docker Community Edition.

## Passo 5: Verificar se o Docker foi Instalado Corretamente
Após a instalação, você pode verificar se o Docker está funcionando corretamente:

1. Verifique a versão do Docker:
   ```bash
   docker --version
   ```

2. Verifique o status do Docker:
   ```bash
   sudo systemctl status docker
   ```

   O status deve mostrar que o serviço Docker está ativo e em execução.

## Passo 6: (Opcional) Usar o Docker Sem `sudo`
Por padrão, o Docker precisa ser executado com privilégios de superusuário (`sudo`). Para permitir que você execute o Docker sem precisar usar `sudo` toda vez, siga os passos abaixo:

1. Adicione seu usuário ao grupo `docker`:
   ```bash
   sudo usermod -aG docker $USER
   ```

2. Saia e entre novamente no terminal ou reinicie a máquina para que as alterações tenham efeito.

## Passo 7: Testar a Instalação
Para garantir que o Docker foi instalado corretamente, execute o seguinte comando para baixar e executar um container de teste:

1. Execute o comando:
   ```bash
   docker run hello-world
   ```

   Isso fará o download da imagem "hello-world" do Docker Hub e executará um container. Se o Docker estiver configurado corretamente, você verá uma mensagem de sucesso.

## Passo 8: (Opcional) Ativar o Docker para Iniciar com o Sistema
Para garantir que o Docker inicie automaticamente com o sistema, use o seguinte comando:

```bash
sudo systemctl enable docker
```

Agora, o Docker está instalado e pronto para uso no seu sistema Ubuntu!