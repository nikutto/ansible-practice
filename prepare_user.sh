docker compose exec ansible-control useradd -m ansible-user

docker compose exec example-server useradd -m ansible-user
docker compose exec example-server usermod -G sudo ansible-user
docker compose exec -it example-server passwd ansible-user
