resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.testvpc001.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.vpc_name}-Public-Subnet-1"
  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.testvpc001.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "${var.vpc_name}-Public-Subnet-2"
  }
}

resource "aws_subnet" "subnet3-public" {
  vpc_id            = aws_vpc.testvpc001.id
  cidr_block        = var.public_subnet3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "${var.vpc_name}-Public-Subnet-3"
  }
}