#!/usr/bin/env sh
set -e

pull(){
    echo "Getting config from Vault"
    curl -s -H "X-Vault-Token:$TOKEN" -o $CONF_DIR \
	-XGET https://vault.example.com/v1/$CONF_FILE
}

pull
