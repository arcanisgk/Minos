FROM phpdockerio/php:8.1-fpm
LABEL maintainer="ChaosEmperorDragonEnvoyoftheEnd"
LABEL version="1.0.0"

WORKDIR "/application"

RUN apt-get update; \
    apt-get -y install \
        build-essential \
        curl \
        git \
        mysql-client \
        nano \
        unzip \
        wget \
        zip \
        apache2 \
        libapache2-mod-php \
        libmcrypt-dev \
        cron \
        locales \
        php8.1 \
        php8.1-fpm \
        php8.1-pdo \
        php8.1-cli \
        php8.1-gd \
        php8.1-common \
        php8.1-curl \
        php8.1-imap \
        php8.1-intl \
        php8.1-json \
        php8.1-mailparse \
        php8.1-mbstring \
        php8.1-mysql \
        php8.1-pdo_mysql \
        php8.1-pear \
        php8.1-readline \
        php8.1-soap \
        php8.1-xml \
        php8.1-xmlrpc \
        php8.1-zip \
        php8.1-bz2 \
        php8.1-dba \
        php8.1-ldap \
        php8.1-dev \
        php8.1-xdebug \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql