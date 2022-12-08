#!/bin/bash

if [ $# -ne 4 ];then
  echo "Please select environment and mention cidr block, tag name and resource name in which the resource has to be deployed."
  exit 0;
fi
env_dir=$1
cidr_block=$2
tag_name=$3
resource_name=$4

cd terraform/
echo "Moved to terraform remote directory"
cd ${env_dir}
echo "Moved to sub environment directory"
terraform init
echo "terraform init is successful"
terraform apply -var vpc_cidr_block=${cidr_block} -var vpc_tag_name=${tag_name} -var vpc_resource_name=${resource_name} -target=aws_vpc.vpc_resource_name  -auto-approve