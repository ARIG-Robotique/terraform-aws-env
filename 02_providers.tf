// Define Null provider
provider "null" {}

// Define AWS provider
provider "aws" {
  version                 = "~> 1.5"
  region                  = "eu-west-3"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "arig"
}
