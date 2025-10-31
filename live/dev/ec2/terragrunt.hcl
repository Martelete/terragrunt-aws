terraform {
  source = "../../../modules/ec2"
}

inputs = {
  environment    = "dev"
  region         = "eu-west-1"
  instance_type  = "t2.micro"
  ami_id         = "ami-0025245f3ca0bcc82" # Example Amazon Linux 2 AMI
}
