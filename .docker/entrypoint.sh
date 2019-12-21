#!/bin/bash
# Aqui devemos rodar o compose  pois aqui o que é realizado fica no volume compartilhado
# a imagem já está criada.
echo "Instalando dependencias php....."
composer install
echo "Instalando dependencias node....."
npm install
echo "Concede permissão na pasta....."
find storage bootstrap/cache public -type f -exec chmod o+w {} \;
find storage bootstrap/cache public -type d -exec chmod o+wx {} \;
chmod o-w public/index.php
echo "Executando key:Generate....."
php artisan key:generate
echo "Executando migrate....."
php artisan migrate
php-fpm
