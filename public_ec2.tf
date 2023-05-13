resource "aws_instance" "public_servers" {
  #count          = length(var.public_subnet_cidr_blocks)  >>> this will deploy one ec2 server in each subnet
  #count                       = 1
  count                       = var.env == "Dev" ? 3 : 1
  ami                         = var.imagename
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = element(aws_subnet.public-subnets.*.id, count.index)
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "${local.vpc_name_lower}-public_server-1"
    Env        = var.env
    Owner      = "LaasrithaBhavanya"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
		#!/bin/bash
    sudo apt-get update
		sudo apt-get install -y nginx jq unzip
		echo "<h1>${local.vpc_name_lower}-public_server-1</h1>" | sudo tee /var/www/html/index.html
	EOF
}
