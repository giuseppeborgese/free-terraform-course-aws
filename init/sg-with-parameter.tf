data "aws_ssm_parameter" "for_count" {
  name = "activate-security"
}

resource "aws_security_group" "sg_with_parameter" {
  count = data.aws_ssm_parameter.for_count.value == "true" ? 1 : 0
  name        = "my_sg_with_parameter"
  description = "terraform resource created ever"
  tags = {
    Name = "my name with count"
  }
}
