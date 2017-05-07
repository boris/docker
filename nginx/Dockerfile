FROM alpine:latest
LABEL maintainer "boris@insert-coin.org"

RUN apk --update add nginx && \
      adduser -D -u 1000 -g 'www' www && \
      mkdir /www && \
      mkdir /run/nginx && \
      chown -R www:www /var/lib/nginx && \
      chown -R www:www /www && \
      chown -R www:www /run/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
