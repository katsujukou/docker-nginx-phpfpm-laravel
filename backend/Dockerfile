FROM php:8.1-fpm-bullseye

WORKDIR /data
COPY . .

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    unzip

RUN docker-php-ext-install pdo_mysql 

COPY --from=composer:2.3 /usr/bin/composer /usr/bin/composer

ENTRYPOINT [ "./init.sh" ]