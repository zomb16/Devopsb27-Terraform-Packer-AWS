resource "aws_vpc" "testvpc001" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "MyTestVPC"
  }
}

resource "aws_internet_gateway" "testvpc001" {
  vpc_id = aws_vpc.testvpc001.id
  tags = {
    Name = "MyTestVPC-IGW"
  }
}
