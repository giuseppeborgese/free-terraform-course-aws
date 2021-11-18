module "clean-old-ami" {
  source  = "giuseppeborgese/clean-old-ami/aws"
  version = "1.0.1"
  prefix = "test-tf"
}
