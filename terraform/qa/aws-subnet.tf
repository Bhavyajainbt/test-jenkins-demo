resource "aws_subnet" "main-dev-subnet" {
    vpc_id = aws_vpc.node-dev-vpc.id
    cidr_block = "172.10.44.0/24"

    tags = {
      "name" = "main-dev-subnet"
    }
}