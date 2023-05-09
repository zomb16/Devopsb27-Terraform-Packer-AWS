output vpc_id {
    value = aws_vpc.testvpc001.id
    sensitive = true
}

output vpc_arn {
    value = aws_vpc.testvpc001.arn
    sensitive = true
}