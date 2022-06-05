#!/bin/bash

TEMP_PATH=$(mktemp -d)
ssh-keygen -t rsa <<< "${TEMP_PATH}/id_rsa"

docker compose exec ansible-control mkdir -p /home/ansible-user/.ssh
docker compose cp ${TEMP_PATH}/id_rsa ansible-control:/home/ansible-user/.ssh/id_rsa

docker compose exec example-server mkdir -p /home/ansible-user/.ssh
docker compose cp ${TEMP_PATH}/id_rsa.pub example-server:/home/ansible-user/.ssh/authorized_keys

docker compose exec example-server bash -c '/etc/init.d/ssh start'
