variable "created" {
  default = 1
}

resource "aws_security_group" "sg_with_count" {
  count = var.created
  name        = "my_sg_with_count"
  description = "terraform first resource created ever"
  tags = {
    Name = "my name with count"
  }
}
