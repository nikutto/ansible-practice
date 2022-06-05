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
    - Create user named ansible-user for all servers.
    - Enter any new password.
3. `./prepare_ssh`
    - Prepares ssh connection between ansible-control and example-server.
4. `./prepare_inventory`
    - Add example-server as a target server.
5. `./run_playbook.sh`
    1. Ansible-control makes example-server install nginx.
    2. Ansible-control makes example-server run nginx.
    - You need to enter password you entered in 2.
6. `curl localhost:8080`
    - If everything goes well, this returns nginx welcome page.
