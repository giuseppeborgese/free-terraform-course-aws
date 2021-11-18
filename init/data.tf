data "aws_ami" "last_ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  name_regex  = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
}

output "latest_ubuntu" {
  value = data.aws_ami.last_ubuntu.image_id
}
