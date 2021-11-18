resource "aws_security_group" "first" {
  name        = "my_nicename"
  description = "terraform first resource created ever"
  tags = {
    Name = "my name"
  }
}
