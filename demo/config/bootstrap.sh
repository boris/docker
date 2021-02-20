#!/usr/bin/env bash

set -e

echo "Running $COMPONENT ($WORKER_MODULE) $VERSION"

CONF_DIR=/data
echo "Retrieving config from $CONF_SERVER_HOST:$CONF_SERVER_PATH"
sshpass -p "$CONF_SERVER_PASS" \
        scp -r -P $CONF_SERVER_PORT -oStrictHostKeyChecking=no \
	        $CONF_SERVER_USER@$CONF_SERVER_HOST:$CONF_SERVER_PATH $CONF_DIR
chown -R xapo:xapo $CONF_DIR

