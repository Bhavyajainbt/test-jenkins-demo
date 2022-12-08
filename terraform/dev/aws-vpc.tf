variable "vpc_cidr_block" {
  type = string
}

variable "vpc_tag_name" {
  type = string
}


resource "aws_vpc" node-casted-vpc-dev {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  tags = {
    "name" = var.vpc_tag_name
  }
}

// We can add as many VPCs definitions here but terraform will create only the ones which are passed in target argument of apply command.