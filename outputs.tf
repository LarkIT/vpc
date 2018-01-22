output "vpc_id" {
  value = "${aws_vpc.environment.id}"
}

output "cidr" {
  value = "${var.cidr}"
}

output "host_prefix" {
  value = "${var.host_prefix}"
}

output "region" {
  value = "${var.region}"
}

#output "subnet_id" {
#  value = "${aws_subnet.subnet.id}"
#}

output "availability_zone" {
  value = "${var.availability_zone}"
}

output "eip" {
  value = "${aws_eip.nat_eip.public_ip}"
}

output "a_public_id" {
  value = "${aws_subnet.a-public.id}"
}

output "b_public_id" { 
  value = "${aws_subnet.b-public.id}"
}

output "c_public_id" { 
  value = "${aws_subnet.c-public.id}"
}

output "a-app" { 
  value = "${aws_subnet.a-app.id}"
}

output "b-app" { 
  value = "${aws_subnet.b-app.id}"
}

output "c-app" { 
  value = "${aws_subnet.c-app.id}"
}

output "a-dmz" { 
  value = "${aws_subnet.a-dmz.id}"
}

output "b-dmz" { 
  value = "${aws_subnet.b-dmz.id}"
}

output "c-dmz" { 
  value = "${aws_subnet.c-dmz.id}"
}

output "a-db" { 
  value = "${aws_subnet.a-db.id}"
}

output "b-db" { 
  value = "${aws_subnet.b-db.id}"
}

output "c-db" { 
  value = "${aws_subnet.c-db.id}"
}

output "a-shared" { 
  value = "${aws_subnet.a-shared.id}"
}

output "b-shared" { 
  value = "${aws_subnet.b-shared.id}"
}

output "c-shared" { 
  value = "${aws_subnet.c-shared.id}"
}

output "subnet_a-vpn_user" {
  value = "${var.vpn_user_subnet_cidr[ "a" ]}"
}

output "subnet_b-vpn_user" {
  value = "${var.vpn_user_subnet_cidr[ "b" ]}"
}

output "subnet_c-vpn_user" {
  value = "${var.vpn_user_subnet_cidr[ "c" ]}"
}

output "dmz_subnet_cidr" {
  value = "${var.dmz_subnet_cidr}"
}
