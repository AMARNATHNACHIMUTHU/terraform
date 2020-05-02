provider "aws" {
  region = "${var.region}"
}


terraform {
  backend "s3" {
    bucket = ""
    key = ""
    dynamodb_table = ""
  }
}


resource "aws_vpc" "Dev-VPC" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name    = "Dev-VPC"
  }
}