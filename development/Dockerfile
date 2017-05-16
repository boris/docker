FROM alpine:latest

ENV PS1="\u@docker \w :: "

RUN apk update
RUN apk add bash \
  bash-completion \
  alpine-sdk \
  vim

COPY files/vimrc /root/.vimrc

WORKDIR /root
CMD ["bash"]
