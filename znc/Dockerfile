FROM ubuntu:16.04

MAINTAINER Boris Quiroz <boris@insert-coin.org>

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
USER znc
WORKDIR /home/znc

