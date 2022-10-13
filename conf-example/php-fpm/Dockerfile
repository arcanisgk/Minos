FROM php:8.1.11-fpm

WORKDIR "/application"

COPY --from=mlocati/php-extension-installer:1.5.42 /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions \
    Core \
    ctype \
    date \
    dom \
    FFI \
    fileinfo \
    filter \
    ftp \
    hash \
    iconv \
    libxml \
    mysqlnd \
    openssl \
    pcre \
    pdo \
    pdo_mysql \
    pdo_sqlite \
    Phar \
    posix \
    Reflection \
    session \
    SimpleXML \
    sodium \
    SPL \
    sqlite3 \
    standard \
    tokenizer \
    cli \
    gd \
    common \
    curl \
    imap \
    intl \
    json \
    mailparse \
    mbstring \
    mysql \
    pear \
    readline \
    soap \
    xml \
    xmlrpc \
    xmlreader \
    xmlwriter \
    zip \
    bz2 \
    zlib \
    dba \
    ldap \
    dev \
    xdebug \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

