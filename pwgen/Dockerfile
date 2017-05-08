FROM alpine:latest

RUN apk update
RUN apk add pwgen && rm -rf /var/cache/apk/*

ENTRYPOINT ["pwgen"]
