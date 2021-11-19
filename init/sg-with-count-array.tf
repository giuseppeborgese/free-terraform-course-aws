locals {
  my_array_of_names = ["giuseppe", "pippo", "pluto"]
}

resource "aws_security_group" "sg_with_count_array" {
  count = length(local.my_array_of_names)
  name        = "my_sg_with_count-${local.my_array_of_names[count.index]}"
  description = "terraform first resource created ever"
  tags = {
    Name = "my name with count ${local.my_array_of_names[count.index]}"
  }
}
