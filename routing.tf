resource "aws_route_table" "terraform-public" {
  vpc_id = "vpc-0230e3a6acb0cc925"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.testvpc001.id
  }
  tags = {
    Name = "MyTestVPC-MAIN-RT"
  }
}

resource "aws_route_table" "default" {
  vpc_id = "vpc-0230e3a6acb0cc925"
}


resource "aws_route_table_association" "terraform-public-1" {
  subnet_id      = aws_subnet.subnet1-public.id
  route_table_id = aws_route_table.terraform-public.id
}

resource "aws_route_table_association" "terraform-public-2" {
  subnet_id      = aws_subnet.subnet2-public.id
  route_table_id = aws_route_table.terraform-public.id
}
