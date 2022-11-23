#!/bin/bash
cd /home/ansible-awx/

gnome-terminal --tab --title=DockerCompose -- sh -c "sudo make docker-compose"

sleep 180

xdg-open https://localhost:8043/#/home