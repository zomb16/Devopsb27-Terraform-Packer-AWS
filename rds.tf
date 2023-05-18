resource "aws_db_subnet_group" "default" {
  name       = "devopsb27subnetgroup"
  subnet_ids = [aws_subnet.subnet1-public.id, aws_subnet.subnet2-public.id, aws_subnet.subnet3-public.id]

  tags = {
    Name = "DevOpsB27SubnetGroup"
  }
}

resource "aws_db_instance" "myrds1" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0.28"
  instance_class       = "db.t2.medium"
  db_name              = "devopsb27instance"
  db_subnet_group_name = aws_db_subnet_group.default.name
  # Manually Created secrets from AWS Secrets Manager
  username = local.db_creds.username
  password = local.db_creds.password
  #final_snapshot_identifier = true
  skip_final_snapshot = true
  depends_on          = [aws_db_subnet_group.default]
}


