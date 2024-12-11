# Criando um Dockerfile

```bash
FROM nginx

LABEL maintainer="horadoqa@gmail.com"
  
COPY ./site /usr/share/nginx/html/
```