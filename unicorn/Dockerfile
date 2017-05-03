FROM ubuntu:16.04

RUN apt-get update && apt-get install -yq bundler \
  git \
  build-essential \
  unicorn \
  libmysqlclient-dev \
  ruby-mysql2

RUN gem install bundler uglifier

EXPOSE 8080

RUN useradd -ms /bin/bash deploy
USER deploy
WORKDIR /home/deploy
