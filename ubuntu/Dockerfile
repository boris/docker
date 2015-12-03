FROM ubuntu:12.04

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update && apt-get install -y aptitude
RUN aptitude install -y sudo git-core vim-common net-tools sudo lsb-release iputils-ping

RUN useradd -ms /bin/bash boris && echo "boris:test123" | chpasswd && adduser boris sudo 

RUN git clone https://github.com/sstephenson/rbenv.git /home/boris/.rbenv
RUN ln -s /home/boris/.rbenv/bin/rbenv /usr/local/bin/
RUN git clone https://github.com/sstephenson/ruby-build.git /home/boris/.rbenv/plugins/ruby-build

USER boris
WORKDIR /home/boris
