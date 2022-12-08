variable "vpc_cidr_block" {
  type = string
}

resource "aws_vpc" "node-dev-vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  tags = {
    "name" = "node-dev-vpc"
  }
}