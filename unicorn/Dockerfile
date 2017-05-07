FROM ubuntu:16.04

ENV HOME /home/deploy
ENV APP_ROOT $HOME/app

RUN apt-get update && apt-get install -yq bundler \
  git \
  build-essential \
  unicorn \
  libmysqlclient-dev \
  ruby-mysql2 \
  ruby-tzinfo \
  nodejs

RUN gem install bundler uglifier tzinfo-data

EXPOSE 8080

RUN useradd -ms /bin/bash deploy
USER deploy

RUN mkdir /tmp/log ; chown -R deploy:deploy /tmp/log
RUN mkdir $APP_ROOT ; chown -R deploy:deploy $APP_ROOT

WORKDIR $APP_ROOT
COPY entrypoint.sh $HOME/entrypoint.sh
ENTRYPOINT ["/home/deploy/entrypoint.sh"]
