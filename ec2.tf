resource "aws_instance" "web-1" {
  ami                         = var.imagename
  instance_type               = "t2.micro"
  key_name                    = "LaptopKey"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "${var.vpc_name}-Server-1"
    Env        = "Production"
    Owner      = "Sreeharsha"
    CostCenter = "ABCD"
  }
  lifecycle {
    create_before_destroy = true
    prevent_destroy       = false
    ignore_changes = [
      tags,
    ]
  }
}