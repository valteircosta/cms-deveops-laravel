#!/bin/bash
# Aqui devemos rodar o compose  pois aqui o que é realizado fica no volume compartilhado
# a imagem já está criada.
echo "Concede permissão na pasta....."
chmod -R 775 storage/
chmod -R 775 storage/framework
chmod -R 775 storage/logs
chmod -R 775 bootstrap/cache
echo "Instalando dependencias php....."
composer install
echo "Instalando dependencias node....."
npm install
echo "Executando key:Generate....."
php artisan key:generate
echo "Executando migrate....."
php artisan migrate
php-fpm
