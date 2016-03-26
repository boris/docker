FROM ubuntu:16.04

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update
RUN apt-get install -y git-core \
  vim-common \
  sudo \
  software-properties-common \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash boris && echo "boris:123123" | chpasswd && adduser boris sudo

USER boris
WORKDIR /home/boris
