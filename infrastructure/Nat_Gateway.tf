resource "aws_nat_gateway" "nat-gateway" {
  allocation_id               = "${aws_eip.elastic-ip-for-nat-gateway.id}"
  subnet_id                 = "${aws_subnet.public-subnet-1.id}"

  tags {
    Name    = "Dev-Nat-Gateway"
  }
  depends_on = ["aws_eip.elastic-ip-for-nat-gateway"]
}
resource "aws_route" "nat-gw-route" {
  route_table_id            = "${aws_route_table.private-route-table.id}"
  nat_gateway_id            = "${aws_nat_gateway.nat-gateway.id}"
  destination_cidr_block    = "0.0.0.0/0"
}