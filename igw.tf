resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.learning_vpc.id

  tags = var.tags
}
resource "aws_internet_gateway_attachment" "igw_attachment" {
  vpc_id              = aws_vpc.learning_vpc.id
  internet_gateway_id = aws_internet_gateway.igw.id
}
resource "aws_route_table" "table" {
  vpc_id = aws_vpc.learning_vpc.id
route {
    cidr_block = "0.0.0.0/0"
    internet_gateway_id = aws_internet_gateway.igw.id
  }
}