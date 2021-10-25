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

module "ec2" {
    source = "./module"
}