FROM php:7.4-apache

WORKDIR /PHP

COPY . php

RUN apt-get update && apt-get install -y libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql

EXPOSE 80

CMD ["php", "main.php"]
