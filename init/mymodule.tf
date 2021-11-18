module "my_first_module" {
  source = "../modules/myfirstmodule/"
  prefix = "peppemod"

}

resource "aws_security_group" "ssh" {
  name        = "ssh_from_module"
  description = "Allow ssh"

  ingress {
    description      = "ssh from module"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["${module.my_first_module.my_private_ip}/32"]
  }
}
