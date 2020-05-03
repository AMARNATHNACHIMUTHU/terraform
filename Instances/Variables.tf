variable "region" {
  default         = "eu-west-1"
  description     = "This is the default region for all my infrastructure."
}

variable "remote_state_bucket" {
  default = "viv-terraform-remote-state"
  description = "Bucket name for infrastruture layer"
}

variable "remote_state_key" {
  default = "Instances/terraform.tfstate"
  description = "Key name for infrastruture layer"
}