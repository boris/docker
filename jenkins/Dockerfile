FROM ubuntu:12.04
FROM jenkins
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080
EXPOSE 50000

