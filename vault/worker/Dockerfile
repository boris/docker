FROM alpine:3.7

RUN apk update
RUN apk add curl jq

COPY bootstrap.sh /root/bootstrap.sh
RUN chmod +x /root/bootstrap.sh

CMD /root/bootstrap.sh
