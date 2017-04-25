FROM ubuntu:16.04

MAINTAINER Boris Quiroz <boris@insert-coin.org>

ENV CONFIG /home/znc/.znc/configs
RUN apt update
RUN apt install -y build-essential \
  libssl-dev \
  libperl-dev \
  pkg-config \
  swig3.0 \
  libicu-dev \
  python-software-properties \
  software-properties-common \
  sudo

RUN add-apt-repository ppa:teward/znc
RUN apt update

RUN apt install -y znc znc-dbg znc-dev znc-perl znc-python znc-tcl

RUN useradd -ms /bin/bash znc ; usermod -G sudo znc
RUN echo 'znc ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
WORKDIR /home/znc

COPY config/znc_config /usr/local/bin/
RUN chmod a+x /usr/local/bin/*
VOLUME ["/home/znc/.znc"]

USER znc
EXPOSE 31337

COPY entrypoint.sh /home/znc/entrypoint.sh
ENTRYPOINT  ["/home/znc/entrypoint.sh"]
