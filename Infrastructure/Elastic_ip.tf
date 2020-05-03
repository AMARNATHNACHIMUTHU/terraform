resource "aws_eip" "elastic-ip-for-nat-gateway" {
  vpc                       = true
  associate_with_private_ip = "10.0.0.5"

  tags {
    Name    = "elastic-ip-for-nat-gateway"
  }
}