Para limpar o cache de imagens no Docker, você pode usar o comando `docker system prune`. Esse comando remove imagens não utilizadas, containers parados, volumes não utilizados e redes que não estão em uso. 

Aqui está como você pode fazer isso:

1. **Limpar imagens não usadas**:
   Use o seguinte comando para remover todas as imagens que não estão sendo usadas por containers:

   ```bash
   docker system prune -a
   ```

   O `-a` faz com que o Docker remova **todas** as imagens que não estão associadas a um container (mesmo que não estejam "dangling" ou órfãs).

2. **Limpar apenas imagens dangling** (sem o `-a`):
   Se você quiser remover somente as imagens "dangling" (imagens que não têm nenhuma tag associada), sem afetar outras imagens, basta executar:

   ```bash
   docker image prune
   ```

   Você também pode adicionar a opção `-f` para forçar a remoção sem pedir confirmação:

   ```bash
   docker image prune -f
   ```

3. **Limpar volumes não utilizados**:
   Se você quiser limpar volumes que não estão sendo usados, você pode rodar o seguinte comando:

   ```bash
   docker volume prune
   ```

4. **Limpar containers parados**:
   Para limpar containers parados (aqueles que já terminaram de rodar), use:

   ```bash
   docker container prune
   ```

**Nota:** Esses comandos podem liberar bastante espaço, mas é sempre bom verificar se não há containers ou imagens importantes que você queira manter antes de rodar os comandos.

Essas opções de limpeza podem ajudar a manter o Docker com menos sobrecarga de cache e arquivos antigos.