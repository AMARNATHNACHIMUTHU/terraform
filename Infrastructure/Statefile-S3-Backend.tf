provider "aws" {
  version = "~> 2.60"
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "viv-terraform-remote-state"
    key    = "StatefileS3/terraform.tfstate"
    region = "eu-west-1"
  }
}
