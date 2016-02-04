FROM alpine:edge

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apk --update add  \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev \
  screen \
  git \
  io-console \
  && rm -rf /usr/share/ri

RUN mkdir -p /app
WORKDIR /app

