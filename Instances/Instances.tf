/*terraform {
  backend "s3" {
    bucket = "viv-terraform-remote-state"
    key    = "instances/terraform.tfstate"
    region = "${var.region}"
  }
}*/

data "terraform_remote_state" "network_configuration" {
  backend = "s3"

  config {
    region    ="${var.region}"
    key       ="${var.remote_state_key}"
    bucket    ="${var.remote_state_bucket}"
  }
}