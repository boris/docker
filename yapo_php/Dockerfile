# Usage:
# Build: docker build -t <name> .
# Run: docker run -d -v /path/to/root:/var/www/html -p 8000:80 <name>
# Example:
# docker run -d -v web:/var/www/html -p 8000:80 boris/yapo_php:7.0.9
#
FROM php:7.0.9-apache
MAINTAINER Boris Quiroz <boris@insert-coin.org>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install supervisor apache2 pwgen  && \
  echo "ServerName localhost" >> /etc/apache2/apache2.conf

ADD start-apache2.sh /yapo/start-apache2.sh
ADD supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf
ADD run.sh /yapo/run.sh
RUN chmod 755 /yapo/*.sh

RUN rm -rf /var/lib/mysql/*

ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_CONFDIR /etc/apache2
ENV APACHE_ENVVARS $APACHE_CONFDIR/envvars

RUN set -ex \
  && . "$APACHE_ENVVARS" \
  && for dir in \
  "$APACHE_LOCK_DIR" \
  "$APACHE_RUN_DIR" \
  "$APACHE_LOG_DIR" \
  /var/www/html \
  ; do \
    rm -rvf "$dir" \
    && mkdir -p "$dir" \
    && chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; \
  done

RUN set -ex \
  && . "$APACHE_ENVVARS" \
  && ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" \
  && ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" \
  && ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"


ADD apache_default /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

EXPOSE 80

CMD ["/yapo/run.sh"]
