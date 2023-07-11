resource "aws_security_group" "allow_ssh" {
  name        = "allow_tls"
  description = "Allow ssh inbound traffic on the host"
  vpc_id      = aws_vpc.learning_vpc.id

  ingress {
    description = "SSH from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags
}
