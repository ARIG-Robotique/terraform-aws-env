// Terraform configuration
terraform {
  required_version = ">= 1.0.3, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket  = "arig-terraform"
    key     = "stacks/aws-env"
    region  = "eu-west-3"
    profile = "perso"
  }
}
