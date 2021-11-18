variable "prefix" {
  type = string
  description = "this will be the prefix in the resource naming"
}

variable "instance_type" {
  default = "t3.micro"
  description = "the type for the ec2 instance"
  type = string
}
