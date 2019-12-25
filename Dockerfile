FROM php:7.3.6-fpm-alpine3.9
# Install open ssl, bash e client mysql
RUN apk add --no-cache openssl bash mysql-client nodejs npm
RUN docker-php-ext-install pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Add dockerize na imagem, para fazer testes de validção
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www
RUN rm -rf /var/www/html
RUN ln -s public html
COPY ./.docker/app/php.ini /usr/local/etc/php/conf.d/
# O que é raealizado aqui no Docker file pertenxe a imagem criada  e não ao volume compartilhado
# Devemos ter bem claro este conceito para as coisas funcionarem corretamente
# O copy abaixo é um exemplo, ele coloca os arquivos na imagem e não no volume compartilhado

# COPY . /var/www
# RUN  composer install && \
#     cp .env.example .env && \
#     php artisan key:generate && \
#     php artisan config:cache
EXPOSE 9000
ENTRYPOINT [ "php-fpm" ]
