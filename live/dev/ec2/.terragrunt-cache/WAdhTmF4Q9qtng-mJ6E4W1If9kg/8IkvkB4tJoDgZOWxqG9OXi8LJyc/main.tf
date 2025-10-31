terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name        = "${var.environment}-ec2"
    Environment = var.environment
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
