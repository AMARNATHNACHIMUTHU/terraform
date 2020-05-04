resource "aws_security_group" "elb_security_group" {
  name = "ELB-SG"
  description = "ELB Security Group"
  vpc_id = "vpc-0b4ce8e0c23a72e40"


  ingress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    description = "Health checking for instances in this security group"
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}