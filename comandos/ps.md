# Listando os containers

## Que estão em execução

```bash
docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

## Que não estão em execução

```bash
docker ps -a

CONTAINER ID   IMAGE                         COMMAND                  CREATED        STATUS                       PORTS                    NAMES
dc19c27e1994   app-horadoqa-frontend:1.0.1   "/docker-entrypoint.…"   7 weeks ago    Exited (255) 4 minutes ago   0.0.0.0:80->80/tcp       dev-frontend-1
d73e5f44c7b3   app-horadoqa-backend:1.0.1    "docker-entrypoint.s…"   7 weeks ago    Exited (255) 4 minutes ago   0.0.0.0:5000->5000/tcp   dev-backend-1
9c690c4c16b1   postgres:13                   "docker-entrypoint.s…"   7 weeks ago    Exited (255) 4 minutes ago   0.0.0.0:5432->5432/tcp   dev-db-1
2a4ddf086d6a   redis:7.4.1                   "docker-entrypoint.s…"   7 weeks ago    Exited (255) 4 minutes ago   0.0.0.0:6379->6379/tcp   dev-redis-1
674cf75eaabe   app-horadoqa-frontend:1.0.1   "/docker-entrypoint.…"   2 months ago   Exited (255) 7 weeks ago     0.0.0.0:80->80/tcp       prod-frontend-1
56aa289019a1   app-horadoqa-backend:1.0.1    "docker-entrypoint.s…"   2 months ago   Exited (255) 7 weeks ago     0.0.0.0:5000->5000/tcp   prod-backend-1
70820cfc28a9   redis:7.4.1                   "docker-entrypoint.s…"   2 months ago   Exited (255) 7 weeks ago     0.0.0.0:6379->6379/tcp   prod-redis-1
74e57d320fc8   postgres:13                   "docker-entrypoint.s…"   2 months ago   Exited (255) 7 weeks ago     0.0.0.0:5432->5432/tcp   prod-db-1
```