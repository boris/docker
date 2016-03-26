FROM debian:jessie

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN groupadd -g 1000 user \
  && useradd --create-home -d /home/user -g user -u 1000 user

RUN apt-get update && apt-get install -y \
  ca-certificates \
  mutt-patched \
  vim-common \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

USER user
ENV HOME /home/user
RUN mkdir -p $HOME/.mutt/cache/bodies $HOME/.mutt/cache/headers && touch $HOME/.mutt/certificates

COPY entrypoint.sh /entrypoint.sh
COPY mutt-files $HOME/.mutt

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mutt-patched", "-F", "~/.mutt/muttrc"]
