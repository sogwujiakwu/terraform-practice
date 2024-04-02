resource "aws_vpc" "workman-vpc" {
  cidr_block           = "10.16.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "workman-vpc"
  }
}
resource "aws_internet_gateway" "workman-igw" {
  #  vpc_id = aws_vpc.workman.id #alternative to using aws_internet_gateway_attachment

  tags = {
    Name = "workman-igw"
  }
}
resource "aws_internet_gateway_attachment" "workman-igw-attach" {
  internet_gateway_id = aws_internet_gateway.workman-igw.id
  vpc_id              = aws_vpc.workman-vpc.id
}

resource "aws_eip" "workman-nat-sn-web-A-eip" {
  domain     = "vpc"
  depends_on = [aws_internet_gateway.workman-igw]
}

resource "aws_nat_gateway" "workman-sn-web-A-nat-gw" {
  allocation_id     = aws_eip.workman-nat-sn-web-A-eip.id
  subnet_id         = aws_subnet.workman-sn-web-A.id
  connectivity_type = "public"

  tags = {
    Name = "workman-sn-web-A-nat-igw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.workman-igw]
}

resource "aws_eip" "workman-nat-sn-web-B-eip" {
  domain     = "vpc"
  depends_on = [aws_internet_gateway.workman-igw]
}

resource "aws_nat_gateway" "workman-sn-web-B-nat-gw" {
  allocation_id     = aws_eip.workman-nat-sn-web-B-eip.id
  subnet_id         = aws_subnet.workman-sn-web-B.id
  connectivity_type = "public"

  tags = {
    Name = "workman-sn-web-B-nat-igw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.workman-igw]
}

resource "aws_eip" "workman-nat-sn-web-C-eip" {
  domain     = "vpc"
  depends_on = [aws_internet_gateway.workman-igw]
}

resource "aws_nat_gateway" "workman-sn-web-C-nat-gw" {
  allocation_id     = aws_eip.workman-nat-sn-web-C-eip.id
  subnet_id         = aws_subnet.workman-sn-web-C.id
  connectivity_type = "public"

  tags = {
    Name = "workman-sn-web-C-nat-igw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.workman-igw]
}
