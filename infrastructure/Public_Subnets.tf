resource "aws_subnet" "public-subnet-1" {
  cidr_block = "${var.public-subnet-1-cidr}"
  vpc_id = "${aws_vpc.Dev-VPC.id}"
  availability_zone = "eu-west-1a"
  tags {
    Name    = "Dev-public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  cidr_block = "${var.public-subnet-2-cidr}"
  vpc_id = "${aws_vpc.Dev-VPC.id}"
  availability_zone = "eu-west-1b"
  tags {
    Name    = "Dev-public-subnet-2"
  }
}

resource "aws_subnet" "public-subnet-3" {
  cidr_block = "${var.public-subnet-3-cidr}"
  vpc_id = "${aws_vpc.Dev-VPC.id}"
  availability_zone = "eu-west-1c"
  tags {
    Name    = "Dev-public-subnet-3"
  }
}

resource "aws_route_table" "public-route-table" {
  vpc_id = "${aws_vpc.Dev-VPC.id}"
  tags {
    Name    = "Dev-Public-Route-Table"
  }
}

resource "aws_route_table_association" "public-subnet-1-association" {
  route_table_id = "${aws_route_table.public-route-table.id}"
  subnet_id = "${aws_subnet.public-subnet-1.id}"
}

resource "aws_route_table_association" "public-subnet-2-association" {
  route_table_id = "${aws_route_table.public-route-table.id}"
  subnet_id = "${aws_subnet.public-subnet-2.id}"
}

resource "aws_route_table_association" "public-subnet-3-association" {
  route_table_id = "${aws_route_table.public-route-table.id}"
  subnet_id = "${aws_subnet.public-subnet-3.id}"
}