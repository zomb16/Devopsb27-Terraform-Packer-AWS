resource "aws_vpc" "testvpc001" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_name
    Owner       = "Ramesh Raju"
    environment = var.env
  }
  depends_on = [
    aws_s3_bucket.vpcflowlogsbucket
  ]
}

resource "aws_internet_gateway" "testvpc001" {
  vpc_id = aws_vpc.testvpc001.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}

