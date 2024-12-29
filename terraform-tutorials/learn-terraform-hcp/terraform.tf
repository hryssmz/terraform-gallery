# terraform.tf
terraform {
  # cloud {
  #   # Uncomment this block if use locally
  #   organization = "hryssmz-trial"

  #   workspaces {
  #     name = "learn-terraform"
  #   }
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }

  required_version = "~> 1.2"
}
