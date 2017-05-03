FROM ubuntu:16.04

RUN apt-get update && apt-get install -yq bundler \
  git \
  build-essential \
  unicorn

EXPOSE 8080

RUN adduser -ms /bin/bash deploy
USER deploy
WORKDIR /home/deploy
