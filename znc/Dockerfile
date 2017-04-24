FROM ubuntu:16.04

MAINTAINER Boris Quiroz <boris@insert-coin.org>

ENV CONFIG /home/znc/.znc/configs/znc.conf
RUN apt update
RUN apt install -y build-essential \
  libssl-dev \
  libperl-dev \
  pkg-config \
  swig3.0 \
  libicu-dev \
  python-software-properties \
  software-properties-common

RUN add-apt-repository ppa:teward/znc
RUN apt update

RUN apt install -y znc znc-dbg znc-dev znc-perl znc-python znc-tcl

RUN useradd -ms /bin/bash znc
WORKDIR /home/znc
RUN mkdir -p /home/znc/.znc/configs
COPY config/znc.conf /home/znc/.znc/configs
RUN chown znc:znc $CONFIG ; chmod 600 $CONFIG

USER znc
EXPOSE 31337

COPY entrypoint.sh /home/znc/entrypoint.sh
ENTRYPOINT  ["/home/znc/entrypoint.sh"]
