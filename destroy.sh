#!/bin/bash

cp ~/Documents/Secrets/terraform.tfvars.asc .
gpg --decrypt --no-symkey-cache --output terraform.tfvars terraform.tfvars.asc
terraform destroy
rm terraform.tfvars*
