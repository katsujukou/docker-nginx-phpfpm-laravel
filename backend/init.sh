#!/usr/bin/env bash
cp .env.example .env
composer install
php artisan key:generate

. /usr/local/bin/docker-php-entrypoint php-fpm