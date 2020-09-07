terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "remote" {
    organization = "aarti"
    workspaces {
      name = "Example-workspace"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-0ba60995c1589da9d"
  instance_type = "t2.micro"

}
