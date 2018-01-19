FROM python:3.6.4-jessie

RUN pip install awscli

RUN mkdir /root/.aws
COPY config /root/.aws/credentials
COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]

CMD []
