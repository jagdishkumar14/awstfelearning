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

################################################################################
# Key Pair
################################################################################

variable "key_name" {
  description = "The name for the key pair. Conflicts with `key_name_prefix`"
  type        = string
  default     = null
}

variable "key_name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with `key_name`"
  type        = string
  default     = null
}

variable "public_key" {
  description = "The public key material"
  type        = string
  default     = ""
}