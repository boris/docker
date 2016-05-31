FROM ubuntu:latest
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y wget
RUN wget --no-check-certificate --content-disposition "http://www.opscode.com/chef/download-server?p=ubuntu&pv=12.04&m=x86_64&v=latest&prerelease=false&nightlies=false"
RUN dpkg -i chef-server*.deb

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -sf /bin/true /sbin/initctl

ADD run_chef /usr/local/bin/
#CMD ["run_chef"]

EXPOSE 443
