// Define AWS provider
provider "aws" {
  region                  = "eu-west-3"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "perso"

  default_tags {
    tags = {
      Owner     = "ARIG"
      ManagedBy = "git@github.com:ARIG-Robotique/terraform-aws-env.git"
    }
  }
}
