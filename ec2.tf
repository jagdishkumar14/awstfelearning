module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = aws_security_group.allow_ssh
  subnet_id              = aws_subnet.learning_subnet
  tags = var.tags
  }