#!/bin/bash

set -e

MASTER_TOKEN="$1"
AGENT_TOKEN="$2"
SECURE_TOKEN="$3"

consulacl update --token=${MASTER_TOKEN} --name=agent_policy \
    --rule='key::write' \
    --rule='key:secure:deny' \
    --rule='service::write' \
    ${AGENT_TOKEN}

consulacl update --token=${MASTER_TOKEN} --name=secure_policy \
    --rule='key:secure:write' \
    ${SECURE_TOKEN}

echo ${SECURE_TOKEN} > /etc/consul/private_token
