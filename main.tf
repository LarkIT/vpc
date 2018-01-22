
resource "aws_vpc" "environment" {
    cidr_block = "${var.cidr}"
    enable_dns_hostnames = "${var.enable_dns_hostnames}"
    tags {
        Name = "${var.host_prefix}-${var.environment}-vpc"
    }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_internet_gateway" "default_gw" {
  vpc_id = "${aws_vpc.environment.id}"

  tags {
    Name = "${var.host_prefix}-default-gateway"
  }
}

resource "aws_nat_gateway" "natGW" {
  depends_on    = ["aws_internet_gateway.default_gw"]
  allocation_id = "${aws_eip.nat_eip.id}"
  subnet_id     = "${aws_subnet.a-dmz.id}"
#  tags {
#    name = "${var.host_prefix}-nat-gateway"
#  }
}


output "Egress elastic ip" {
  value = "${aws_eip.nat_eip.public_ip}"
}
