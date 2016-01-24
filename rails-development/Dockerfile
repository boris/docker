# Starting on tag 1.0, you'll need a different container running MySQL
# docker run --name mysql-dev -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5.5
# docker run -tiP --name rails-dev -v `pwd`:/app boris/rails-development:1.0 /bin/bash
FROM ruby:2.2

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

# Use en_US.UTF-8 as our locale
RUN locale-gen en_US.UTF-8 
ENV LANG en_US.UTF-8 
ENV LANGUAGE en_US:en 
ENV LC_ALL en_US.UTF-8

RUN mkdir -p /app
WORKDIR /app

RUN gem install bundler

EXPOSE 3000
