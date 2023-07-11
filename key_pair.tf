################################################################################
# Key Pair Module
################################################################################

module "key_pair" {
  source = "../../"

  key_name           = ec2_key_pair_new
  create_private_key = true
  tags = var.tags
}

module "key_pair_external" {
  source = "../../"

  key_name   = "ec2_key_pair"
  public_key = trimspace(tls_private_key.this.public_key_openssh)

  tags = var.tags
}

################################################################################
# Supporting Resources
################################################################################

resource "tls_private_key" "this" {
  algorithm = "RSA"
}