FROM alpine:3.11.3
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG MATOMO_VERSION=3.13.1

RUN apk add --no-cache apache2 bash curl ca-certificates tzdata mysql-client

RUN apk add --no-cache \
        php7 \
        php7-apache2 \
        php7-apcu \
        php7-bcmath \
        php7-bz2 \
        php7-cli \
        php7-ctype \
        php7-curl \
        php7-dom \
        php7-exif \
        php7-iconv \
        php7-intl \
        php7-fileinfo \
        php7-fpm \
        php7-gd \
        php7-gettext \
        php7-gmp \
        php7-json \
        php7-ldap \
        php7-mcrypt \
        php7-mbstring \
        php7-mysqli \
        php7-odbc \
        php7-opcache \
        php7-openssl \
        php7-pdo \
        php7-pdo_dblib \
        php7-pdo_mysql \
        php7-pdo_odbc \
        php7-pdo_pgsql \
        php7-pdo_sqlite \
        php7-phar \
        php7-redis \
        php7-session \
        php7-simplexml \
        php7-soap \
        php7-sqlite3 \
        php7-tokenizer \
        php7-xdebug \
        php7-xml \
        php7-xmlreader \
        php7-xmlrpc \
        php7-xmlwriter \
        php7-zip \
        php7-zlib

RUN cp /usr/bin/php7 /usr/bin/php ;\
    rm -rf /var/www/html/*

RUN apk --update --no-cache add -t build-dependencies gnupg libressl tar ;\
    mkdir -p /var/www/html ;\
    cd /tmp ;\
    wget -q https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz ;\
    wget -q https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc ;\
    wget -q https://builds.matomo.org/signature.asc ;\
    gpg --import signature.asc ;\
    gpg --verify --batch --no-tty matomo-${MATOMO_VERSION}.tar.gz.asc matomo-${MATOMO_VERSION}.tar.gz ;\
    tar -xzf matomo-${MATOMO_VERSION}.tar.gz --strip-components=1 -C /var/www/html ;\
    wget -q https://matomo.org/wp-content/uploads/unifont.ttf.zip ;\
    unzip unifont.ttf.zip -d /var/www/html/plugins/ImageGraph/fonts/ ;\
    ## from 30.12.19 need to signup for download https://www.maxmind.com/en/accounts/146919/geoip/downloads
    #wget -q https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz ;\
    #wget -q https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz.md5 ;\
    #echo "$(cat GeoLite2-City.tar.gz.md5)  GeoLite2-City.tar.gz" | md5sum -c - ;\
    #tar -xzf GeoLite2-City.tar.gz --strip-components=1 ;\
    #mv GeoLite2-City.mmdb /var/www/html/misc/GeoLite2-City.mmdb ;\
    apk del build-dependencies ;\
    rm -rf /var/cache/apk/* /tmp/* /root/.gnupg

COPY data/ /

RUN chown -R apache:apache /var/www/html ;\
    chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]

CMD ["httpd", "-D", "FOREGROUND"]
