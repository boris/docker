FROM alpine
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apk add go git --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted

ENV GOPATH /usr/lib/go
ENV PATH $GOPATH/bin:$PATH

RUN mkdir /go
ENV GOROOT /go

WORKDIR $GOROOT
