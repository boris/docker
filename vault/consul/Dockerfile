FROM consul

COPY config/config.json /consul/config/config.json

VOLUME /consul/data

CMD consul agent -ui -server -client 0.0.0.0 -config-dir /consul/config -data-dir /consul/data
