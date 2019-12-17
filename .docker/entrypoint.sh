#!/bin/bash
# Aqui devemos rodar o compose  pois aqui o que é realizado fica no volume compartilhado
# a imagem já está criada.
echo "Concede permissão na pasta....."
chmod -R 775 storage/
echo "Instalando dependencias php....."
composer install
echo "Instalando dependencias node....."
npm install
echo "Executando key:Generate....."
php artisan key:generate
echo "Executando migrate....."
php artisan migrate
php-fpm
