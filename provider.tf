provider "aws" {
   region  = var.region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }


  backend "remote" {
   organization = "CN-TEST"

    workspaces {
      name = "utn-gh-actions-demo"
    }
  }
}
