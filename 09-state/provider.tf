terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.70.0"
    }
  }

  backend "s3" {
    bucket       = "remote-tf-state-92s"
    key          = "remote-state-demo.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true
  }
}



provider "aws" {
  region  = "eu-north-1"
  profile = "stockholm"
}
