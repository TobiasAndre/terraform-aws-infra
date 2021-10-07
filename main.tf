terraform {
  required_version = "1.0.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.61.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_s3_bucket" "terraform-bucket" {
  bucket = "terraform-bucket-07102021"
  acl    = "private"

  tags = {
    Name        = "Terraform bucket"
    Environment = "Prod"
    ManagedBy   = "Terraform"
    Owner       = "Tobias Andre Eggers"
    UpdatedAt   = "2021-10-07"
  }
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}