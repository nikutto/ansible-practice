docker compose cp playbooks ansible-control:/home/ansible-user/.
docker compose exec --user ansible-user ansible-control bash -c 'ansible-playbook ~/playbooks/* --ask-become-pass'
