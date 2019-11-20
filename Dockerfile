FROM php:7.3.6-fpm-alpine3.9
#Install open ssl, bash e client mysql
RUN apk add --no-cache openssl bash mysql-client
#Add dockerize na imagem, para fazer testes de validção
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /var/www
RUN rm -rf /var/www/html
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# RUN  composer install && \
#     cp .env.example .env && \
#     php artisan key:generate && \
#     php artisan config:cache
RUN ln -s public html
EXPOSE 9000
ENTRYPOINT [ "php-fpm" ]
