FROM ssweriduk/wordpress-alpine-nginx-scalable:latest
MAINTAINER Stephen Sweriduk <ssweriduk@gmail.com>

#XDebug Dependencies
RUN apk update \
    && apk add --no-cache gcc autoconf g++ make

#XDebug install & configure
RUN pecl channel-update pecl.php.net \
    && yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=on" >> /usr/local/etc/php/conf.d/xdebug.ini
