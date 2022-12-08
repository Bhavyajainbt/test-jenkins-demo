/*variable "subnet_cidr_block" {
  type = string
}

resource "aws_subnet" "main-dev-subnet" {
    vpc_id = aws_vpc.node-dev-vpc.id
    cidr_block = var.subnet_cidr_block

    tags = {
      "name" = "main-dev-subnet"
    }
}*/