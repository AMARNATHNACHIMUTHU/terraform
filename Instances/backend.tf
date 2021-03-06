terraform {
  backend "s3" {}
}

data "terraform_remote_state" "network_configuration" {
  backend = "s3"

  config {
    region    ="${var.region}"
    key       ="${var.remote_state_key}"
    bucket    ="${var.remote_state_bucket}"
  }
}