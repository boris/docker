FROM ubuntu:12.04

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update && apt-get install -yq --no-install-recommends \
  make \
  ca-certificates \
  net-tools \
  sudo \
  wget \
  lsb-release \
  && rm -rf /var/lib/apt/lists/*

# Set locale
RUN locale-gen en_US.UTF-8

RUN \
  echo "deb http://ppa.launchpad.net/gluster/glusterfs-3.6/ubuntu precise main" > /etc/apt/sources.list.d/gluster.list  \
  echo "deb-src http://ppa.launchpad.net/gluster/glusterfs-3.6/ubuntu precise main" >> /etc/apt/sources.list.d/gluster.list \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FE869A9 \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y glusterfs-server

# Define mountable directories.
VOLUME ["/glusterfs-storage"]

WORKDIR /root

EXPOSE 111 24007 2049 38465 38466 38467 1110 4045
