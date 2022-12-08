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