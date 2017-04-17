# docker run -p 25:25 
FROM ubuntu:16.04
MAINTAINER Boris Quiroz <boris@insert-coin.org>

EXPOSE 25:25
EXPOSE 465:465
EXPOSE 587:587

VOLUME /var/log/postfix
VOLUME /var/spool/postfix

RUN apt update
RUN apt -y install supervisor postfix sasl2-bin opendkim opendkim-tools
