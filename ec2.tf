resource "aws_instance" "web" {
  name = "learning_VM"
  ami               = var.aws_ami
  instance_type     = var.aws_ins_type
  availability_zone = "us-east-1a"
  tags              = var.tags
  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }
}

