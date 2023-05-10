resource "aws_flow_log" "devopsbatch27flowlogs" {
  log_destination      = aws_s3_bucket.vpcflowlogsbucket.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.testvpc001.id
}

