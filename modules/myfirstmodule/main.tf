resource "aws_instance" "first" {
  ami           = data.aws_ami.last_ubuntu.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.first.id]
  tags = {
    Name = "${var.prefix} my ec2 inside the module"
  }
}

resource "aws_security_group" "first" {
  name        = "${var.prefix}-sg-inside-the-module"
  description = "a security group inside the module"
  tags = {
    Name = "SG inside the module "
  }
}

data "aws_ami" "last_ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  name_regex  = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
}
