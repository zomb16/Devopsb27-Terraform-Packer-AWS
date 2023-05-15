resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.testvpc001.id
  cidr_block        = "10.10.10.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "MyTestVPC-Pub-Subnet-1"
  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.testvpc001.id
  cidr_block        = "10.10.20.0/24"
  availability_zone = "us-east-1f"
  tags = {
    Name = "MyTestVPC-Pub-Subnet-2"
  }
}