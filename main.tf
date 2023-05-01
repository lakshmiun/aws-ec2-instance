terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16"
    }
  }
  required_version = ">=1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami                    = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  subnet_id              = "subnet-0917bb28"
	tags={
		Name= var.instance_name
	}	
}

