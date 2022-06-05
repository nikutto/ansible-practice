docker compose exec ansible-control mkdir -p /etc/ansible/
docker compose exec ansible-control bash -c 'echo example-server > /etc/ansible/hosts'
