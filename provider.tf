# This is a provider file were we will be defining which cloud it should use and and what is the region that this need to pick
# and credentials if require

# This is were we define the terraform like which version it should use and providers it should access
terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=1.0.0"
    }
  }
}
# This is were we define the provider that we will be using and the reqion were it should deploy
provider "aws" {
  region = "us-east-2"
}

# Commands that we used here is 
# terraform fmt -> to allign the format
# terraform init -> to initialize the terraform
# terraform validate -> to validate any missing values or extra flower braces