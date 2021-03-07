FROM php:7.4-apache

RUN groupadd -g 1000 www && useradd -u 1000 -ms /bin/bash -g www-data www

RUN chown -R www:www /var/www

WORKDIR /var/www/html

COPY --chown=www . .

USER www

EXPOSE 80