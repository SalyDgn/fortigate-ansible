#!/bin/bash
gnome-terminal --tab -- sh -c "rm Desktop/awx_ui_build.sh"

cd /home/ansible-awx/

gnome-terminal --tab -- sh -c "sudo make docker-compose; bash"

gnome-terminal --tab -- sh -c "sleep 100 && sudo docker exec tools_awx_1 make clean-ui ui-devel && xdg-open https://localhost:8043/#/home; bash"
gnome-terminal --tab -- sh -c "sleep 100 && sudo docker exec -ti tools_awx_1 awx-manage createsuperuser"