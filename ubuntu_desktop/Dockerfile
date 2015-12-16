# Run: docker run -it --rm -p 5901:5901 -e USER=root boris/ubuntu-desktop \
# bash -c "vncserver :1 -geometry 1280x800 -depth 24 && tail -F /root/.vnc/*.log"

FROM ubuntu:latest
MAINTAINER Boris Quiroz <boris@insert-coin.org>
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core \
  lxterminal \
  tightvncserver\
   --no-install-recommends \
  && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
  && locale-gen en_US.utf8 \
  && /usr/sbin/update-locale LANG=en_US.UTF-8 \
  && rm -rf /var/lib/apt/lists/*

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

WORKDIR /data

CMD ["bash"]

EXPOSE 5901
