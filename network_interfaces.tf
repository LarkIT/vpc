resource "aws_network_interface" "vpn-interface-a" {
  subnet_id   = "${aws_subnet.a-dmz.id}"
  private_ips = ["${var.vpn_eni_ip["interface-a"]}"]

  tags {
    Name = "vpn-interface-a"
  }
}

resource "aws_network_interface" "vpn-interface-b" {
  subnet_id   = "${aws_subnet.b-dmz.id}"
  private_ips = ["${var.vpn_eni_ip["interface-b"]}"]

  tags {
    Name = "vpn-interface-b"
  }
}

resource "aws_network_interface" "vpn-interface-c" {
  subnet_id   = "${aws_subnet.c-dmz.id}"
  private_ips = ["${var.vpn_eni_ip["interface-c"]}"]

  tags {
    Name = "vpn-interface-c"
  }
}
