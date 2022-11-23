#!/bin/bash
sudo rm awx_ui_build.sh && sleep 3

cd /home/ansible-awx/

gnome-terminal --tab --title=DockerCompose -- sh -c "sudo make docker-compose"

sleep 180

xdg-open https://localhost:8043/#/home