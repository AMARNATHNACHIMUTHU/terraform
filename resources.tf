resource "aws_vpc" "environment-example-two"{
cidr_block = "10.0.0.0/16"
enable_dns_hostnames = true
enable_dns_support = true
tags{
  Name = "terraform-aws-vpc-example-two"
}
}
resource "aws_subnet" "subnet1"{
cidr_block =""
vpc_id ="${aws_vpc.environment-example-two.id}"
}