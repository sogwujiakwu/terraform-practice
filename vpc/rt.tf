resource "aws_route_table" "workman-sn-db-A-rt" {
  vpc_id = aws_vpc.workman-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.workman-sn-web-A-nat-gw.id
  }

  tags = {
    Name = "workman-sn-db-A-rt"
  }
}

resource "aws_route_table" "workman-sn-app-A-rt" {
  vpc_id = aws_vpc.workman-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.workman-sn-web-A-nat-gw.id
  }

  tags = {
    Name = "workman-sn-app-A-rt"
  }
}

resource "aws_route_table" "workman-sn-web-default-rt" {
  vpc_id = aws_vpc.workman-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.workman-igw.id
  }

  tags = {
    Name = "workman-sn-web-default-rt"
  }
}

resource "aws_route_table" "workman-sn-db-B-rt" {
  vpc_id = aws_vpc.workman-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.workman-sn-web-B-nat-gw.id
  }

  tags = {
    Name = "workman-sn-db-B-rt"
  }
}

resource "aws_route_table" "workman-sn-app-B-rt" {
  vpc_id = aws_vpc.workman-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.workman-sn-web-B-nat-gw.id
  }

  tags = {
    Name = "workman-sn-app-B-rt"
  }
}

resource "aws_route_table" "workman-sn-db-C-rt" {
  vpc_id = aws_vpc.workman-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.workman-sn-web-C-nat-gw.id
  }

  tags = {
    Name = "workman-sn-db-C-rt"
  }
}

resource "aws_route_table" "workman-sn-app-C-rt" {
  vpc_id = aws_vpc.workman-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.workman-sn-web-C-nat-gw.id
  }

  tags = {
    Name = "workman-sn-app-C-rt"
  }
}

resource "aws_route_table_association" "workman-sn-db-A-rta" {
  subnet_id      = aws_subnet.workman-sn-db-A.id
  route_table_id = aws_route_table.workman-sn-db-A-rt.id

}

resource "aws_route_table_association" "workman-sn-app-A-rta" {
  subnet_id      = aws_subnet.workman-sn-app-A.id
  route_table_id = aws_route_table.workman-sn-app-A-rt.id

}

resource "aws_route_table_association" "workman-sn-db-B-rta" {
  subnet_id      = aws_subnet.workman-sn-db-B.id
  route_table_id = aws_route_table.workman-sn-db-B-rt.id

}

resource "aws_route_table_association" "workman-sn-app-B-rta" {
  subnet_id      = aws_subnet.workman-sn-app-B.id
  route_table_id = aws_route_table.workman-sn-app-B-rt.id

}

resource "aws_route_table_association" "workman-sn-db-C-rta" {
  subnet_id      = aws_subnet.workman-sn-db-C.id
  route_table_id = aws_route_table.workman-sn-db-C-rt.id

}

resource "aws_route_table_association" "workman-sn-app-C-rta" {
  subnet_id      = aws_subnet.workman-sn-app-C.id
  route_table_id = aws_route_table.workman-sn-app-C-rt.id

}

resource "aws_route_table_association" "workman-sn-web-A-rta" {
  subnet_id      = aws_subnet.workman-sn-web-A.id
  route_table_id = aws_route_table.workman-sn-web-default-rt.id

}

resource "aws_route_table_association" "workman-sn-web-B-rta" {
  subnet_id      = aws_subnet.workman-sn-web-B.id
  route_table_id = aws_route_table.workman-sn-web-default-rt.id

}

resource "aws_route_table_association" "workman-sn-web-C-rta" {
  subnet_id      = aws_subnet.workman-sn-web-C.id
  route_table_id = aws_route_table.workman-sn-web-default-rt.id

}
