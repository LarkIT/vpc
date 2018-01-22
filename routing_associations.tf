/*
******************
* App Associations 
******************
*/
#resource "aws_route_table_association" "appSubA" {
#  subnet_id      = "${aws_subnet.a-app.id}"
#  route_table_id = "${aws_route_table.internal-rt.id}"
#}

#resource "aws_route_table_association" "appSubB" {
#  subnet_id      = "${aws_subnet.b-app.id}"
#  route_table_id = "${aws_route_table.internal-rt.id}"
#}

#resource "aws_route_table_association" "appSubC" {
#  subnet_id      = "${aws_subnet.c-app.id}"
#  route_table_id = "${aws_route_table.internal-rt.id}"
#}

resource "aws_route_table_association" "appSubA" {
  subnet_id      = "${aws_subnet.a-app.id}"
  route_table_id = "${aws_route_table.nat-rt.id}"
}

resource "aws_route_table_association" "appSubB" {
  subnet_id      = "${aws_subnet.b-app.id}"
  route_table_id = "${aws_route_table.nat-rt.id}"
}

resource "aws_route_table_association" "appSubC" {
  subnet_id      = "${aws_subnet.c-app.id}"
  route_table_id = "${aws_route_table.nat-rt.id}"
}

/*
******************
* DB Associations
******************
*/
resource "aws_route_table_association" "dbSubA" {
  subnet_id      = "${aws_subnet.a-db.id}"
  route_table_id = "${aws_route_table.internal-rt.id}"
}

resource "aws_route_table_association" "dbSubB" {
  subnet_id      = "${aws_subnet.b-db.id}"
  route_table_id = "${aws_route_table.internal-rt.id}"
}

resource "aws_route_table_association" "dbSubC" {
  subnet_id      = "${aws_subnet.c-db.id}"
  route_table_id = "${aws_route_table.internal-rt.id}"
}

/*
******************
* MGT Associations
******************
*/
#resource "aws_route_table_association" "mgmtSubA" {
#  subnet_id      = "${aws_subnet.a-mgmt.id}"
#  route_table_id = "${aws_route_table.nat-rt.id}"
#}

#resource "aws_route_table_association" "mgmtSubB" {
#  subnet_id      = "${aws_subnet.b-mgmt.id}"
#  route_table_id = "${aws_route_table.nat-rt.id}"
#}

#resource "aws_route_table_association" "mgmtSubC" {
#  subnet_id      = "${aws_subnet.c-mgmt.id}"
#  route_table_id = "${aws_route_table.nat-rt.id}"
#}

/*
******************
* Shared Associations
******************
*/
resource "aws_route_table_association" "sharedSubA" {
  subnet_id      = "${aws_subnet.a-shared.id}"
  route_table_id = "${aws_route_table.nat-rt.id}"
}

resource "aws_route_table_association" "sharedSubB" {
  subnet_id      = "${aws_subnet.b-shared.id}"
  route_table_id = "${aws_route_table.nat-rt.id}"
}

resource "aws_route_table_association" "sharedSubC" {
  subnet_id      = "${aws_subnet.c-shared.id}"
  route_table_id = "${aws_route_table.nat-rt.id}"
}

/*
******************
* DMZ Associations
******************
*/
resource "aws_route_table_association" "dmzSubA" {
  subnet_id      = "${aws_subnet.a-dmz.id}"
  route_table_id = "${aws_route_table.public-rt.id}"
}

resource "aws_route_table_association" "dmzSubB" {
  subnet_id      = "${aws_subnet.b-dmz.id}"
  route_table_id = "${aws_route_table.public-rt.id}"
}

resource "aws_route_table_association" "dmzSubC" {
  subnet_id      = "${aws_subnet.c-dmz.id}"
  route_table_id = "${aws_route_table.public-rt.id}"
}
