variable "region" {
  default         = "eu-west-1"
  description     = "This is the default region for all my infrastructure."
}

variable "vpc_cidr" {
  default         = "10.0.0.3/16"
  description     = "My dev VPC"
}