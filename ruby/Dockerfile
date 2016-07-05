FROM alpine:edge
MAINTAINER Boris Quiroz <boris@insert-coin.org>

ENV BUILD_PACKAGES build-base ruby ruby-dev

RUN apk update && apk add $BUILD_PACKAGES
RUN rm -rf /var/cache/apk/*

CMD ["sh"]
