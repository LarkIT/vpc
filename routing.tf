
/*
******************
* Public Routes
******************
*/
resource "aws_route_table" "public-rt" {
  vpc_id = "${aws_vpc.environment.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.default_gw.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "a" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-a.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "b" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-b.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "c" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-c.id}"
  }

  tags {
    Name = "public-rt"
  }
}

resource "aws_route" "public_internet_gateway" {
  route_table_id         = "${aws_route_table.public-rt.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.default_gw.id}"
}

/*
******************
* Internal Routes
******************
*/
resource "aws_route_table" "internal-rt" {
  vpc_id = "${aws_vpc.environment.id}"

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "a" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-a.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "b" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-b.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "c" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-c.id}"
  }

  tags {
    Name = "internal-rt"
  }
}

/*
******************
* NAT Routes
******************
*/
resource "aws_route_table" "nat-rt" {
  vpc_id = "${aws_vpc.environment.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.natGW.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "a" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-a.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "b" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-b.id}"
  }

  route {
    cidr_block           = "${var.vpn_user_subnet_cidr[ "c" ]}"
    network_interface_id = "${aws_network_interface.vpn-interface-c.id}"
  }

  tags {
    Name = "nat-rt"
  }
}
