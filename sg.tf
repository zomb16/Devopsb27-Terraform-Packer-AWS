resource "aws_security_group" "allow_all" {
  name        = "devopsb27cfinfra-PublicInstanceSG-1LMQ07LVUZIVD"
  description = "Enable SSH access via port 22"
  vpc_id      = aws_vpc.testvpc001.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}