resource "aws_security_group" "ec2_private_security_group" {
  name = "EC2-Private-SG"
  description = "Only allow public security groups to access these instances"
  vpc_id = "vpc-0b4ce8e0c23a72e40"

  ingress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    security_groups = ["${aws_security_group.ec2_public_security_group.id}"]
  }

  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
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