# To run:
# docker run -d -p 6379:6379 boris/prey_redis:2.6.14 redis-server
FROM debian:jessie
MAINTAINER Boris Quiroz <boris@preyhq.com>

RUN groupadd -r redis && useradd -r -g redis redis

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  && rm -rf /var/lib/apt/lists/*

RUN gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)" \
  && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc" \
  && gpg --verify /usr/local/bin/gosu.asc \
  && rm /usr/local/bin/gosu.asc \
  && chmod +x /usr/local/bin/gosu

ENV REDIS_VERSION 2.6.14
ENV REDIS_URL http://download.redis.io/releases/redis-2.6.14.tar.gz
ENV REDIS_SHA1 e3161c3f2dfaf6436cba55daba58dd4564639347

RUN buildDeps='gcc libc6-dev make' \
  && set -x \
  && apt-get update && apt-get install -y $buildDeps --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /usr/src/redis \
  && curl -sSL "$REDIS_URL" -o redis.tar.gz \
  && echo "$REDIS_SHA1 *redis.tar.gz" | sha1sum -c - \
  && tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 \
  && rm redis.tar.gz \
  && make -C /usr/src/redis \
  && make -C /usr/src/redis install \
  && apt-get purge -y --auto-remove $buildDeps

RUN echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf
RUN mkdir /data && chown redis:redis /data
VOLUME /data
WORKDIR /data

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 6379
CMD ["redis-server"]
