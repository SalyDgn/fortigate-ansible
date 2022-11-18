#!/bin/bash

cd /home/ansible-awx/

gnome-terminal --tab -- sh -c  "sudo sleep 100 && sudo docker exec tools_awx_1 make clean-ui ui-devel && xdg-open https://localhost:8043/#/home"

gnome-terminal --tab -- sh -c  "sudo make docker-compose"

