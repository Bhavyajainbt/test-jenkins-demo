#!/bin/bash

if [ $# -ne 4 ];then
  echo "Please select environment and mention cidr block, tag name and region in which the resource has to be deployed."
  exit 0;
fi
env_dir=$1
cidr_block=$2
tag_name=$3
region_name=$4

cd terraform/
echo "Moved to terraform remote directory"
cd ${env_dir}
echo "Moved to sub environment directory"
terraform init
echo "terraform init is successful"
terraform destroy -var vpc_cidr_block=${cidr_block} -var vpc_tag_name=${tag_name} -var vpc_region=${region_name} -target=aws_vpc.node-casted-vpc-dev  -auto-approve