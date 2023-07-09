resource "aws_instance" "web" {
  ami               = var.aws_ami
  instance_type     = var.aws_ins_type
  availability_zone = "us-east-1a"
  tags              = var.tags
}