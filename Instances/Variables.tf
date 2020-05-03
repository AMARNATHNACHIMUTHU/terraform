

variable "region" {
  default         = "eu-west-1"
  description     = "This is the default region for all my infrastructure."
}

variable "remote_state_bucket" {
  description = "Bucket name for infrastruture layer"
}

variable "remote_state_key" {
  description = "Key name for infrastruture layer"
}