locals {
  info = "Info about ${var.prefix} on image ${data.aws_ami.last_ubuntu.image_id} for port ${var.external_port}"
}

resource "aws_security_group" "localtest" {
  name        = "${var.prefix}-mytest"
  description = local.info
  tags = {
    Name = "my name"
  }
}
