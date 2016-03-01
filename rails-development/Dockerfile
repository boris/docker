FROM alpine:edge

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apk --update add  \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev \
  screen \
  git \
  ruby-io-console \
  alpine-sdk \
  && rm -rf /usr/share/ri

RUN mkdir -p /app
WORKDIR /app

