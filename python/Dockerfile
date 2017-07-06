FROM alpine:edge

RUN apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  gdal \
  py-gdal \
  && rm -rf /var/cache/apk/*
