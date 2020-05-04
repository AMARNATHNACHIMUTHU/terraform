output "vpc_id" {
  value = "${data.terraform_remote_state.network_configuration.environment}"
}

