terraform {
  source = "../../../modules/ec2"
}

inputs = {
  environment    = "prod"
  region         = "eu-west-1"
  instance_type  = "t3.small"
  ami_id         = "ami-0025245f3ca0bcc82"
}