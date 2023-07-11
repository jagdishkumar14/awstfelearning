resource "aws_vpc" "learning_vpc" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = "true"
  tags                 = var.tags
}

resource "aws_subnet" "learning_subnet" {
  vpc_id            = aws_vpc.learning_vpc.id
  cidr_block        = "192.168.0.0/24"
  availability_zone = "us-east-1a"

  tags = var.tags
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = "10.0.1.0/24"

}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = "192.168.0.0/24"
}
resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.learning_subnet.id
  private_ips = ["192.168.0.50"]
  tags        = var.tags
}
