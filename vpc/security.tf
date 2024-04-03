resource "aws_security_group" "workman-public-sg" {
  name        = "workman-public-sg"
  description = "Security group for public (web subnets)"
  vpc_id      = aws_vpc.workman-vpc.id

  tags = {
    Name = "workman-public-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "workman-public-allow-ssh-ipv4" {
  security_group_id = aws_security_group.workman-public-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "workman-public-allow-all-traffic-ipv4" {
  security_group_id = aws_security_group.workman-public-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_security_group" "workman-private-sg" {
  name        = "workman-private-sg"
  description = "Security group for private (app and db subnets)"
  vpc_id      = aws_vpc.workman-vpc.id

  tags = {
    Name = "workman-private-sg"
  }
}

resource "aws_vpc_security_group_egress_rule" "workman-private-allow-all-outbound-ipv4" {
  security_group_id = aws_security_group.workman-private-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

