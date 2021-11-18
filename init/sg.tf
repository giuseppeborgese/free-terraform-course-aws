resource "aws_security_group" "first" {
  name        = "my_nice_name"
  description = "terraform first resource created ever"
  tags = {
   Name = "my name in the tag"
 }
}
