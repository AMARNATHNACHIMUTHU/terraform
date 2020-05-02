resource "aws_internet_gateway" "Interent-Gateway" {
  vpc_id                  = "${aws_vpc.Dev-VPC.id}"

  tags {
    Name                  = "Dev-Interent-Gateway"
  }
}
resource "aws_route" "public-interent-gw-route" {
  route_table_id          = "${aws_route_table.public-route-table.id}"
  gateway_id              = "${aws_internet_gateway.Interent-Gateway.id}"
  destination_cidr_block  = "0.0.0.0/0"
}