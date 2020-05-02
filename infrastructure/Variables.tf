

terraform {
  backend "s3" {
    bucket = "viv-terraform-remote-state"
    key    = "infrastruture/terraform.tfstate"
    region = "eu-west-1"
  }
}


variable "region" {
  default         = "eu-west-1"
  description     = "This is the default region for all my infrastructure."
}

variable "vpc_cidr" {
  default         = "10.0.0.0/16"
  description     = "My dev VPC"
}

variable "public-subnet-1-cidr" {
  default         = "10.0.0.0/16"
  description     = "My dev VPC Subnet Public 1 CIDR"
}
variable "public-subnet-2-cidr" {
  default         = "10.0.0.0/16"
  description     = "My dev VPC Subnet Public 2 CIDR"
}

variable "public-subnet-3-cidr" {
  default         = "10.0.0.0/16"
  description     = "My dev VPC Subnet Public 3 CIDR"
}

variable "private-subnet-1-cidr" {
  default         = "10.0.0.0/16"
  description     = "My dev VPC Subnet Private 1 CIDR"
}
variable "private-subnet-2-cidr" {
  default         = "10.0.0.0/16"
  description     = "My dev VPC Subnet Private 2 CIDR"
}

variable "private-subnet-3-cidr" {
  default         = "10.0.0.0/16"
  description     = "My dev VPC Subnet Private 3 CIDR"
}