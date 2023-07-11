resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.learning_vpc.id

  tags = var.tags
}
resource "aws_internet_gateway_attachment" "igw_attachment" {
  vpc_id              = aws_vpc.learning_vpc.id
  internet_gateway_id = aws_internet_gateway.igw.id
}