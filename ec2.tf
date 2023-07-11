module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "ec2_key_pair"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id              = aws_subnet.learning_subnet.id
  tags = var.tags
  }

module "ec2_key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name           = "ec2_key_pair"
  create_private_key = true
}