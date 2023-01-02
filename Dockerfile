FROM php:8.1-apache
RUN apt-get update && apt-get upgrade -y  && \
    apt-get install -y zip libzip-dev libpng-devdl

RUN docker-php-ext-install mysqli pdo pdo_mysql gd zip
COPY ./ /var/www/html/
EXPOSE 80


