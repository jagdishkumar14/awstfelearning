resource "aws_security_group" "allow_ssh" {
  name        = "allow_tls"
  description = "Allow ssh inbound traffic on the host"
  vpc_id      = aws_vpc.learning_vpc.id

  ingress {
    description = "SSH allow from inhoust IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["125.62.117.0/24"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags
}
