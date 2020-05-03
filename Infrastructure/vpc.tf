
resource "aws_vpc" "Dev-VPC" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name    = "Dev-VPC"
  }
}
