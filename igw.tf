resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.learning_vpc.id

  tags = var.tags
}
resource "aws_route_table" "igw_rt" {
  vpc_id = aws_vpc.learning_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = var.tags
}
