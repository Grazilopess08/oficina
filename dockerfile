FROM php:7.4-apache

RUN apt-get update && \
    apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install zip

COPY . /oficina2.0

COPY . .

EXPOSE 80

CMD ["apache2-foreground"]
