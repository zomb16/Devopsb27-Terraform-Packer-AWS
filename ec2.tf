
resource "aws_instance" "web-1" {
  ami                         = "ami-0778521d914d23bc1"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "devops"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    App  = "Production"
    Env  = "Prod"
    Name = "WebServer-1"
    Team = "JavaAppTeam"
  }
}

resource "aws_instance" "web-2" {
  ami                         = "ami-0778521d914d23bc1"
  availability_zone           = "us-east-1f"
  instance_type               = "t2.micro"
  key_name                    = "devops"
  subnet_id                   = aws_subnet.subnet2-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
     App  = "Production"
     Env  = "Prod"
     Name = "WebServer-2"
     Team = "JavaAppTeam"
  }
}