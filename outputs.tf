output "vpc_id" {
  value     = aws_vpc.testvpc001.id
  sensitive = false
}

output "vpc_arn" {
  value     = aws_vpc.testvpc001.arn
  sensitive = false
}

output "subnet_1" {
  value     = aws_subnet.subnet1-public.id
  sensitive = false
}

output "subnet_2" {
  value     = aws_subnet.subnet2-public.id
  sensitive = false
}

output "subnet_3" {
  value     = aws_subnet.subnet3-public.id
  sensitive = false
}

