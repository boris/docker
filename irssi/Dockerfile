# docker run -ti boris/irssi

FROM ubuntu:16.04
MAINTAINER Boris Quiroz <boris@insert-coin.org>

ENV HOME /home/irc-user
ENV CONFIG $HOME/.irssi/config
ENV THEME $HOME/.irssi/pipeline.theme
RUN adduser --home $HOME irc-user \
  && mkdir -p $HOME/.irssi \
  && chown -R irc-user:irc-user $HOME

ENV LANG C.UTF-8

RUN apt update
RUN apt install -y irssi irssi-scripts && rm -rf /var/lib/apt/lists/*

COPY config.example $CONFIG
COPY solarized-universal.theme $THEME
WORKDIR $HOME
USER irc-user
CMD ["irssi"]
