FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y --no-install-recommends curl jq

CMD curl -s -H "X-Vault-Token:$VAULT_TOKEN" -XGET http://192.168.0.10:8200/v1/secret/devops/development/config.json | jq -r '.data' > /tmp/config
