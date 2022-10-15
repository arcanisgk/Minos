FROM php:8.1.11-fpm

WORKDIR "/application"

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions cli
RUN install-php-extensions pdo_mysql
RUN install-php-extensions Reflection
RUN install-php-extensions session
RUN install-php-extensions SimpleXML
RUN install-php-extensions SPL
RUN install-php-extensions sqlite3
RUN IPE_GD_WITHOUTAVIF=1 install-php-extensions gd
RUN install-php-extensions curl
RUN install-php-extensions imap
RUN IPE_ICU_EN_ONLY=1 install-php-extensions intl
RUN IPE_ICU_EN_ONLY=1 install-php-extensions http
RUN install-php-extensions json
RUN install-php-extensions mailparse
RUN install-php-extensions mbstring
RUN install-php-extensions readline
RUN install-php-extensions soap
RUN install-php-extensions xml
RUN install-php-extensions xmlrpc
RUN install-php-extensions bz2
RUN install-php-extensions zlib
RUN install-php-extensions dba
RUN install-php-extensions ldap
RUN install-php-extensions xdebug
RUN install-php-extensions @composer

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update && apt-get -y install --no-install-recommends --fix-missing cron