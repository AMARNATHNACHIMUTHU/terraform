data "aws_ami" "launch_configuration_ami" {
  owners = []
  most_recent = true

  filter {
    name = "owner-alias"
    values = ["amazon"]
  }
}