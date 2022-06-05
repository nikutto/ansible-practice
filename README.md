# Ansible practice

## Objective

Provide hands-on for ansible.
Emulate servers with docker.

## Requirements

- docker
- ssh-keygen
- curl

## How to run

1. `docker-compose up -d`
    - This starts two server:
        - Ansible-control
        - Example-server
2. `./prepare_user`
    - Enter any new password.
3. `./prepare_ssh`
    - Prepares ssh connection between ansible-control and example-server.
4. `./prepare_inventory`
5. `./run_playbook.sh`
    - You need to enter password you entered in 2.
    1. Ansible-control makes example-server install nginx.
    2. Ansible-control makes example-server run nginx.
6. `curl localhost:8080`
    - If everything goes well, this returns nginx welcome page.
