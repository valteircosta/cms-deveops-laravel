#!/bin/bash
# Aqui devemos rodar o compose  pois aqui o que é realizado fica no volume compartilhado
# a imagem já está criada.

composer install
php artisan key:generate
php artisan migrate
php-fpm
