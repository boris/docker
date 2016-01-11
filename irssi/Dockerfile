# docker run -ti boris/irssi:1.0

FROM alpine:latest
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apk update
RUN apk add irssi
RUN mkdir /irssi

COPY config.example /irssi/config
WORKDIR /irssi
CMD ["irssi", "--config=/irssi/config"]
