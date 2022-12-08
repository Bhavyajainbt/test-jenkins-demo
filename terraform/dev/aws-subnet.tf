variable "subnet_cidr_block" {
  type = string
}

variable "subnet_tag_name" {
  type = string
}

resource "aws_subnet" "node-casted-vpc-subnet" {
    vpc_id = aws_vpc.node-casted-vpc-dev.id
    cidr_block = var.subnet_cidr_block

    tags = {
      "name" = var.subnet_tag_name
    }
}