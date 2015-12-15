FROM ubuntu:12.04
MAINTAINER Boris Quiroz <boris@preyhq.com>

RUN apt-get update && apt-get install -yq --no-install-recommends \
  build-essential \
  g++ \
  gcc \
  libc6-dev \
  make \
  pkg-config \
  glib2.0-dev \
  libxml2-dev \
  gobject-introspection \ 
  python-gi-dev \
  libgirepository1.0-dev \
  libtiff4-dev \
  libgsf-1-dev \
  git-core \
  curl \
  && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8

ENV GOLANG_VERSION 1.5.2
ENV GOLANG_DOWNLOAD_URL https://golang.org/dl/go$GOLANG_VERSION.linux-amd64.tar.gz
ENV GOLANG_DOWNLOAD_SHA1 cae87ed095e8d94a81871281d35da7829bd1234e

RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
	&& echo "$GOLANG_DOWNLOAD_SHA1  golang.tar.gz" | sha1sum -c - \
	&& tar -C /usr/local -xzf golang.tar.gz \
	&& rm golang.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

ENV VIPS_HOME $GOPATH/vips-8.1.1
RUN curl -O http://www.vips.ecs.soton.ac.uk/supported/current/vips-8.1.1.tar.gz \
  && tar zxf vips-8.1.1.tar.gz \
  && cd $VIPS_HOME \
  && ./configure --enable-debug=no --without-python --without-fftw --without-libexif --without-libgf --without-little-cms --without-orc --without-pango --prefix=/usr \
  && make \
  && make install \
  && ldconfig

