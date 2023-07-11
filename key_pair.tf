################################################################################
# Key Pair
################################################################################

resource "aws_key_pair" "ec2_key_pair" {
  key_name   = ec2_key_pair
  public_key = tls_private_key.rsa.public_key_openssh
}
resource "tls_private_key" "rsa" {
  algorithm   = "RSA"
  ecdsa_curve = "4096"
}

resource "local_file" "ec2_key_pair" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "ec2_key_pair"
}
################################################################################
# Private Key
################################################################################
