// Get provider region informations
data "aws_region" "current" {}

// Get provider AZs
data "aws_availability_zones" "available" {}
