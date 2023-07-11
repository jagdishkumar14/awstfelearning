resource "aws_vpc" "learning_vpc" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = "true"
  tags                 = var.tags
}

resource "aws_subnet" "learning_subnet" {
  vpc_id            = aws_vpc.learning_vpc.id
  cidr_block        = "192.168.0.0/24"
  availability_zone = "us-east-1a"
  tags              = var.tags
}
resource "aws_route" "learning_route" {
  route_table_id         = aws_vpc.learning_vpc.default_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.learning_subnet.id
  private_ips = ["192.168.0.50"]
  tags        = var.tags
}
