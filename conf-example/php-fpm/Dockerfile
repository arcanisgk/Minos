FROM php:8.1.11-fpm

COPY --from=mlocati/php-extension-installer:1.5.42 /usr/bin/install-php-extensions /usr/local/bin/

# Just add the extensions that you need here
# See https://github.com/mlocati/docker-php-extension-installer
RUN install-php-extensions \
    pdo_mysql \
    gd \
    xdebug
