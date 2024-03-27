resource "aws_vpc" "workman" {
  cidr_block       = "10.16.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "workman"
  }
}
