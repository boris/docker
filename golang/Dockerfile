FROM alpine
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apk add go git vim --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted

RUN echo "set tabstop=4" >> /etc/vim/vimrc

RUN mkdir /go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

WORKDIR $GOPATH
