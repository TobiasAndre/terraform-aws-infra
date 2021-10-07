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
  region = "us-east-1"
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