// Terraform configuration
terraform {
  required_version = "> 0.11.0"

  backend "s3" {
    bucket  = "arig-terraform"
    key     = "stacks/aws-env"
    region  = "eu-west-3"
    profile = "arig"
  }
}
