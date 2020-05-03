provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-1"
}
resource "aws_s3_bucket" "viv-terraform-remote-state" {
  bucket = "viv-terraform-remote-state"
  acl    = "private"

  tags = {
    Name        = "terraform-remote-state-bucket"
    Environment = "Dev"
  }
}