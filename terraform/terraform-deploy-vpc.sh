#!/bin/bash

if [ $1 = "" ];then
  echo "Please select the VPC component to provision"
  exit 0;
else
  env_dir=$2
  cidr_block=$3
  tag_name=$4
  region_name=$5
  cd terraform/
  cd ${env_dir}
  if [ $1 = "vpc" ];then
    terraform init
    terraform apply -var vpc_cidr_block=${cidr_block} -var vpc_tag_name=${tag_name} -var vpc_region=${region_name} -target=aws_vpc.node-casted-vpc-dev  -auto-approve
  elif [ $1 = "subnets" ];then
    terraform init
    terraform apply -var subnet_cidr_block=${cidr_block} -var subnet_tag_name=${tag_name} -var vpc_region=${region_name} -target=aws_subnet.node-casted-vpc-subnet  -auto-approve
  else
    echo "Invalid Resource selected"
    exit 0
  fi
fi