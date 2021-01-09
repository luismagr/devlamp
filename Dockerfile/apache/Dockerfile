FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt install -yq \
    apache2 \
    libapache2-mod-php \
    php-xdebug \
    php-bcmath \
    php-common \
    php-curl \
    php-gd \
    php-intl \
    php-mbstring \
    php-mysql \
    php-pgsql \
    php-xml \
    php-zip \
    vim && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV XDEBUG_SESSION=1

COPY ./config/apache/php.ini /etc/php/7.4/apache2/php.ini

COPY ./config/apache/xdebug.ini /etc/php/7.4/mods-available/xdebug.ini

WORKDIR /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]