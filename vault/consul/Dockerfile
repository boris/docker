FROM consul

COPY config/config.json /consul/config/config.json

VOLUME /consul/data

CMD ["consul", "agent", "-server", "-config-dir", "/consul/config", "-data-dir", "/consul/data"]
