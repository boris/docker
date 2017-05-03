FROM ubuntu:16.04

RUN apt-get update && apt-get install -yq bundler \
  git \
  build-essential \
  unicorn

RUN gem install bundler

EXPOSE 8080

RUN useradd -ms /bin/bash deploy
USER deploy
WORKDIR /home/deploy
