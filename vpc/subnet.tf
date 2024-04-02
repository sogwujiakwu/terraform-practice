resource "aws_subnet" "workman-sn-db-A" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.16.0/20"
  map_public_ip_on_launch = false
  tags = {
    Name = "workman-sn-db-A"
  }
}

resource "aws_subnet" "workman-sn-app-A" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.32.0/20"
  map_public_ip_on_launch = false
  tags = {
    Name = "workman-sn-app-A"
  }
}

resource "aws_subnet" "workman-sn-web-A" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.48.0/20"
  map_public_ip_on_launch = true
  tags = {
    Name = "workman-sn-web-A"
  }
}

resource "aws_subnet" "workman-sn-db-B" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.80.0/20"
  map_public_ip_on_launch = false
  tags = {
    Name = "workman-sn-db-B"
  }
}

resource "aws_subnet" "workman-sn-app-B" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.96.0/20"
  map_public_ip_on_launch = false
  tags = {
    Name = "workman-sn-app-B"
  }
}

resource "aws_subnet" "workman-sn-web-B" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.112.0/20"
  map_public_ip_on_launch = true
  tags = {
    Name = "workman-sn-web-B"
  }
}

resource "aws_subnet" "workman-sn-db-C" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.144.0/20"
  map_public_ip_on_launch = false
  tags = {
    Name = "workman-sn-db-C"
  }
}

resource "aws_subnet" "workman-sn-app-C" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.160.0/20"
  map_public_ip_on_launch = false
  tags = {
    Name = "workman-sn-app-C"
  }
}

resource "aws_subnet" "workman-sn-web-C" {
  vpc_id                  = aws_vpc.workman-vpc.id
  cidr_block              = "10.16.176.0/20"
  map_public_ip_on_launch = true
  tags = {
    Name = "workman-sn-web-C"
  }
}
