#!/bin/bash

# Get the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Go to terraform directory and get the IP
cd "$DIR/../terraform"

terraform output -raw instance_public_ip | grep -v runner >> $DIR/inventory.ini
sed -i 's/::.*//' $DIR/inventory.ini

# Run the ansible playbook
cd "$DIR"

echo "Installing Docker..."
ansible-playbook -i inventory.ini install-docker.yml

echo "Installing/upgrading the application"
ansible-playbook -i inventory.ini deploy-docker-files.yml