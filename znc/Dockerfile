FROM ubuntu:16.04

MAINTAINER Boris Quiroz <boris@insert-coin.org>

ENV CONFIG /home/znc/.znc/configs
RUN apt-get update
RUN apt-get install -y build-essential \
  libssl-dev \
  libperl-dev \
  pkg-config \
  swig3.0 \
  libicu-dev \
  python-software-properties \
  software-properties-common \
  sudo \
  tor \
  proxychains \
  curl

RUN add-apt-repository ppa:teward/znc
RUN apt-get update

RUN apt-get install -y znc znc-dbg znc-dev znc-perl znc-python znc-tcl

RUN useradd -ms /bin/bash znc ; usermod -G sudo znc
RUN echo 'znc ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
WORKDIR /home/znc

COPY config/znc_config /usr/local/bin/
COPY config/znc_start /usr/local/bin/
COPY config/torrc /etc/tor/torrc
RUN chmod a+x /usr/local/bin/*
VOLUME ["/home/znc/.znc"]

CMD ["znc_start"]

USER znc
EXPOSE 31337

