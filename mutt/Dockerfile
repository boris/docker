FROM debian:jessie

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN groupadd -g 1000 user \
  && useradd --create-home -d /home/user -g user -u 1000 user

RUN apt-get update && apt-get install -y \
  mutt-patched \
  vim-common \
  --no-insta-recommends \
  && rm -rf /var/lib/apt/lists/*

USER user
ENV HOME /home/user
RUN mkdir -p ~/.mutt/cache

COPY mutt-files $HOME/.mutt

CMD ["mutt-patched", "-F", "~/.mutt/muttrc"]
