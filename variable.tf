variable "aws_ami" {
  Description = "ami version for ec2 instance"
  default     = "ami-0c2b8ca1dad447f8a"

}
variable "aws_ins_type" {
  Description = "Aws instance type"
  default     = "t2.micro"

}
variable "tags" {
  Description = "Standard tags for learning"
  Env         = "Learning"
  Account     = "free"
  Type        = "temp"
}