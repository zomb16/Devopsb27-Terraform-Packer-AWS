resource "aws_flow_log" "devopsb27flowlogs" {
  log_destination      = aws_s3_bucket.vpcflowlogsbucket.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.testvpc001.id
  tags = {
    Name = "${var.vpc_name}-Flow-Logs"
  }
}
