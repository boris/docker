FROM alpine:latest

ENV PS1="\u@docker \w :: "
EXPOSE 22

RUN apk update
RUN apk add bash \
  bash-completion \
  alpine-sdk \
  vim \
  screen \
  openssh

COPY files/vimrc /root/.vimrc
COPY files/screenrc /root/.screenrc

WORKDIR /root

RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
CMD ["/usr/sbin/sshd"]
