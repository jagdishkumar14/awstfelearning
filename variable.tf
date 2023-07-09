variable "aws_ami" {
   default     = "ami-0c2b8ca1dad447f8a"

}
variable "aws_ins_type" {
  default     = "t2.micro"

}
variable "tags" {
  Project = "Standard tags for learning"
  Env         = "Learning"
  Account     = "free"
  Type        = "temp"
}