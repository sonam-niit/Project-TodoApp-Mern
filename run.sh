terraform apply -auto-approve
terraform output -raw ansible_inventory_yaml > ../../../ansible/inventory.yaml
sudo ansible-playbook -i inventory.yaml playbook.yml

ansible-galaxy --version

ansible-galaxy init my_role (role name)
