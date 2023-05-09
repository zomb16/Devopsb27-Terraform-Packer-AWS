data "aws_vpc" "AWS26" {
  id = "vpc-0f8d4253c7226aa6a"
}

data "aws_route_table" "AWS26-RT" {
  route_table_id = "rtb-0c4cd357e27573f77"
  vpc_id         = data.aws_vpc.AWS26.id
}

resource "aws_subnet" "AWS26-SUBNET4" {
  vpc_id            = data.aws_vpc.AWS26.id
  cidr_block        = "10.5.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "AWS26-SUBNET4"
  }
}

resource "aws_route_table_association" "AWS26-SUBNET4" {
  subnet_id      = aws_subnet.AWS26-SUBNET4.id
  route_table_id = data.aws_route_table.AWS26-RT.id
}
