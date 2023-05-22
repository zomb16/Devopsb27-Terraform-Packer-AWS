#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "<= 1.3.7" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 4.65.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
}

resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name        = "${var.vpc_name}"
    Owner       = "ramesh raju"
    environment = "${var.environment}"
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.IGW_name}"
  }
}

resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.public_subnet1_name}"
  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "${var.public_subnet2_name}"
  }
}

resource "aws_subnet" "subnet3-public" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "${var.public_subnet3_name}"
  }

}


resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = "${var.Main_Routing_Table}"
  }
}

resource "aws_route_table_association" "terraform-public" {
  subnet_id      = aws_subnet.subnet1-public.id
  route_table_id = aws_route_table.terraform-public.id
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.default.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "my_ami" {
  most_recent = true
  name_regex  = "^DevOpsClass-B27"
  owners      = ["754594149475"]
}


resource "aws_instance" "web-1" {
  #ami = var.imagename
  ami = "ami-0d20eb1bc54b11d59"
  #ami                         = data.aws_ami.my_ami.id
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "devops"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "ramesh"
    CostCenter = "ABCD"
  }
}

resource "aws_instance" "web-2" {
  count = 2
  #ami = var.imagename
  #ami = "ami-0d20eb1bc54b11d59"
  ami                         = data.aws_ami.my_ami.id
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "devops"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-0${count.index + 1}"
    Env        = "Prod"
    Owner      = "ramesh"
    CostCenter = "ABCD"
  }
}

