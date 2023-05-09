data "aws_vpc" "AWS26" {
  id = "vpc-0f8d4253c7226aa6a"
}

resource "aws_subnet" "AWS26-SUBNET4" {
  vpc_id            = data.aws_vpc.AWS26.id
  cidr_block        = "10.5.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "AWS26-SUBNET5"
  }
}