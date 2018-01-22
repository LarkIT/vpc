/*
******************
* Public Subnets *
******************
*/
resource "aws_subnet" "a-public" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.public_subnet_cidr[ "a" ]}"
  availability_zone = "${var.region}a"

  tags {
    Name = "Public-A-0"
  }
}


resource "aws_subnet" "b-public" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.public_subnet_cidr[ "b" ]}"
  availability_zone = "${var.region}b"

  tags {
    Name = "Public-B-100"
  }
}

resource "aws_subnet" "c-public" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.public_subnet_cidr[ "c" ]}"
  availability_zone = "${var.region}c"

  tags {
    Name = "Public-C-200"
  }
}

/*
******************
*  APP Subnets   *
******************
*/
resource "aws_subnet" "a-app" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.app_subnet_cidr[ "a" ]}"
  availability_zone = "${var.region}a"

  tags {
    Name = "App-A-20"
  }
}

resource "aws_subnet" "b-app" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.app_subnet_cidr[ "b" ]}"
  availability_zone = "${var.region}b"

  tags {
    Name = "App-B-120"
  }
}

resource "aws_subnet" "c-app" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.app_subnet_cidr[ "c" ]}"
  availability_zone = "${var.region}c"

  tags {
    Name = "App-C-220"
  }
}

/*
******************
*  DMZ Subnets   *
******************
*/
resource "aws_subnet" "a-dmz" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.dmz_subnet_cidr[ "a" ]}"
  availability_zone = "${var.region}a"

  tags {
    Name = "Dmz-A-40"
    Tier = "DMZ"
  }
}

resource "aws_subnet" "b-dmz" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.dmz_subnet_cidr[ "b" ]}"
  availability_zone = "${var.region}b"

  tags {
    Name = "Dmz-B-140"
    Tier = "DMZ"
  }
}

resource "aws_subnet" "c-dmz" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.dmz_subnet_cidr[ "c" ]}"
  availability_zone = "${var.region}c"

  tags {
    Name = "Dmz-C-240"
    Tier = "DMZ"
  }
}

/*
******************
*  DB Subnets    *
******************
*/
resource "aws_subnet" "a-db" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.db_subnet_cidr[ "a" ]}"
  availability_zone = "${var.region}a"

  tags {
    Name = "Db-A-30"
  }
}

resource "aws_subnet" "b-db" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.db_subnet_cidr[ "b" ]}"
  availability_zone = "${var.region}b"

  tags {
    Name = "Db-B-130"
  }
}

resource "aws_subnet" "c-db" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.db_subnet_cidr[ "c" ]}"
  availability_zone = "${var.region}c"

  tags {
    Name = "Db-C-230"
  }
}

/*
******************
* Shared Services Subnets
******************
*/
resource "aws_subnet" "a-shared" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.shared_subnet_cidr[ "a" ]}"
  availability_zone = "${var.region}a"

  tags {
    Name = "Shared-A-50"
  }
}

resource "aws_subnet" "b-shared" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.shared_subnet_cidr[ "b" ]}"
  availability_zone = "${var.region}b"

  tags {
    Name = "Shared-B-150"
  }
}

resource "aws_subnet" "c-shared" {
  vpc_id            = "${aws_vpc.environment.id}"
  cidr_block        = "${var.shared_subnet_cidr[ "c" ]}"
  availability_zone = "${var.region}c"

  tags {
    Name = "Shared-C-250"
  }
}

