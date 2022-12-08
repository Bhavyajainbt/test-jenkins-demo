#!/bin/bash

if [ $# -ne 1 ];then
  echo "Please select environment in which the resource has to be deployed."
  exit 0;
fi
env_dir=$1

cd terraform/
echo "Moved to terraform remote directory"
cd ${env_dir}
echo "Moved to sub environment directory"
terraform init
echo "terraform init is successful"
terraform destroy -auto-approve