terraform {
    backend "remote" {
        organization = "Shan-DevOps-Terraform" 
        workspaces {
            name = "terraform-aws"
            }
    }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"

  tags = {
    Name = "App-Server"
  }
}
