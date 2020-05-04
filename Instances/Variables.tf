variable "region" {
  default         = "eu-west-1"
  description     = "This is the default region for all my infrastructure."
}

variable "remote_state_bucket" {
  description = "Bucket name for instance layer remote state"
}

variable "remote_state_key" {
  description = "Key name for instance layer remote state"
}

variable "ec2_instance_type" {
  description = "EC2 Instance type to launch"
}

variable "key_pair_name" {
  description = " My Keypair"
}

variable "max_instance_size" {
  description = " The maximum number of EC2 instances"
}

variable "min_instance_size" {
  description = "The minimum number of EC2 instances."
}
variable "ec2_instance_profile" {
  description = ""
}