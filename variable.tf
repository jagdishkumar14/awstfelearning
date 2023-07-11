variable "aws_ami" {
  default = "ami-0c2b8ca1dad447f8a"

}
variable "aws_ins_type" {
  default = "t2.micro"

}
variable "tags" {
  description = "Default tags to be used"
  type        = map(string)
  default = {
    "Name"        = "learning env"
    "Environment" = "Learning"
    "Type"        = "temp"
  }
}