# global config command
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> Run config-globales role <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
ansible-playbook \
-i fortigate_inventory.yml \
-e "nodes=fortigate-A,fortigate-B role_name=config-globales" \
fortigate-playbook.yml

# interface config command
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> Run config-port role <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
ansible-playbook \
-i fortigate_inventory.yml \
-e "nodes=fortigate-A role_name=config-port" \
fortigate-playbook.yml 

# policy config command
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> Run config-policy role <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
ansible-playbook \
-i fortigate_inventory.yml \
-e "nodes=fortigate-A role_name=config-policy" \
fortigate-playbook.yml 

# vpn-site-to-site command
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> Run vpn_site_to_site role <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
ansible-playbook \
-i fortigate_inventory.yml \
-e "nodes=fortigate-A,fortigate-B role_name=vpn_site_to_site fortigate1=fortigate-A fortigate2=fortigate-B" \
fortigate-playbook.yml 