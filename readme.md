### Modulo DevOps

### Aviso:

Estes trabalho é parte de um curso de aprendizado, não recomendado para uso em produção.

#### Projeto pratico 1

Configure um ambiente de desenvolvimento com Laravel utilizando:

-   Nginx.
-   PHP-FPM.
-   Redis.
-   Mysql.

## Etapa 1 com docker-compose

Para executar o projeto clone esse repositorio e em seguida rode:

```
$ docker-compose up -d
```

Obs:. Ao rodar o `docker-composer up -d` o container
`app` ira automaticamente rodar o
`composer install`,
`php artisan key:generate`,
`php artisan migrate`.

depois verifique se os containers subiram:

```
$ docker-compose ps
```

O projeto estará rodando em: [http://localhost:8000/](http://localhost:8000/).

#### Projeto pratico 2

-   1 Definir variáveis do NGINX
    # Variavéis para endereço app
    environment:
    -   NGINX_HOST=app
    -   NGINX_PORT=9000
-   Criar imagem menor que 2MB
    ```
    $ docker run valteircosta/codeeducation
    ```
