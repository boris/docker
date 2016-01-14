# docker run -ti boris/irssi

FROM alpine:latest
MAINTAINER Boris Quiroz <boris@insert-coin.org>

ENV HOME /home/irc-user
ENV CONFIG $HOME/.irssi/config
ENV THEME $HOME/.irssi/solarized-universal.theme
RUN adduser -h $HOME -D irc-user \
  && mkdir -p $HOME/.irssi \
  && chown -R irc-user:irc-user $HOME

ENV LANG C.UTF-8

RUN apk update
RUN apk add irssi
RUN mkdir /irssi

COPY config.example $CONFIG
COPY solarized-universal.theme $THEME
WORKDIR $HOME
USER irc-user
CMD ["irssi"]
